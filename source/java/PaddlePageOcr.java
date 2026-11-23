package eu.kanade.tachiyomi.ui.reader.translation;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.paddle.ocr.EngineConfig;
import com.paddle.ocr.PaddleOCRConfig;
import com.paddle.ocr.engine.OCREngine;
import com.paddle.ocr.model.OCRResult;
import com.paddle.ocr.util.OpenCVUtils;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.CancellationException;

public final class PaddlePageOcr {
    private static final String TAG = "KomikkuPaddleOCR";
    private static final int MAX_SIDE = 2000;

    private OCREngine engine;
    private String model;
    private String unavailableModel;

    public synchronized List<ArabicPageRenderer$TextBox> recognize(
            Bitmap page, List<ArabicPageRenderer$TextBox> baseline, String language, boolean manualRetry) {
        String selected = modelFor(language);
        if (!manualRetry && selected.equals(unavailableModel)) return baseline;

        Context context = null;
        Bitmap scaled = page;
        long started = System.nanoTime();
        try {
            context = MlKitContext.getInstance().getApplicationContext();
            if (engine == null || !selected.equals(model)) {
                close();
                if (!OpenCVUtils.INSTANCE.init(context)) {
                    throw new IllegalStateException("OpenCV initialization failed");
                }
                PaddleOCRConfig config = new PaddleOCRConfig("BGR", 736, "min", MAX_SIDE, .3f,
                        .5f, 1.5f, 1000, true, "fast", "quad", .55f, 2);
                engine = new OCREngine(context, config, new EngineConfig(2), "paddle-ocr/det.onnx",
                        "paddle-ocr/" + selected + ".onnx", "paddle-ocr/" + selected + ".yml");
                model = selected;
            }
            unavailableModel = null;
            int longest = Math.max(page.getWidth(), page.getHeight());
            if (longest > MAX_SIDE) {
                float factor = MAX_SIDE / (float) longest;
                scaled = Bitmap.createScaledBitmap(page, Math.max(1, Math.round(page.getWidth() * factor)),
                        Math.max(1, Math.round(page.getHeight() * factor)), true);
            }
            List<ArabicPageRenderer$TextBox> lines = readLines(engine.run(scaled).getResults(),
                    page.getWidth() / (float) scaled.getWidth(), page.getHeight() / (float) scaled.getHeight());
            if (lines.isEmpty()) {
                if (manualRetry) notify(context, "PaddleOCR ما التقط نص. استُخدمت قراءة ML Kit.");
                return baseline;
            }
            List<ArabicPageRenderer$TextBox> boxes = combine(baseline, lines, language);
            if (!"en".equals(language)) {
                recoverAsianBubbles(page, boxes, baseline, lines, language, manualRetry ? 2 : 1);
            }
            long milliseconds = (System.nanoTime() - started) / 1_000_000L;
            if (manualRetry) notify(context, "PaddleOCR • " + lines.size() + " سطر • " + milliseconds + " مللي ثانية");
            Log.i(TAG, "Recognized " + lines.size() + " " + language + " lines in " + milliseconds + " ms");
            return boxes;
        } catch (CancellationException interrupted) {
            throw interrupted;
        } catch (Exception | LinkageError | OutOfMemoryError unavailable) {
            close();
            unavailableModel = selected;
            Log.w(TAG, "PaddleOCR unavailable, using baseline", unavailable);
            if (manualRetry && context != null) notify(context, "تعذّر تشغيل PaddleOCR. استُخدمت قراءة ML Kit.");
            return baseline;
        } finally {
            if (scaled != page) scaled.recycle();
        }
    }

    static String modelFor(String language) {
        switch (language) {
            case "ko": return "rec-ko";
            case "ja": return "rec-ja";
            case "zh": return "rec-zh";
            default: return "rec";
        }
    }

    public synchronized void close() {
        OCREngine active = engine;
        engine = null;
        model = null;
        if (active != null) {
            try {
                active.release();
            } catch (RuntimeException | LinkageError cleanupFailure) {
                Log.w(TAG, "PaddleOCR cleanup failed", cleanupFailure);
            }
        }
    }

    private static List<ArabicPageRenderer$TextBox> readLines(List<OCRResult> result, float xScale, float yScale) {
        List<ArabicPageRenderer$TextBox> lines = new ArrayList<>();
        for (OCRResult line : result) {
            if (line.getConfidence() < .60f || letterCount(line.getText()) < 2) continue;
            RectF bounds = new RectF(Float.MAX_VALUE, Float.MAX_VALUE, -Float.MAX_VALUE, -Float.MAX_VALUE);
            for (PointF point : line.getBox().getPoints()) {
                bounds.left = Math.min(bounds.left, point.x * xScale);
                bounds.top = Math.min(bounds.top, point.y * yScale);
                bounds.right = Math.max(bounds.right, point.x * xScale);
                bounds.bottom = Math.max(bounds.bottom, point.y * yScale);
            }
            if (!bounds.isEmpty()) lines.add(new ArabicPageRenderer$TextBox(bounds, line.getText().trim()));
        }
        return lines;
    }

    static List<ArabicPageRenderer$TextBox> combine(List<ArabicPageRenderer$TextBox> baseline,
            List<ArabicPageRenderer$TextBox> lines, String language) {
        boolean english = "en".equals(language);
        List<List<ArabicPageRenderer$TextBox>> attached = new ArrayList<>(baseline.size());
        for (int i = 0; i < baseline.size(); i++) attached.add(new ArrayList<>());
        List<ArabicPageRenderer$TextBox> unmatched = new ArrayList<>();
        for (ArabicPageRenderer$TextBox line : lines) {
            int owner = -1;
            float overlap = english ? .30f : .55f;
            boolean overlapsExisting = false;
            for (int i = 0; i < baseline.size(); i++) {
                float coverage = covered(line.getBounds(), baseline.get(i).getBounds());
                if (coverage > .10f) overlapsExisting = true;
                if (coverage > overlap) {
                    owner = i;
                    overlap = coverage;
                }
            }
            if (owner >= 0) attached.get(owner).add(line);
            else if (english || (!overlapsExisting && DialogueText.hasSourceScript(line.getText(), language))) {
                unmatched.add(line);
            }
        }
        List<ArabicPageRenderer$TextBox> result = new ArrayList<>(baseline.size() + unmatched.size());
        for (int i = 0; i < baseline.size(); i++) {
            ArabicPageRenderer$TextBox original = baseline.get(i);
            List<ArabicPageRenderer$TextBox> parts = attached.get(i);
            String alternative;
            if (english) {
                parts.sort(Comparator.comparingDouble(box -> box.getBounds().centerY()));
                StringBuilder text = new StringBuilder();
                for (ArabicPageRenderer$TextBox line : parts) {
                    if (text.length() > 0) text.append('\n');
                    text.append(line.getText());
                }
                alternative = EnglishLineWrap.joinWords(text.toString());
            } else {
                alternative = gather(parts, language);
            }
            int originalLetters = letterCount(original.getText());
            int alternativeLetters = letterCount(alternative);
            if (alternativeLetters * 4 >= originalLetters * 3 && alternativeLetters <= originalLetters * 2 + 4
                    && alternativeLetters >= 2
                    && (english || safeCjkReplacement(original.getText(), alternative, language))) {
                result.add(new ArabicPageRenderer$TextBox(original.getBounds(), alternative));
            } else {
                result.add(original);
            }
        }
        result.addAll(unmatched);
        result.sort(Comparator.comparingDouble(box -> box.getBounds().centerY()));
        return result;
    }

    static boolean safeCjkReplacement(String original, String candidate, String language) {
        if (!DialogueText.hasSourceScript(candidate, language)) return false;
        if (!DialogueText.hasSourceScript(original, language)) return true;
        String oldLetters = original.replaceAll("[^\\p{L}]", "");
        String newLetters = candidate.replaceAll("[^\\p{L}]", "");
        // A similar length is insufficient evidence. Keep the existing bubble unless
        // Paddle repeats its wording and supplies additional text.
        return newLetters.length() > oldLetters.length() && newLetters.contains(oldLetters);
    }

    private void recoverAsianBubbles(Bitmap page, List<ArabicPageRenderer$TextBox> boxes,
            List<ArabicPageRenderer$TextBox> baseline, List<ArabicPageRenderer$TextBox> lines,
            String language, int budget) {
        for (int index = 0; index < boxes.size() && budget > 0; index++) {
            ArabicPageRenderer$TextBox original = boxes.get(index);
            if (!baseline.contains(original)) continue;
            RectF target = original.getBounds();
            List<ArabicPageRenderer$TextBox> touching = new ArrayList<>();
            for (ArabicPageRenderer$TextBox line : lines) {
                if (covered(line.getBounds(), target) > .55f) touching.add(line);
            }
            if (touching.isEmpty()) continue;
            String fullPage = gather(touching, language);
            if (!candidateDisagrees(original.getText(), fullPage, language)) continue;
            String crop = readBubble(page, target, language);
            budget--;
            if (confirmCrop(fullPage, crop, language)) {
                boxes.set(index, new ArabicPageRenderer$TextBox(target, crop));
            }
        }
    }

    static boolean candidateDisagrees(String original, String candidate, String language) {
        int letters = letterCount(original);
        int newLetters = letterCount(candidate);
        return letters >= 3 && newLetters >= Math.max(3, letters - 2)
                && newLetters <= letters + 3 && DialogueText.hasSourceScript(candidate, language)
                && !lettersOnly(original).equals(lettersOnly(candidate));
    }

    static boolean confirmCrop(String fullPage, String crop, String language) {
        return DialogueText.hasSourceScript(crop, language)
                && lettersOnly(fullPage).equals(lettersOnly(crop));
    }

    private static String lettersOnly(String text) {
        return text.replaceAll("[^\\p{L}\\p{N}]", "");
    }

    private static String gather(List<ArabicPageRenderer$TextBox> lines, String language) {
        boolean vertical = ("ja".equals(language) || "zh".equals(language))
                && lines.stream().filter(box -> box.getBounds().height() > 1.5f * box.getBounds().width())
                        .count() * 2 > lines.size();
        if (vertical) lines.sort(Comparator.comparingDouble(box -> -box.getBounds().centerX()));
        else lines.sort(Comparator.comparingDouble(box -> box.getBounds().centerY()));
        StringBuilder text = new StringBuilder();
        for (ArabicPageRenderer$TextBox line : lines) {
            if (text.length() > 0) text.append('\n');
            text.append(line.getText());
        }
        return DialogueText.cjkForTranslation(text.toString(), language);
    }

    private String readBubble(Bitmap page, RectF bounds, String language) {
        int pad = 6;
        Rect region = new Rect(Math.max(0, (int) bounds.left - pad),
                Math.max(0, (int) bounds.top - pad),
                Math.min(page.getWidth(), (int) Math.ceil(bounds.right) + pad),
                Math.min(page.getHeight(), (int) Math.ceil(bounds.bottom) + pad));
        if (region.width() < 10 || region.height() < 10 || region.width() > 960 || region.height() > 960) return "";
        Bitmap crop = Bitmap.createBitmap(region.width(), region.height(), Bitmap.Config.ARGB_8888);
        try {
            new Canvas(crop).drawBitmap(page, region, new Rect(0, 0, crop.getWidth(), crop.getHeight()), new Paint());
            return gather(readLines(engine.run(crop).getResults(), 1f, 1f), language);
        } catch (CancellationException cancelled) {
            throw cancelled;
        } catch (RuntimeException unavailable) {
            Log.w(TAG, "Bubble reread unavailable", unavailable);
            return "";
        } finally {
            crop.recycle();
        }
    }

    private static float covered(RectF line, RectF region) {
        float width = Math.max(0, Math.min(line.right, region.right) - Math.max(line.left, region.left));
        float height = Math.max(0, Math.min(line.bottom, region.bottom) - Math.max(line.top, region.top));
        return width * height / (line.width() * line.height());
    }

    private static int letterCount(String text) {
        return (int) text.codePoints().filter(Character::isLetter).count();
    }

    private static void notify(Context context, String message) {
        new Handler(Looper.getMainLooper()).post(() -> Toast.makeText(context, message, Toast.LENGTH_SHORT).show());
    }
}

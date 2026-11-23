package eu.kanade.tachiyomi.ui.reader.translation;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.text.Text;
import com.google.mlkit.vision.text.TextRecognizer;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;

public final class PageOcrRecovery {
    private static final Pattern WORD = Pattern.compile("\\p{L}+");
    private static final Pattern STRETCHED_WHAT = Pattern.compile(
            "(?i)^wh[a]+(?:[\\s-]+a+){1,5}[\\s-]+t([!?]+)$");

    private PageOcrRecovery() {}

    public static File refreshFile(File file) {
        return new File(new File(file.getParentFile(), "."), file.getName());
    }

    public static List<ArabicPageRenderer$TextBox> recover(Bitmap page,
            List<ArabicPageRenderer$TextBox> primary, TextRecognizer recognizer, boolean retry) {
        if (page.getWidth() < 40 || page.getHeight() < 80) return primary;
        List<ArabicPageRenderer$TextBox> boxes = new ArrayList<>(primary);
        long deadline = System.nanoTime() + TimeUnit.MILLISECONDS.toNanos(retry ? 6500 : 3500);
        int strips = retry ? 5 : 3;
        int height = page.getHeight();
        int overlap = Math.max(24, height / (strips * 5));
        for (int i = 0; i < strips; i++) {
            if (deadline - System.nanoTime() <= 0 || Thread.currentThread().isInterrupted()) break;
            int top = Math.max(0, i * height / strips - overlap);
            int bottom = Math.min(height, (i + 1) * height / strips + overlap);
            readStrip(page, top, bottom, recognizer, boxes, retry, deadline);
        }
        boxes.sort(Comparator.<ArabicPageRenderer$TextBox>comparingInt(
                box -> Math.round(box.getBounds().centerY() / Math.max(10f, page.getWidth() / 40f)))
                .thenComparingDouble(box -> -box.getBounds().centerX()));
        return boxes;
    }

    private static void readStrip(Bitmap page, int top, int bottom, TextRecognizer recognizer,
            List<ArabicPageRenderer$TextBox> boxes, boolean retry, long deadline) {
        int width = page.getWidth();
        int height = bottom - top;
        float factor = (float) Math.min(retry ? 2.1 : 1.65, Math.sqrt(2_000_000d / (width * (double) height)));
        int scaledWidth = Math.max(1, Math.round(width * factor));
        int scaledHeight = Math.max(1, Math.round(height * factor));
        Bitmap strip = Bitmap.createBitmap(scaledWidth, scaledHeight, Bitmap.Config.ARGB_8888);
        Task<Text> task = null;
        try {
            android.graphics.Canvas canvas = new android.graphics.Canvas(strip);
            canvas.drawBitmap(page, new Rect(0, top, width, bottom),
                    new Rect(0, 0, scaledWidth, scaledHeight), new android.graphics.Paint(2));
            task = recognizer.process(InputImage.fromBitmap(strip, 0));
            long remaining = Math.max(1, TimeUnit.NANOSECONDS.toMillis(deadline - System.nanoTime()));
            Text result = Tasks.await(task, remaining, TimeUnit.MILLISECONDS);
            float xScale = width / (float) scaledWidth;
            float yScale = height / (float) scaledHeight;
            for (Text.TextBlock block : result.getTextBlocks()) {
                Rect rect = block.getBoundingBox();
                if (rect == null || rect.width() < 4 || rect.height() < 5) continue;
                if ((top != 0 && rect.top < 3)
                        || (bottom != page.getHeight() && rect.bottom > scaledHeight - 3)) continue;
                String text = cleanText(block.getText());
                if (!WORD.matcher(text).find()) continue;
                RectF bounds = new RectF(rect.left * xScale, top + rect.top * yScale,
                        rect.right * xScale, top + rect.bottom * yScale);
                if (bounds.intersect(0, 0, page.getWidth(), page.getHeight())) {
                    merge(boxes, new ArabicPageRenderer$TextBox(bounds, text));
                }
            }
        } catch (InterruptedException interrupted) {
            Thread.currentThread().interrupt();
        } catch (ExecutionException | TimeoutException ignored) {
            // Keep the main OCR result if a supplemental strip fails.
        } finally {
            if (task == null || task.isComplete()) strip.recycle();
            else task.addOnCompleteListener(Runnable::run, ignored -> strip.recycle());
        }
    }

    static String cleanText(String text) {
        String compact = text.trim().replaceAll("\\s+", " ");
        java.util.regex.Matcher shout = STRETCHED_WHAT.matcher(compact);
        return shout.matches() ? "What" + shout.group(1) : compact;
    }

    static void merge(List<ArabicPageRenderer$TextBox> boxes, ArabicPageRenderer$TextBox candidate) {
        RectF bounds = candidate.getBounds();
        String wanted = normalized(candidate.getText());
        List<ArabicPageRenderer$TextBox> covered = new ArrayList<>();
        for (ArabicPageRenderer$TextBox previous : boxes) {
            RectF existing = previous.getBounds();
            RectF shared = new RectF(bounds);
            if (!shared.intersect(existing)
                    || area(shared) < .62f * Math.min(area(existing), area(bounds))) continue;
            String previousText = normalized(previous.getText());
            boolean includesMore = previousText.length() >= 3
                    && wanted.length() >= previousText.length() + 6
                    && wanted.contains(previousText)
                    && area(shared) >= .67f * area(existing);
            boolean equivalentShout = wanted.equals("what")
                    && STRETCHED_WHAT.matcher(previous.getText()).matches()
                    && area(shared) >= .67f * area(existing);
            if (!includesMore && !equivalentShout) return;
            covered.add(previous);
        }
        boxes.removeAll(covered);
        boxes.add(candidate);
    }

    private static float area(RectF bounds) {
        return bounds.width() * bounds.height();
    }

    private static String normalized(String text) {
        return text.toLowerCase(Locale.ROOT).replaceAll("[^\\p{L}\\p{N}]", "");
    }
}

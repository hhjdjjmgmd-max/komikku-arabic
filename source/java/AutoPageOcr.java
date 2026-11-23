package eu.kanade.tachiyomi.ui.reader.translation;

import android.graphics.Bitmap;
import com.google.android.gms.tasks.Tasks;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.text.Text;
import com.google.mlkit.vision.text.TextRecognition;
import com.google.mlkit.vision.text.TextRecognizer;
import java.util.EnumMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

final class AutoPageOcr implements AutoCloseable {
    private static final PageLanguage[] LANGUAGES = {
        PageLanguage.English, PageLanguage.Japanese, PageLanguage.Korean, PageLanguage.Chinese
    };
    private final EnumMap<PageLanguage, TextRecognizer> recognizers = new EnumMap<>(PageLanguage.class);

    private PageLanguage previous;

    PageLanguage detect(Bitmap bitmap) {
        float scale = 1400f / Math.max(bitmap.getWidth(), bitmap.getHeight());
        Bitmap preview = scale >= 1
                ? bitmap.copy(Bitmap.Config.ARGB_8888, false)
                : Bitmap.createScaledBitmap(bitmap, Math.max(1, Math.round(bitmap.getWidth() * scale)),
                        Math.max(1, Math.round(bitmap.getHeight() * scale)), true);
        if (preview == null) return PageLanguage.English;
        InputImage image = InputImage.fromBitmap(preview, 0);
        PageLanguage best = PageLanguage.English;
        int bestScore = 0;
        if (previous != null) {
            best = previous;
            bestScore = sample(previous, image);
            // Chapters normally keep the same script. Scan all scripts again when the sample is inconclusive.
            if (bestScore >= 64 && (previous == PageLanguage.English || previous == PageLanguage.Korean)) {
                return previous;
            }
        }
        for (PageLanguage language : LANGUAGES) {
            if (language == previous) continue;
            int score = sample(language, image);
            if (score > bestScore) {
                best = language;
                bestScore = score;
            }
        }
        if (bestScore > 0) previous = best;
        return best;
    }

    private int sample(PageLanguage language, InputImage image) {
        try {
            Text text = Tasks.await(recognizer(language).process(image), 2, TimeUnit.SECONDS);
            return score(language, text.getText());
        } catch (ExecutionException | TimeoutException unavailable) {
            return 0;
        } catch (InterruptedException interrupted) {
            Thread.currentThread().interrupt();
            throw new java.util.concurrent.CancellationException("OCR interrupted");
        }
    }

    TextRecognizer recognizer(PageLanguage language) {
        TextRecognizer client = recognizers.get(language);
        if (client == null) {
            client = TextRecognition.getClient(language.getRecognizer());
            recognizers.put(language, client);
        }
        return client;
    }

    static int score(PageLanguage language, String text) {
        int latin = 0, han = 0, kana = 0, hangul = 0;
        for (int offset = 0; offset < text.length();) {
            int codePoint = text.codePointAt(offset);
            offset += Character.charCount(codePoint);
            switch (Character.UnicodeScript.of(codePoint)) {
                case LATIN: if (Character.isLetter(codePoint)) latin++; break;
                case HAN: han++; break;
                case HIRAGANA:
                case KATAKANA: kana++; break;
                case HANGUL: hangul++; break;
                default: break;
            }
        }
        if (language == PageLanguage.Japanese) return kana == 0 ? han : han * 2 + kana * 4;
        if (language == PageLanguage.Korean) return hangul * 4;
        if (language == PageLanguage.Chinese) return han * 2;
        return latin * 2;
    }

    @Override public void close() {
        for (TextRecognizer client : recognizers.values()) client.close();
    }
}

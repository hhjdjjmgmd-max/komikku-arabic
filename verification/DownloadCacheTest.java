package eu.kanade.tachiyomi.ui.reader.translation;

import com.hippo.unifile.UniFile;
import java.io.*;
import java.lang.reflect.Method;
import java.nio.file.Files;
import java.util.Arrays;
import java.util.List;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;

public final class DownloadCacheTest {
    private static void check(boolean condition) { if (!condition) throw new AssertionError(); }
    static UniFile page(String name, int source) {
        return new UniFile() {
            public String getName() { return name; }
            public boolean isFile() { return true; }
            public UniFile[] listFiles() { return null; }
            public InputStream openInputStream() { return new ByteArrayInputStream(new byte[]{(byte)source}); }
        };
    }
    public static void main(String[] args) throws Exception {
        File root = Files.createTempDirectory("offline-translation-test").toFile();
        File cache = new File(root,"cache");
        File destination = SavedChapterPages.language(
                SavedChapterPages.chapter(cache, 100L, 200L, "/chapter/200", 2), "English");
        List<UniFile> sources = Arrays.asList(page("001.jpg", 11), page("002.jpg", 22));
        Method prepare = DownloadArabicTranslation.class.getDeclaredMethod("translatePages",
                File.class, List.class, ArabicPageRenderer.class, CoroutineContext.class);
        prepare.setAccessible(true);
        ArabicPageRenderer translator = new ArabicPageRenderer(PageLanguage.English);
        check(prepare.invoke(null, destination, sources, translator, EmptyCoroutineContext.INSTANCE).equals(0));
        check(translator.attempts == 2);
        File p0 = SavedChapterPages.rendered(destination, 0, SavedChapterPages.entries(destination));
        File p1 = SavedChapterPages.rendered(destination, 1, SavedChapterPages.entries(destination));
        check(Files.readAllBytes(p0.toPath())[0] == 11 && Files.readAllBytes(p1.toPath())[0] == 22);
        check(Files.exists(new File(destination, ".saved").toPath()));
        check(prepare.invoke(null, destination, sources, translator, EmptyCoroutineContext.INSTANCE).equals(0));
        check(translator.attempts == 2);
        System.out.println("Downloaded chapter prepared both pages, restored in reader order, and skipped completed work.");
    }
}

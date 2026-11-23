package eu.kanade.tachiyomi.ui.reader.translation;
import java.io.File;
import java.io.IOException;
import java.util.Set;
public class SavedChapterPages {
    public static native File chapter(File cache, Long mangaId, Long chapterId, String url, int pages);
    public static native File language(File chapter, String language);
    public static native Set<String> entries(File destination);
    public static native File rendered(File destination, int index, Set<String> existing);
    public static native boolean unchanged(int index, Set<String> existing);
    public static native File stage(File output) throws IOException;
    public static native void publish(File stage, File output, boolean rendered) throws IOException;
    public static native void discard(File stage);
}

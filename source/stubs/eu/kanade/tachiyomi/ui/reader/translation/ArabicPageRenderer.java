package eu.kanade.tachiyomi.ui.reader.translation;
import java.io.Closeable;
import java.io.File;
import java.io.InputStream;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
public class ArabicPageRenderer implements Closeable {
    public ArabicPageRenderer(PageLanguage language) {}
    public native Object render(Function0<? extends InputStream> original, File output,
                                Continuation<? super Boolean> continuation);
    public native void close();
}

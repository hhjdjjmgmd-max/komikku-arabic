package tachiyomi.core.common.util.system;
import java.io.InputStream;
import kotlin.jvm.functions.Function0;
public class ImageUtil {
    public static ImageUtil INSTANCE;
    public native boolean isImage(String name, Function0<? extends InputStream> stream);
}

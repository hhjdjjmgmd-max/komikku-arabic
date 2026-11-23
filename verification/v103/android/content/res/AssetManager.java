package android.content.res;
import java.io.*;
import java.nio.file.*;
public final class AssetManager {
    public InputStream open(String path) throws IOException {
        Path local = Paths.get(".work-v103", "assets", path);
        return Files.newInputStream(Files.exists(local) ? local : getPrevious(path));
    }
    private Path getPrevious(String path) {
        Path local=Paths.get(".work-v101", "assets", path);
        return (Files.exists(local) ? local : Paths.get(".work-v100", "assets", path));
    }
}

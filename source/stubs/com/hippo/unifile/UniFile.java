package com.hippo.unifile;
import java.io.InputStream;
import java.io.IOException;
public abstract class UniFile {
    public abstract String getName();
    public abstract boolean isFile();
    public abstract UniFile[] listFiles();
    public abstract InputStream openInputStream() throws IOException;
}

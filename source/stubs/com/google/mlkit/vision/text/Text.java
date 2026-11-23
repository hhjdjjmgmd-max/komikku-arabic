package com.google.mlkit.vision.text;
import android.graphics.Rect;
import java.util.List;
public class Text {
    public native List<TextBlock> getTextBlocks();
    public static class TextBlock {
        public native String getText();
        public native Rect getBoundingBox();
    }
}

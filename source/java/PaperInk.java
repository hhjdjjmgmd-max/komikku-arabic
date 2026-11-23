package eu.kanade.tachiyomi.ui.reader.translation;

final class PaperInk {
    private PaperInk() {}

    static int[][] margins(int scale) {
        int snug = Math.max(1, (scale * 2 + 1) / 3);
        int tight = Math.max(1, scale / 3);
        int[][] margins = new int[19][4];
        for (int pass = 0; pass < 3; pass++) {
            java.util.Arrays.fill(margins[pass], scale * (pass + 1));
        }
        for (int mask = 0; mask < 16; mask++) {
            for (int edge = 0; edge < 4; edge++) {
                margins[3 + mask][edge] = (mask & (1 << edge)) == 0 ? snug : tight;
            }
        }
        return margins;
    }

    static int removalColor(int[] pixels, int width, int height, int edge) {
        int[] histogram = new int[256];
        int paper = 0;
        for (int color : pixels) {
            int shade = lightness(color);
            if (shade >= 224 && neutral(color)) {
                histogram[shade]++;
                paper++;
            }
        }
        if (paper * 100 < 66 * pixels.length) return -1;
        int count = 0;
        int shade = 255;
        for (; shade >= 224; shade--) {
            count += histogram[shade];
            if (count > paper / 2) break;
        }
        if (!clearEdge(pixels, width, height, edge, shade)) return -1;
        return shade;
    }

    private static boolean clearEdge(int[] pixels, int width, int height, int edge, int paper) {
        for (int offset = 0; offset < edge; offset++) {
            for (int x = 0; x < width; x++) {
                if (!matches(pixels[offset * width + x], paper)
                        || !matches(pixels[(height - 1 - offset) * width + x], paper)) return false;
            }
            for (int y = edge; y < height - edge; y++) {
                if (!matches(pixels[y * width + offset], paper)
                        || !matches(pixels[y * width + width - 1 - offset], paper)) return false;
            }
        }
        return true;
    }

    static void removeInk(int[] pixels, int paper) {
        int replacement = 0xff000000 | (paper * 0x010101);
        for (int i = 0; i < pixels.length; i++) {
            if (neutral(pixels[i]) && lightness(pixels[i]) < paper - 7) {
                pixels[i] = replacement;
            }
        }
    }

    // A compact caption can be cleaned if its edge and most of its area share a solid color.
    static int sampleColoredPaper(int[] pixels, int width, int height) {
        int[] samples = new int[2 * width + 2 * height - 4];
        int count = 0;
        for (int x = 0; x < width; x++) {
            samples[count++] = pixels[x];
            samples[count++] = pixels[(height - 1) * width + x];
        }
        for (int y = 1; y < height - 1; y++) {
            samples[count++] = pixels[y * width];
            samples[count++] = pixels[y * width + width - 1];
        }
        int color = medianColor(samples);
        int similarEdges = 0;
        for (int sample : samples) {
            if (isCloseColor(sample, color, 18)) similarEdges++;
        }
        if (similarEdges * 100 < samples.length * 94) return 0;

        int similarPixels = 0;
        for (int pixel : pixels) {
            if (isCloseColor(pixel, color, 22)) similarPixels++;
        }
        return similarPixels * 100 >= pixels.length * 68 ? color : 0;
    }

    static int medianColor(int[] samples) {
        return 0xff000000 | (median(samples, 16) << 16)
                | (median(samples, 8) << 8) | median(samples, 0);
    }

    private static int median(int[] samples, int shift) {
        int[] counts = new int[256];
        for (int sample : samples) counts[(sample >>> shift) & 255]++;
        int position = samples.length / 2;
        for (int i = 0; i < counts.length; i++) {
            position -= counts[i];
            if (position < 0) return i;
        }
        throw new IllegalArgumentException("No color samples");
    }

    static void removeColoredInk(int[] pixels, int paper, int width, int height) {
        for (int y = 1; y < height - 1; y++) {
            for (int x = 1; x < width - 1; x++) {
                int index = y * width + x;
                if (!isCloseColor(pixels[index], paper, 10)) pixels[index] = paper;
            }
        }
    }

    private static boolean isCloseColor(int pixel, int color, int tolerance) {
        return (pixel >>> 24) == 255
                && Math.abs(((pixel >>> 16) & 255) - ((color >>> 16) & 255)) <= tolerance
                && Math.abs(((pixel >>> 8) & 255) - ((color >>> 8) & 255)) <= tolerance
                && Math.abs((pixel & 255) - (color & 255)) <= tolerance;
    }

    private static boolean matches(int color, int paper) {
        return neutral(color) && Math.abs(lightness(color) - paper) <= 24;
    }

    private static boolean neutral(int color) {
        int red = (color >>> 16) & 255;
        int green = (color >>> 8) & 255;
        int blue = color & 255;
        return (color >>> 24) == 255
                && Math.max(red, Math.max(green, blue)) - Math.min(red, Math.min(green, blue)) < 24;
    }

    static int lightness(int color) {
        return (77 * ((color >>> 16) & 255) + 150 * ((color >>> 8) & 255) + 29 * (color & 255)) >>> 8;
    }
}

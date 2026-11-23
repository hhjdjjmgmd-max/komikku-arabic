package eu.kanade.tachiyomi.ui.reader.translation;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public final class BubbleLayout {
    private BubbleLayout() {}

    public static List<ArabicPageRenderer$TextBox> reconnect(Bitmap page, List<ArabicPageRenderer$TextBox> boxes) {
        List<ArabicPageRenderer$TextBox> pending = new ArrayList<>(boxes);
        pending.sort(Comparator.comparingDouble(b -> b.getBounds().top));
        List<ArabicPageRenderer$TextBox> result = new ArrayList<>(boxes.size());
        while (!pending.isEmpty()) {
            ArabicPageRenderer$TextBox current = pending.remove(0);
            while (true) {
                int continuation = continuationIndex(page, pending, current);
                if (continuation < 0) break;
                ArabicPageRenderer$TextBox next = pending.remove(continuation);
                RectF bounds = new RectF(current.getBounds());
                bounds.union(next.getBounds());
                String text = (current.getText() + " " + next.getText()).replaceAll("(?<=[A-Za-z])-\\s+(?=[A-Za-z])", "-");
                current = new ArabicPageRenderer$TextBox(bounds, text);
            }
            result.add(current);
        }
        return result;
    }

    private static int continuationIndex(Bitmap page, List<ArabicPageRenderer$TextBox> boxes,
                                         ArabicPageRenderer$TextBox current) {
        RectF first = current.getBounds();
        float distance = Math.max(4f, page.getWidth() * .025f);
        for (int i = 0; i < boxes.size(); i++) {
            RectF next = boxes.get(i).getBounds();
            if (next.top > first.bottom + distance) break;
            if (next.top < first.bottom - distance / 4f) continue;
            float common = Math.min(first.right, next.right) - Math.max(first.left, next.left);
            if (common < .66f * Math.min(first.width(), next.width())) continue;
            if (Math.abs(first.centerX() - next.centerX()) > .22f * Math.max(first.width(), next.width())) continue;
            RectF combined = new RectF(first);
            combined.union(next);
            if (findPaper(page, combined, boxes, i) != null) return i;
        }
        return -1;
    }

    public static void draw(Bitmap page, Canvas canvas, ArabicPageRenderer$TextBox box,
                            List<ArabicPageRenderer$TextBox> neighbors) {
        Paper clean = findPaper(page, box.getBounds(), neighbors, -1);
        if (clean == null) clean = findColoredPaper(page, box.getBounds(), neighbors);
        if (clean == null) {
            drawOverArtwork(page, canvas, box, neighbors);
            return;
        }
        Rect area = clean.area;
        int width = area.width() - 4;
        int height = area.height() - 4;
        float scale = page.getWidth() / 681f;
        TextPaint paint = new TextPaint(TextPaint.ANTI_ALIAS_FLAG);
        paint.setColor(PaperInk.lightness(clean.backgroundColor) < 145 ? Color.WHITE : Color.BLACK);
        paint.setTypeface(Typeface.create("sans-serif", Typeface.NORMAL));
        StaticLayout layout = fit(box.getText(), paint, width, height, Math.max(6f, 7f * scale),
                Math.max(8f, 21f * scale));
        if (layout == null) {
            drawOverArtwork(page, canvas, box, neighbors);
            return;
        }

        if (clean.shade < 0) {
            PaperInk.removeColoredInk(clean.pixels, clean.backgroundColor, area.width(), area.height());
        } else {
            PaperInk.removeInk(clean.pixels, clean.shade);
        }
        page.setPixels(clean.pixels, 0, area.width(), area.left, area.top, area.width(), area.height());
        int checkpoint = canvas.save();
        canvas.clipRect(area);
        canvas.translate(area.exactCenterX() - width / 2f, area.exactCenterY() - layout.getHeight() / 2f);
        layout.draw(canvas);
        canvas.restoreToCount(checkpoint);
    }

    private static void drawOverArtwork(Bitmap page, Canvas canvas, ArabicPageRenderer$TextBox box,
                                        List<ArabicPageRenderer$TextBox> neighbors) {
        Rect source = new Rect();
        box.getBounds().roundOut(source);
        if (!source.intersect(0, 0, page.getWidth(), page.getHeight())) return;
        float scale = page.getWidth() / 681f;
        int padding = Math.max(1, Math.round(2 * scale));
        int expansion = Math.max(padding * 3, Math.min(Math.round(14 * scale), source.width() / 4));
        TextPaint text = new TextPaint(TextPaint.ANTI_ALIAS_FLAG);
        text.setTypeface(Typeface.create("sans-serif", Typeface.NORMAL));
        int background = nearbyBackground(page, source);
        text.setColor(PaperInk.lightness(background) < 145 ? Color.WHITE : Color.BLACK);

        // Use the smallest space that fits. Try a wider region before reducing the font.
        for (int margin : new int[] {padding, padding * 2, expansion}) {
            Rect area = new Rect(source);
            area.inset(-margin, -margin);
            if (!area.intersect(0, 0, page.getWidth(), page.getHeight())
                    || overlaps(area, neighbors, -1)) continue;

            int width = area.width() - padding * 2;
            int height = area.height() - padding * 2;
            if (width < 3 || height < 3) continue;
            StaticLayout layout = fit(box.getText(), text, width, height,
                    Math.max(5f, 6f * scale), Math.max(8f, 19f * scale));
            if (layout == null) continue;

            drawCaption(canvas, area, layout, 1f, background, padding);
            return;
        }

        // Adjacent OCR boxes or tight placement can reject every expanded rectangle.
        // Always fit a word-wrapped caption in the original text footprint in that case.
        int inset = Math.max(0, Math.min(padding, Math.min(source.width(), source.height()) / 6));
        int width = Math.max(1, source.width() - inset * 2);
        int height = Math.max(1, source.height() - inset * 2);
        text.setTextSize(Math.max(8f, 15f * scale));
        ScaledCaption caption = scaleCaption(box.getText(), text, width, height);
        if (caption != null) drawCaption(canvas, source, caption.layout, caption.scale, background, inset);
    }

    private static int nearbyBackground(Bitmap page, Rect source) {
        int[] samples = new int[40];
        for (int i = 0; i < 10; i++) {
            int x = source.left + Math.round((source.width() - 1) * i / 9f);
            int y = source.top + Math.round((source.height() - 1) * i / 9f);
            samples[i * 4] = page.getPixel(x, Math.max(0, source.top - 1));
            samples[i * 4 + 1] = page.getPixel(x, Math.min(page.getHeight() - 1, source.bottom));
            samples[i * 4 + 2] = page.getPixel(Math.max(0, source.left - 1), y);
            samples[i * 4 + 3] = page.getPixel(Math.min(page.getWidth() - 1, source.right), y);
        }
        return PaperInk.medianColor(samples);
    }

    private static void drawCaption(Canvas canvas, Rect area, StaticLayout layout, float scale,
                                    int backgroundColor, int padding) {
        Paint background = new Paint(Paint.ANTI_ALIAS_FLAG);
        background.setColor(backgroundColor);
        float radius = Math.min(padding, Math.min(area.width(), area.height()) / 4f);
        canvas.drawRoundRect(new RectF(area), radius, radius, background);
        int checkpoint = canvas.save();
        canvas.clipRect(area);
        canvas.translate(area.exactCenterX() - layout.getWidth() * scale / 2f,
                area.exactCenterY() - layout.getHeight() * scale / 2f);
        canvas.scale(scale, scale);
        layout.draw(canvas);
        canvas.restoreToCount(checkpoint);
    }

    private static ScaledCaption scaleCaption(String value, TextPaint text, int width, int height) {
        String content = value.trim();
        if (content.isEmpty()) return null;
        float longest = 1f;
        for (String word : content.split("\\s+")) {
            longest = Math.max(longest, text.measureText(word));
        }
        int minimum = (int) Math.ceil(longest) + 2;
        int fullLine = Math.max(minimum, (int) Math.ceil(text.measureText(content)) + 2);
        ScaledCaption best = null;
        for (float factor : new float[] {1f, 1.25f, 1.6f, 2f, 3f, 4f, Float.POSITIVE_INFINITY}) {
            int lineWidth = Math.min(fullLine, Math.max(minimum, Math.round(width * factor)));
            String wrapped = wrap(content, text, lineWidth - 1);
            if (wrapped == null) continue;

            StaticLayout layout = makeLayout(wrapped, text, lineWidth);
            if (layout.getLineCount() != wrapped.split("\\n", -1).length) continue;
            // The virtual layout retains Arabic shaping and complete words. Scaling
            // the entire layout keeps long words from forcing a dropped caption.
            float fitScale = Math.min(1f, fitScale(width, height, layout.getWidth(), layout.getHeight()));
            if (best == null || fitScale > best.scale) best = new ScaledCaption(layout, fitScale);
            if (fitScale == 1f) break;
        }
        if (best != null) return best;
        StaticLayout layout = makeLayout(content, text, Math.max(fullLine + 4, fullLine * 2));
        return new ScaledCaption(layout, Math.min(1f, fitScale(width, height,
                layout.getWidth(), layout.getHeight())));
    }

    static float fitScale(int width, int height, int layoutWidth, int layoutHeight) {
        return Math.min(width / (float) Math.max(1, layoutWidth),
                height / (float) Math.max(1, layoutHeight));
    }

    private static StaticLayout makeLayout(String text, TextPaint paint, int width) {
        return StaticLayout.Builder.obtain(text, 0, text.length(), paint, width)
                .setAlignment(Layout.Alignment.ALIGN_CENTER)
                .setTextDirection(TextDirectionHeuristics.RTL)
                .setBreakStrategy(Layout.BREAK_STRATEGY_SIMPLE)
                .setHyphenationFrequency(Layout.HYPHENATION_FREQUENCY_NONE)
                .setIncludePad(true).build();
    }

    private static final class ScaledCaption {
        final StaticLayout layout;
        final float scale;

        ScaledCaption(StaticLayout layout, float scale) {
            this.layout = layout;
            this.scale = scale;
        }
    }

    private static Paper findPaper(Bitmap bitmap, RectF source, List<ArabicPageRenderer$TextBox> neighbors,
                                   int excluded) {
        if (source.width() < 5 || source.height() < 4) return null;
        int scale = Math.max(2, Math.round(bitmap.getWidth() / 200f));
        for (int[] margin : PaperInk.margins(scale)) {
            Rect area = new Rect();
            source.roundOut(area);
            area.set(area.left - margin[0], area.top - margin[1],
                    area.right + margin[2], area.bottom + margin[3]);
            if (area.left < 0 || area.top < 0 || area.right > bitmap.getWidth()
                    || area.bottom > bitmap.getHeight() || (long) area.width() * area.height() > 180_000) continue;
            if (overlaps(area, neighbors, excluded)) continue;
            int[] pixels = new int[area.width() * area.height()];
            bitmap.getPixels(pixels, 0, area.width(), area.left, area.top, area.width(), area.height());
            int narrowest = Math.min(Math.min(margin[0], margin[1]), Math.min(margin[2], margin[3]));
            int shade = PaperInk.removalColor(pixels, area.width(), area.height(), Math.max(1, narrowest / 2));
            if (shade >= 0) return new Paper(area, pixels, shade, 0xff000000 | (shade * 0x010101));
        }
        return null;
    }

    private static Paper findColoredPaper(Bitmap page, RectF source,
                                         List<ArabicPageRenderer$TextBox> neighbors) {
        Rect area = new Rect();
        source.roundOut(area);
        int margin = Math.max(2, Math.min(7, Math.round(page.getWidth() / 330f)));
        area.inset(-margin, -margin);
        if (!area.intersect(0, 0, page.getWidth(), page.getHeight())
                || area.width() < 8 || area.height() < 8
                || (long) area.width() * area.height() > 180_000
                || overlaps(area, neighbors, -1)) return null;

        int[] pixels = new int[area.width() * area.height()];
        page.getPixels(pixels, 0, area.width(), area.left, area.top, area.width(), area.height());
        int color = PaperInk.sampleColoredPaper(pixels, area.width(), area.height());
        return color == 0 ? null : new Paper(area, pixels, -1, color);
    }

    private static boolean overlaps(Rect area, List<ArabicPageRenderer$TextBox> boxes, int excluded) {
        for (int i = 0; i < boxes.size(); i++) {
            RectF other = boxes.get(i).getBounds();
            if (i != excluded && other.intersects(area.left, area.top, area.right, area.bottom)) return true;
        }
        return false;
    }

    private static StaticLayout fit(String text, TextPaint paint, int width, int height, float min, float max) {
        StaticLayout best = null;
        float bestSize = min;
        float low = min;
        float high = max;
        for (int attempt = 0; attempt < 8; attempt++) {
            float size = attempt == 0 ? min : (low + high) / 2f;
            paint.setTextSize(size);
            String wrapped = wrap(text, paint, width - 1);
            if (wrapped != null) {
                StaticLayout layout = makeLayout(wrapped, paint, width);
                if (layout.getHeight() <= height && layout.getLineCount() == wrapped.split("\\n", -1).length) {
                    best = layout;
                    bestSize = size;
                    low = size;
                    continue;
                }
            }
            if (attempt == 0) return null;
            high = size;
        }
        paint.setTextSize(bestSize);
        return best;
    }

    static String wrap(String text, TextPaint paint, float width) {
        StringBuilder lines = new StringBuilder();
        String line = "";
        for (String word : text.trim().split("\\s+")) {
            if (paint.measureText(word) > width) return null;
            String joined = line.isEmpty() ? word : line + " " + word;
            if (paint.measureText(joined) <= width) {
                line = joined;
            } else {
                lines.append(line).append('\n');
                line = word;
            }
        }
        return lines.append(line).toString();
    }

    private static final class Paper {
        final Rect area;
        final int[] pixels;
        final int shade;
        final int backgroundColor;

        Paper(Rect area, int[] pixels, int shade, int backgroundColor) {
            this.area = area;
            this.pixels = pixels;
            this.shade = shade;
            this.backgroundColor = backgroundColor;
        }
    }
}

package eu.kanade.tachiyomi.ui.reader.translation;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.RectF;
import java.io.File;
import java.util.Collections;
import javax.imageio.ImageIO;

public final class MissingCaptionTest {
    private static void check(boolean success,String message) {if (!success)throw new AssertionError(message);}
    private static void compare(Bitmap page, RectF bounds, String message, RectF nearby, boolean small)
            throws Exception {
        Canvas canvas = new Canvas();
        BubbleLayout.draw(page, canvas, new ArabicPageRenderer$TextBox(bounds,message),
                Collections.singletonList(new ArabicPageRenderer$TextBox(nearby,"ترجمة قريبة")));
        check(canvas.caption != null, "caption disappeared");
        check(canvas.caption.replace('\n',' ').equals(message),"words were cut or omitted");
        check(canvas.background != null,"English text needs a backing");
        check(canvas.dx >= canvas.clip.left-.01 && canvas.dy >= canvas.clip.top-.01,"left or top clipping");
        check(canvas.dx+canvas.width*canvas.ratio <= canvas.clip.right+.01 &&
              canvas.dy+canvas.height*canvas.ratio <= canvas.clip.bottom+.01,"right or bottom clipping");
        if (small) check(canvas.ratio < 1f,"must adapt text when all larger layouts are blocked");
    }
    public static void main(String[] args) throws Exception {
        Bitmap page = new Bitmap(ImageIO.read(new File(args[0])).getSubimage(0,310,681,978));
        RectF caption = new RectF(97,577,182,679);
        compare(page,caption,"أراهن أنك ستبدين رائعة أمام الكاميرا يا هيكاري.",
                new RectF(181,577,200,683),false);
        compare(page,new RectF(657,420,680,449),
                "كيف تشعرين حيال الانضمام والمشاركة بأنشطة نادي الصحافة؟",
                new RectF(656,419,673,456),true);
        check(PaperInk.lightness(PaperInk.medianColor(
                new int[]{0xffffffff,0xffeeeeee,0xffdddddd,0xff111111,0xff000000})) > 200,
                "sample dominant light background");
        System.out.println("Verified the old skip path, artwork-edge scaling and complete captions.");
    }
}

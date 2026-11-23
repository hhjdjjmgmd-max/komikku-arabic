package eu.kanade.tachiyomi.ui.reader.translation;
import android.graphics.RectF;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public final class PageOcrRecoveryTest {
    private static void check(boolean condition) { if (!condition) throw new AssertionError(); }
    public static void main(String[] args) {
        check(PageOcrRecovery.cleanText("WHA-\n AAA-\nAAA-\nT?!").equals("What?!"));
        List<ArabicPageRenderer$TextBox> boxes = new ArrayList<>();
        ArabicPageRenderer$TextBox half = new ArabicPageRenderer$TextBox(
                new RectF(20, 30, 70, 50), "I heard you'd");
        boxes.add(half);
        ArabicPageRenderer$TextBox full = new ArabicPageRenderer$TextBox(
                new RectF(16, 25, 75, 72), "I heard you'd been absent from school");
        PageOcrRecovery.merge(boxes, full);
        check(boxes.size() == 1 && boxes.get(0) == full);
        PageOcrRecovery.merge(boxes, half);
        check(boxes.size() == 1 && boxes.get(0) == full);
        PageOcrRecovery.merge(boxes, new ArabicPageRenderer$TextBox(
                new RectF(80, 23, 130, 75), "How you feel, Hikari-chan."));
        check(boxes.size() == 2);
        File page = new File("example/04.img");
        File refreshed = PageOcrRecovery.refreshFile(page);
        check(!page.equals(refreshed) && page.getAbsoluteFile().toPath().normalize().equals(
                refreshed.getAbsoluteFile().toPath().normalize()));
        System.out.println("Verified stylized exclamation, missed lines, deduplication and reader cache refresh.");
    }
}

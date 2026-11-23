package eu.kanade.tachiyomi.ui.reader.translation;
public final class BubbleAgreementTest {
    public static void main(String[] args) {
        check(PaddlePageOcr.modelFor("ja").equals("rec-ja"));
        check(PaddlePageOcr.modelFor("zh").equals("rec-zh"));
        check(PaddlePageOcr.modelFor("ko").equals("rec-ko"));
        check(PaddlePageOcr.modelFor("en").equals("rec"));
        check(PaddlePageOcr.candidateDisagrees("코우이져 군", "코우이치군!", "ko"));
        check(PaddlePageOcr.confirmCrop("코우이치군!", "코우이치 군", "ko"));
        check(!PaddlePageOcr.confirmCrop("코우이치군!", "코우이치", "ko"));
        check(!PaddlePageOcr.confirmCrop("你好", "hello", "zh"));
        check(!PaddlePageOcr.candidateDisagrees("오늘도 안녕하세요", "오늘", "ko"));
        System.out.println("Independent bubble confirmation and per-language route verified.");
    }
    private static void check(boolean value) {
        if (!value) throw new AssertionError();
    }
}

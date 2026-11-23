package eu.kanade.tachiyomi.ui.reader.translation;
import android.content.Context;
import com.paddle.ocr.EngineConfig;
import com.paddle.ocr.PaddleOCRConfig;
import com.paddle.ocr.engine.OCREngine;
import com.paddle.ocr.model.OCRResult;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;

public final class MultilingualPaddleTest {
    public static void main(String[] args) throws Exception {
        nu.pattern.OpenCV.loadLocally();
        String[][] examples = {{"en","LOOKING FORWARD"}, {"zh","你好欢迎来到学校"},
                {"ja","こんにちは今日は良い天気です"}, {"ko","안녕하세요학교에오신것을환영합니다"}};
        for (String[] example : examples) {
            String language = example[0];
            String model = PaddlePageOcr.modelFor(language);
            PaddleOCRConfig cfg = new PaddleOCRConfig("BGR",736,"min",2000,.3f,.5f,1.5f,1000,true,"fast","quad",.55f,2);
            OCREngine engine = new OCREngine(new Context(),cfg,new EngineConfig(2),"paddle-ocr/det.onnx",
                    "paddle-ocr/" + model + ".onnx","paddle-ocr/" + model + ".yml");
            try {
                String file = "en".equals(language) ? ".work-v100/reference.png" : ".work-v101/fixtures/" + language + ".png";
                StringBuilder result = new StringBuilder();
                for (OCRResult line : engine.run(Files.readAllBytes(Paths.get(file))).getResults()) {
                    result.append(line.getText());
                }
                String read = result.toString().replaceAll("[^\\p{L}]", "");
                String target = example[1].replaceAll("\\s", "");
                if (!read.contains(target)) throw new AssertionError(language + " expected " + target + " in " + read);
                System.out.println(language + " read with " + model + " → " + target);
            } finally {
                engine.release();
            }
        }
    }
}

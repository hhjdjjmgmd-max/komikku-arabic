package eu.kanade.tachiyomi.ui.reader.translation;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class EnglishLineWrap {
    private static final Pattern WRAPPED = Pattern.compile(
            "\\b([A-Za-z]{2,})[ \\t]*([-‐‑])[ \\t]*\\R[ \\t]*([A-Za-z]{2,})\\b");

    private EnglishLineWrap() {}

    public static String joinWords(String input) {
        String text = input.replaceAll("\u00ad[ \\t]*\\R[ \\t]*", "").replace("\u00ad", "");
        Matcher matcher = WRAPPED.matcher(text);
        StringBuffer joined = new StringBuffer();
        while (matcher.find()) {
            String left = matcher.group(1);
            String right = matcher.group(3);
            String word = left + right;
            if (known(word) && !known(left + "-" + right)) {
                matcher.appendReplacement(joined, word);
            } else {
                // A genuine hyphen stays attached to both halves when the line break disappears.
                matcher.appendReplacement(joined, left + matcher.group(2) + right);
            }
        }
        return matcher.appendTail(joined).toString();
    }

    private static boolean known(String word) {
        return WordList.TEXT.contains("\n" + word.toLowerCase(Locale.ROOT) + "\n");
    }

    private static final class WordList {
        private static final String TEXT = load();

        private static String load() {
            try (InputStream stream = EnglishLineWrap.class.getResourceAsStream("/assets/english-words.txt")) {
                if (stream == null) return "";
                ByteArrayOutputStream bytes = new ByteArrayOutputStream();
                byte[] buffer = new byte[8192];
                int size;
                while ((size = stream.read(buffer)) != -1) bytes.write(buffer, 0, size);
                return new String(bytes.toByteArray(), StandardCharsets.US_ASCII);
            } catch (IOException unavailable) {
                return "";
            }
        }
    }
}

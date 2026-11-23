package eu.kanade.tachiyomi.ui.reader.translation;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class OnlinePageTranslation {
    private static final String GOOGLE = "https://translate.googleapis.com/translate_a/single";
    private static final String MY_MEMORY = "https://api.mymemory.translated.net/get";
    private static final Pattern MARKER = Pattern.compile(
            "\\[\\s*\\[\\s*([\\p{Nd}]{3})\\s*\\]\\s*\\]");
    private static final int MY_MEMORY_QUERY_BYTES = 480;
    private static final int GOOGLE_ENCODED_QUERY_BYTES = 1700;
    private static final long PAGE_BUDGET = TimeUnit.SECONDS.toNanos(9);
    private static final long RETRY_DELAY = TimeUnit.MINUTES.toNanos(1);
    private static volatile long googleRetryAt;
    private static volatile long memoryRetryAt;

    private OnlinePageTranslation() {}

    public static Map<ArabicPageRenderer$TextBox, String> translatePage(
            List<ArabicPageRenderer$TextBox> boxes, String language) {
        Map<ArabicPageRenderer$TextBox, String> translated = new IdentityHashMap<>();
        for (ArabicPageRenderer$TextBox box : boxes) {
            String known = DialogueText.arabic(box.getText());
            if (DialogueText.hasArabic(known) && !DialogueText.hasForeignLetters(known)) {
                translated.put(box, known);
            }
        }
        long deadline = System.nanoTime() + PAGE_BUDGET;
        translatePending(boxes, language.equals("zh") ? "zh-CN" : language,
                translated, true, deadline);
        translatePending(boxes, language, translated, false, deadline);
        return translated;
    }

    private static void translatePending(List<ArabicPageRenderer$TextBox> boxes, String language,
                                         Map<ArabicPageRenderer$TextBox, String> translated,
                                         boolean google, long deadline) {
        List<ArabicPageRenderer$TextBox> batch = new ArrayList<>();
        List<String> lines = new ArrayList<>();
        int batchBytes = 0;
        int[] contextualRetries = {2};
        int limit = google ? GOOGLE_ENCODED_QUERY_BYTES : MY_MEMORY_QUERY_BYTES;
        for (ArabicPageRenderer$TextBox box : boxes) {
            if (deadline - System.nanoTime() <= 0 || coolingDown(google)) return;
            if (translated.containsKey(box)) continue;
            // Keep separate runs of missing dialogue adjacent in the original reading order.
            String text = box.getText().trim();
            if (text.isEmpty() || MARKER.matcher(text).find()) continue;
            text = language.equals("en") ? DialogueText.englishForTranslation(text)
                    : DialogueText.cjkForTranslation(text, language);
            int size = (google ? encode(text).length() : text.getBytes(StandardCharsets.UTF_8).length) + 30;
            if (!batch.isEmpty() && batchBytes + size > limit) {
                if (!fetch(batch, lines, language, translated, google, deadline, contextualRetries)) return;
                batch.clear();
                lines.clear();
                batchBytes = 0;
            }
            if (size > limit) continue;
            batch.add(box);
            lines.add(text);
            batchBytes += size;
        }
        if (!batch.isEmpty()) fetch(batch, lines, language, translated, google, deadline, contextualRetries);
    }

    private static boolean coolingDown(boolean google) {
        long retry = google ? googleRetryAt : memoryRetryAt;
        return retry != 0 && retry - System.nanoTime() > 0;
    }

    private static boolean fetch(List<ArabicPageRenderer$TextBox> batch, List<String> lines,
                                 String language, Map<ArabicPageRenderer$TextBox, String> output,
                                 boolean google, long deadline, int[] contextualRetries) {
        if (deadline - System.nanoTime() <= 0 || coolingDown(google)) return false;
        try {
            List<String> regions = splitTranslation(translate(requestText(lines), language, google, deadline),
                    batch.size());
            for (int i = 0; i < batch.size(); i++) {
                ArabicPageRenderer$TextBox box = batch.get(i);
                boolean accepted = regions != null && store(output, box, regions.get(i), language);
                if (needsContext(output.get(box)) && contextualRetries[0] > 0
                        && batch.size() > 1 && deadline - System.nanoTime() > 0) {
                    int start = Math.max(0, i - 1);
                    int end = Math.min(i + 2, lines.size());
                    List<String> neighbors = lines.subList(start, end);
                    contextualRetries[0]--;
                    if (neighbors.size() < lines.size()) {
                        String query = requestText(neighbors);
                        int bytes = google ? encode(query).length() : query.getBytes(StandardCharsets.UTF_8).length;
                        if (bytes <= (google ? GOOGLE_ENCODED_QUERY_BYTES : MY_MEMORY_QUERY_BYTES)) {
                            List<String> retry = splitTranslation(translate(query, language, google, deadline), end - start);
                            if (retry != null) accepted |= store(output, box, retry.get(i - start), language);
                        }
                    } else if (accepted) {
                        store(output, box, translate(lines.get(i), language, google, deadline), language);
                    }
                }
                if (!accepted && batch.size() > 1 && deadline - System.nanoTime() > 0) {
                    store(output, box, translate(lines.get(i), language, google, deadline), language);
                }
            }
            return true;
        } catch (IOException | JSONException failure) {
            long retry = System.nanoTime() + RETRY_DELAY;
            if (google) googleRetryAt = retry;
            else memoryRetryAt = retry;
            return false;
        }
    }

    private static boolean store(Map<ArabicPageRenderer$TextBox, String> output,
                                 ArabicPageRenderer$TextBox box, String response, String language) {
        String translated = DialogueText.arabic(response);
        if (!DialogueText.hasArabic(translated) || DialogueText.hasSourceScript(translated, language)) return false;
        String prior = output.get(box);
        if (prior != null && !betterAlternative(prior, translated)) return true;
        output.put(box, translated);
        return true;
    }

    private static boolean needsContext(String text) {
        return text == null || DialogueText.hasForeignLetters(text);
    }

    static boolean betterAlternative(String previous, String candidate) {
        int previousArabic = arabicLetters(previous);
        return arabicLetters(candidate) >= Math.max(1, (previousArabic * 2 + 2) / 3)
                && foreignLetters(candidate) < foreignLetters(previous);
    }

    private static int arabicLetters(String text) {
        return (int) text.codePoints().filter(c -> Character.isLetter(c)
                && Character.UnicodeScript.of(c) == Character.UnicodeScript.ARABIC).count();
    }

    private static int foreignLetters(String text) {
        return (int) text.codePoints().filter(c -> Character.isLetter(c)
                && Character.UnicodeScript.of(c) != Character.UnicodeScript.ARABIC).count();
    }

    private static String translate(String query, String language, boolean google, long deadline)
            throws IOException, JSONException {
        String url = google
                ? GOOGLE + "?client=gtx&dt=t&sl=" + encode(language) + "&tl=ar&q=" + encode(query)
                : MY_MEMORY + "?langpair=" + encode(language + "|ar") + "&q=" + encode(query);
        String body = response(url, deadline);
        return google ? googleText(body) : memoryText(body);
    }

    static String requestText(List<String> lines) {
        if (lines.size() == 1) return lines.get(0);
        StringBuilder request = new StringBuilder();
        for (int i = 0; i < lines.size(); i++) {
            if (i > 0) request.append('\n');
            request.append(String.format(Locale.ROOT, "[[%03d]] ", i + 1)).append(lines.get(i));
        }
        return request.toString();
    }

    static List<String> splitTranslation(String translated, int count) {
        String cleaned = translated.replace("\u200E", "").replace("\u200F", "")
                .replace("\u061C", "").trim();
        if (cleaned.isEmpty()) return null;
        if (count == 1) return java.util.Collections.singletonList(cleaned);

        Matcher matcher = MARKER.matcher(cleaned);
        List<String> regions = new ArrayList<>(count);
        int next = 1;
        int contentStart = 0;
        while (matcher.find()) {
            int id = 0;
            for (char digit : matcher.group(1).toCharArray()) id = id * 10 + Character.digit(digit, 10);
            if (id != next || id > count) return null;
            String previous = cleaned.substring(contentStart, matcher.start()).trim();
            if (id == 1 ? !previous.isEmpty() : previous.isEmpty()) return null;
            if (id > 1) regions.add(previous);
            contentStart = matcher.end();
            next++;
        }
        if (next != count + 1) return null;
        String last = cleaned.substring(contentStart).trim();
        if (last.isEmpty()) return null;
        regions.add(last);
        return regions;
    }

    static String googleText(String body) throws JSONException {
        JSONArray segments = new JSONArray(body).getJSONArray(0);
        StringBuilder text = new StringBuilder();
        for (int i = 0; i < segments.length(); i++) {
            JSONArray segment = segments.optJSONArray(i);
            if (segment != null && !segment.isNull(0)) text.append(segment.getString(0));
        }
        if (text.length() == 0) throw new JSONException("Empty translation");
        return text.toString();
    }

    static String memoryText(String body) throws JSONException {
        JSONObject response = new JSONObject(body);
        if (response.optInt("responseStatus", -1) != 200 || response.optBoolean("quotaFinished")) {
            throw new JSONException("Translation service unavailable");
        }
        return response.getJSONObject("responseData").getString("translatedText");
    }

    private static String response(String url, long deadline) throws IOException {
        long remaining = TimeUnit.NANOSECONDS.toMillis(deadline - System.nanoTime());
        if (remaining <= 0) throw new IOException("Translation deadline");
        HttpURLConnection connection = (HttpURLConnection) new URL(url).openConnection();
        connection.setInstanceFollowRedirects(false);
        int timeout = (int) Math.min(2600, remaining);
        connection.setConnectTimeout(timeout);
        connection.setReadTimeout(timeout);
        connection.setRequestProperty("Accept", "application/json");
        try {
            if (connection.getResponseCode() != 200) throw new IOException("Translation unavailable");
            try (InputStream stream = connection.getInputStream()) {
                ByteArrayOutputStream buffer = new ByteArrayOutputStream();
                byte[] bytes = new byte[4096];
                int size;
                while ((size = stream.read(bytes)) != -1) {
                    if (deadline - System.nanoTime() <= 0 || buffer.size() + size > 64 * 1024) {
                        throw new IOException("Translation response limit");
                    }
                    buffer.write(bytes, 0, size);
                }
                return new String(buffer.toByteArray(), StandardCharsets.UTF_8);
            }
        } finally {
            connection.disconnect();
        }
    }

    private static String encode(String text) {
        try {
            return URLEncoder.encode(text, "UTF-8");
        } catch (java.io.UnsupportedEncodingException impossible) {
            throw new AssertionError(impossible);
        }
    }

    public static void retryOnline() {
        googleRetryAt = 0;
        memoryRetryAt = 0;
    }
}

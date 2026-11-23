package eu.kanade.tachiyomi.ui.reader.translation;

import java.util.regex.Pattern;

public final class DialogueText {
    private static final int WORDS = Pattern.CASE_INSENSITIVE | Pattern.UNICODE_CASE;
    private static final Rule[] FIXES = {
        new Rule("\\blive[ -]?stream(?:ing)?\\b", "البث المباشر"),
        new Rule("\\bnight[ -]?cap\\b", "مشروب قبل النوم"),
        new Rule("\\b(?:P\\.\\s*E\\.?|PE)\\b\\.?", "التربية البدنية"),
        new Rule("!?\\b(?:6torage|st0rage|storage)\\b", "التخزين"),
        new Rule("\\b(?:gir[il]s['’]?\\s+changing(?:\\s+rooms?)?|changing\\s+rooms?\\s+for\\s+gir[il]s|gir[il]s\\s*[!?]?\\s*changing)\\b", "غرفة تبديل ملابس البنات"),
        new Rule("\\bwh[i]+ne\\b", "أُفّ"),
        new Rule("\\boh\\b[.]?", "أوه")
    };
    private static final Pattern STORAGE_ROOM = Pattern.compile("\\b(?:6torage|st0rage|storage)\\s+room\\b", WORDS);
    private static final Pattern ENGLISH_ROOM = Pattern.compile("\\b(?:girls['’]?|giris)\\s+changing\\s+rooms?\\b", WORDS);
    private static final Pattern STRETCHED_WHINE = Pattern.compile("\\bwh[i]{2,}ne\\b", WORDS);
    private static final Pattern BROKEN_STORAGE = Pattern.compile("\\b(?:6torage|st0rage)\\b", WORDS);
    private static final Pattern BROKEN_GIRLS = Pattern.compile("\\bgiris(?=['’]?\\s+changing\\b)", WORDS);

    private static final Pattern NEARLY_OVER = Pattern.compile(
            "\\b(is|are|was|were|be|been|being|'s|’s)(\\s+)(pretty\\s+much|just\\s+about)\\s+over\\b(?!\\s+[a-z])", WORDS);
    private static final String SLEEVE_END = "\\s+up\\s+(?:my|your|his|her|its|our|their)\\s+sleeves?\\b";
    private static final Pattern SLEEVE_TRICK = Pattern.compile("\\btrick" + SLEEVE_END, WORDS);
    private static final Pattern SLEEVE_TRICKS = Pattern.compile("\\btricks" + SLEEVE_END, WORDS);
    private static final Pattern CLOSE_COMBAT = Pattern.compile(
            "\\bclose(?:\\s*[-‐‑–]\\s*|\\s+)quarters?\\s+(?:brawling|fighting|combat)\\b", WORDS);

    private static final Pattern LOOKING_FORWARD = Pattern.compile("\\blooking\\s+forward\\s+to\\b", WORDS);

    private DialogueText() {}

    static String englishOcr(String text) {
        String corrected = BROKEN_STORAGE.matcher(text).replaceAll("storage");
        corrected = BROKEN_GIRLS.matcher(corrected).replaceAll("girls");
        return STRETCHED_WHINE.matcher(corrected).replaceAll("whine");
    }

    static String englishForTranslation(String text) {
        String normalized = englishOcr(EnglishLineWrap.joinWords(text)).replaceAll("\\s+", " ");
        normalized = NEARLY_OVER.matcher(normalized).replaceAll("$1$2almost finished");
        normalized = SLEEVE_TRICK.matcher(normalized).replaceAll("hidden tactic");
        normalized = SLEEVE_TRICKS.matcher(normalized).replaceAll("hidden tactics");
        normalized = CLOSE_COMBAT.matcher(normalized).replaceAll("hand-to-hand fighting");
        return LOOKING_FORWARD.matcher(normalized).replaceAll("eagerly anticipating");
    }

    static String cjkForTranslation(String text, String language) {
        String normalized = text.trim().replaceAll("\\s+", " ");
        if (!"ja".equals(language) && !language.startsWith("zh")) return normalized;
        StringBuilder joined = new StringBuilder(normalized.length());
        for (int i = 0; i < normalized.length(); i++) {
            char c = normalized.charAt(i);
            if (c == ' ' && i > 0 && i + 1 < normalized.length()
                    && isEastAsian(normalized.codePointBefore(i))
                    && isEastAsian(normalized.codePointAt(i + 1))) continue;
            joined.append(c);
        }
        return joined.toString();
    }

    private static boolean isEastAsian(int code) {
        Character.UnicodeScript script = Character.UnicodeScript.of(code);
        return script == Character.UnicodeScript.HAN || script == Character.UnicodeScript.HIRAGANA
                || script == Character.UnicodeScript.KATAKANA;
    }

    static boolean hasSourceScript(String text, String language) {
        return text.codePoints().anyMatch(code -> {
            Character.UnicodeScript script = Character.UnicodeScript.of(code);
            if ("ko".equals(language)) return script == Character.UnicodeScript.HANGUL;
            if ("ja".equals(language)) return script == Character.UnicodeScript.HAN
                    || script == Character.UnicodeScript.HIRAGANA || script == Character.UnicodeScript.KATAKANA;
            return language.startsWith("zh") && script == Character.UnicodeScript.HAN;
        });
    }

    public static String arabic(String text) {
        String result = STORAGE_ROOM.matcher(text).replaceAll("غرفة التخزين");
        result = ENGLISH_ROOM.matcher(result).replaceAll("غرفة تبديل ملابس البنات");
        for (Rule rule : FIXES) result = rule.pattern.matcher(result).replaceAll(rule.arabic);
        result = result.replace("غرفة غرفة تبديل", "غرفة تبديل");
        return result.replace('?', '؟');
    }

    static boolean hasArabic(String text) {
        return text.codePoints().anyMatch(c -> Character.isLetter(c)
                && Character.UnicodeScript.of(c) == Character.UnicodeScript.ARABIC);
    }

    static boolean hasForeignLetters(String text) {
        return text.codePoints().anyMatch(c -> Character.isLetter(c)
                && Character.UnicodeScript.of(c) != Character.UnicodeScript.ARABIC);
    }

    private static final class Rule {
        final Pattern pattern;
        final String arabic;

        Rule(String pattern, String arabic) {
            this.pattern = Pattern.compile(pattern, WORDS);
            this.arabic = arabic;
        }
    }
}

package eu.kanade.tachiyomi.ui.reader.translation;

import com.google.android.gms.tasks.Task;
import com.google.mlkit.nl.translate.Translation;
import com.google.mlkit.nl.translate.Translator;
import com.google.mlkit.nl.translate.TranslatorOptions;

/** A lazy Google Translate language pack, used only for dialogue the online service missed. */
public final class GoogleOnDeviceTranslation implements AutoCloseable {
    private String sourceLanguage;
    private Translator translator;
    private Task<Void> model;

    public Task<String> translate(String language, String text) {
        if (!language.equals(sourceLanguage)) {
            close();
            TranslatorOptions options = new TranslatorOptions.Builder()
                    .setSourceLanguage(language)
                    .setTargetLanguage("ar")
                    .build();
            translator = Translation.getClient(options);
            sourceLanguage = language;
        }
        Translator active = translator;
        if (model == null) model = active.downloadModelIfNeeded();
        String input = language.equals("en") ? DialogueText.englishForTranslation(text)
                : DialogueText.cjkForTranslation(text, language);
        return model.onSuccessTask(ignored -> active.translate(input));
    }

    @Override public void close() {
        if (translator != null) translator.close();
        translator = null;
        sourceLanguage = null;
        model = null;
    }
}

package eu.kanade.tachiyomi.ui.reader.translation;

import android.app.AlertDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import com.hippo.unifile.UniFile;
import eu.kanade.tachiyomi.data.download.model.Download;
import eu.kanade.tachiyomi.util.lang.StringExtensionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import tachiyomi.core.common.util.system.ImageUtil;
import tachiyomi.domain.chapter.model.Chapter;
import java.io.File;
import java.io.InputStream;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

public final class DownloadArabicTranslation {
    private static final String PREFS = "arabic_download_translation";
    private static final String LANGUAGE = "source_language";
    private static final Semaphore TRANSLATION_SLOT = new Semaphore(1, true);
    private static final String[] CHOICES = {"إيقاف", "الإنكليزية", "اليابانية", "الكورية", "الصينية"};

    private DownloadArabicTranslation() {}

    private static SharedPreferences preferences(Context context) {
        return context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    public static void showOptions(Context context) {
        SharedPreferences preferences = preferences(context);
        new AlertDialog.Builder(context)
                .setTitle("ترجمة التنزيلات للعربي")
                .setSingleChoiceItems(CHOICES, preferences.getInt(LANGUAGE, 0), (dialog, index) -> {
                    preferences.edit().putInt(LANGUAGE, index).apply();
                    dialog.dismiss();
                    Toast.makeText(context, index == 0
                            ? "التنزيلات الجديدة باللغة الأصلية"
                            : "التنزيلات الجديدة تجهز بالعربي من " + CHOICES[index],
                            Toast.LENGTH_SHORT).show();
                })
                .setNegativeButton("رجوع", null)
                .show();
    }

    private static PageLanguage sourceLanguage(int preference) {
        switch (preference) {
            case 1: return PageLanguage.English;
            case 2: return PageLanguage.Japanese;
            case 3: return PageLanguage.Korean;
            case 4: return PageLanguage.Chinese;
            default: return null;
        }
    }

    public static void prepare(Context context, Download download, UniFile directory,
                               Continuation<?> parent, boolean archive) {
        PageLanguage language = sourceLanguage(preferences(context).getInt(LANGUAGE, 0));
        if (language == null) return;
        CoroutineContext parentContext = parent.getContext();
        boolean acquired = false;
        try {
            List<UniFile> files = collectPages(directory, archive);
            if (files.isEmpty()) {
                notify(context, "تعذرت ترجمة الفصل. التنزيل يكمل باللغة الأصلية.");
                return;
            }
            Chapter chapter = download.getChapter();
            File root = SavedChapterPages.chapter(context.getCacheDir(), chapter.getMangaId(),
                    chapter.getId(), chapter.getUrl(), files.size());
            File destination = SavedChapterPages.language(root, language.name());
            if (destination == null) return;
            while (!acquired) {
                JobKt.ensureActive(parentContext);
                acquired = TRANSLATION_SLOT.tryAcquire(250, TimeUnit.MILLISECONDS);
            }
            JobKt.ensureActive(parentContext);
            int failures;
            try (ArabicPageRenderer renderer = new ArabicPageRenderer(language)) {
                failures = translatePages(destination, files, renderer, parentContext);
            }
            if (failures == 0) notify(context, "جهزت ترجمة الفصل العربي للتنزيل.");
            else notify(context, "بعض صفحات الفصل بقت بلغتها الأصلية. التنزيل يكمل.");
        } catch (CancellationException cancelled) {
            throw cancelled;
        } catch (InterruptedException interrupted) {
            Thread.currentThread().interrupt();
            throw new CancellationException("Download interrupted");
        } catch (Exception failure) {
            android.util.Log.w("ArabicDownload", "Chapter translation could not finish", failure);
            notify(context, "تعذرت ترجمة الفصل. التنزيل يكمل باللغة الأصلية.");
        } finally {
            if (acquired) TRANSLATION_SLOT.release();
        }
    }

    private static List<UniFile> collectPages(UniFile directory, boolean archive) {
        List<UniFile> result = new ArrayList<>();
        UniFile[] files = directory.listFiles();
        if (files == null) return result;
        for (UniFile file : files) {
            String name = file.getName();
            if (file.isFile() && name != null && !name.equalsIgnoreCase("ComicInfo.xml")
                    && !name.startsWith(".") && ImageUtil.INSTANCE.isImage(name, () -> stream(file))) {
                result.add(file);
            }
        }
        result.sort((first, second) -> archive
                ? StringExtensionsKt.compareToCaseInsensitiveNaturalOrder(first.getName(), second.getName())
                : first.getName().compareTo(second.getName()));
        return result;
    }

    private static int translatePages(File destination, List<UniFile> files, ArabicPageRenderer renderer,
                                      CoroutineContext parentContext) throws InterruptedException {
        Set<String> existing = SavedChapterPages.entries(destination);
        int failures = 0;
        for (int index = 0; index < files.size(); index++) {
            JobKt.ensureActive(parentContext);
            if (SavedChapterPages.rendered(destination, index, existing) != null
                    || SavedChapterPages.unchanged(index, existing)) continue;
            File output = new File(destination, index + ".img");
            UniFile original = files.get(index);
            File stage = null;
            try {
                stage = SavedChapterPages.stage(output);
                File working = stage;
                boolean didRender = BuildersKt.<Boolean>runBlocking(
                        parentContext.plus(Dispatchers.getIO()),
                        (scope, continuation) -> renderer.render(() -> stream(original), working, continuation));
                JobKt.ensureActive(parentContext);
                SavedChapterPages.publish(stage, output, didRender);
            } catch (CancellationException | InterruptedException cancelled) {
                throw cancelled;
            } catch (Exception pageFailure) {
                failures++;
                android.util.Log.w("ArabicDownload", "One page could not be prepared", pageFailure);
            } finally {
                if (stage != null) SavedChapterPages.discard(stage);
            }
        }
        return failures;
    }

    private static InputStream stream(UniFile file) {
        try {
            return file.openInputStream();
        } catch (IOException failure) {
            throw new UncheckedIOException(failure);
        }
    }

    private static void notify(Context context, String message) {
        Context app = context.getApplicationContext();
        new Handler(Looper.getMainLooper()).post(
                () -> Toast.makeText(app, message, Toast.LENGTH_SHORT).show());
    }
}

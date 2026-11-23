package com.google.mlkit.nl.translate;
import com.google.android.gms.tasks.Task;
public interface Translator {
    Task<Void> downloadModelIfNeeded();
    Task<String> translate(String text);
}

package com.google.mlkit.vision.text;
import com.google.mlkit.vision.common.InputImage;
import com.google.android.gms.tasks.Task;
public interface TextRecognizer { Task<Text> process(InputImage image); }

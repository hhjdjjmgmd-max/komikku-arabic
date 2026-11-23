package com.google.android.gms.tasks;
import java.util.concurrent.Executor;
public abstract class Task<T> {
    public abstract boolean isComplete();
    public abstract Task<T> addOnCompleteListener(Executor executor, OnCompleteListener<T> listener);
}

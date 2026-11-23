package com.google.android.gms.tasks;
import java.util.concurrent.*;
public class Tasks {
    public static native <T> T await(Task<T> task, long timeout, TimeUnit unit)
        throws ExecutionException, InterruptedException, TimeoutException;
}

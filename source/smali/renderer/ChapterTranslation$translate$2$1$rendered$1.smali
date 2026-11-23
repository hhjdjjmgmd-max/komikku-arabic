.class final Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChapterTranslation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->translate(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x530
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "eu.kanade.tachiyomi.ui.reader.translation.ChapterTranslation$translate$2$1$rendered$1"
    f = "ChapterTranslation.kt"
    i = {}
    l = {
        0x5c,
        0x5d
    }
    m = "invokeSuspend"
    n = {}
    nl = {
        0x5d,
        -0x1
    }
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $output:Ljava/io/File;

.field final synthetic $page:Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

.field final synthetic $renderer:Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

.field label:I

.field private stage:Ljava/io/File;

.field final synthetic this$0:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;


# direct methods
.method constructor <init>(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;",
            "Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;",
            "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->this$0:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;

    iput-object p2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->$page:Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    iput-object p3, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->$renderer:Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

    iput-object p4, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->$output:Ljava/io/File;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;

    iget-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->this$0:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;

    iget-object v2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->$page:Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    iget-object v3, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->$renderer:Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

    iget-object v4, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->$output:Ljava/io/File;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;-><init>(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "$result"    # Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 91
    iget v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p1

    goto :goto_1

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p1

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->this$0:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;

    iget-object v2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->$page:Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x1

    iput v4, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->label:I

    invoke-static {v1, v2, v3}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->access$awaitImage(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 91
    return-object v0

    .line 92
    :cond_0
    :goto_0
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    iget-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->$renderer:Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

    iget-object v2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->$page:Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    invoke-virtual {v2}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getStream()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->$output:Ljava/io/File;

    invoke-static {v3}, Leu/kanade/tachiyomi/ui/reader/translation/SavedChapterPages;->stage(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->stage:Ljava/io/File;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x2

    iput v5, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->label:I

    invoke-virtual {v1, v2, v3, v4}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->render(Lkotlin/jvm/functions/Function0;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 91
    return-object v0

    .line 93
    :cond_1
    :goto_1
    iget-object v2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->stage:Ljava/io/File;

    iget-object v3, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->$output:Ljava/io/File;

    move-object v4, v1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :publish_page

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :publish_page

    invoke-static {v2}, Leu/kanade/tachiyomi/ui/reader/translation/SavedChapterPages;->discard(Ljava/io/File;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    :publish_page
    invoke-static {v2, v3, v4}, Leu/kanade/tachiyomi/ui/reader/translation/SavedChapterPages;->publish(Ljava/io/File;Ljava/io/File;Z)V

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;->stage:Ljava/io/File;

    invoke-static {v2}, Leu/kanade/tachiyomi/ui/reader/translation/SavedChapterPages;->discard(Ljava/io/File;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class final Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChapterTranslation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->awaitImage(Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "eu.kanade.tachiyomi.ui.reader.translation.ChapterTranslation$awaitImage$2"
    f = "ChapterTranslation.kt"
    i = {}
    l = {
        0x7e
    }
    m = "invokeSuspend"
    n = {}
    nl = {
        -0x1
    }
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $loader:Leu/kanade/tachiyomi/ui/reader/loader/PageLoader;

.field final synthetic $page:Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

.field label:I


# direct methods
.method constructor <init>(Leu/kanade/tachiyomi/ui/reader/loader/PageLoader;Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/kanade/tachiyomi/ui/reader/loader/PageLoader;",
            "Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;->$loader:Leu/kanade/tachiyomi/ui/reader/loader/PageLoader;

    iput-object p2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;->$page:Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;

    iget-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;->$loader:Leu/kanade/tachiyomi/ui/reader/loader/PageLoader;

    iget-object v2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;->$page:Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    invoke-direct {v0, v1, v2, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;-><init>(Leu/kanade/tachiyomi/ui/reader/loader/PageLoader;Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 126
    iget v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p1

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;->$loader:Leu/kanade/tachiyomi/ui/reader/loader/PageLoader;

    check-cast v1, Leu/kanade/tachiyomi/ui/reader/loader/HttpPageLoader;

    iget-object v2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;->$page:Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x1

    iput v4, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;->label:I

    invoke-virtual {v1, v2, v3}, Leu/kanade/tachiyomi/ui/reader/loader/HttpPageLoader;->awaitTranslationImage(Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

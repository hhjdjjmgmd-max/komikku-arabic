.class final Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$downloaded$1;
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
    c = "eu.kanade.tachiyomi.ui.reader.translation.ChapterTranslation$translate$2$1$downloaded$1"
    f = "ChapterTranslation.kt"
    i = {}
    l = {
        0x50
    }
    m = "invokeSuspend"
    n = {}
    nl = {
        0x51
    }
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $renderer:Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

.field label:I


# direct methods
.method constructor <init>(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$downloaded$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$downloaded$1;->$renderer:Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$downloaded$1;

    iget-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$downloaded$1;->$renderer:Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

    invoke-direct {v0, v1, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$downloaded$1;-><init>(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$downloaded$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$downloaded$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$downloaded$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$downloaded$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 79
    iget v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$downloaded$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    iget-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$downloaded$1;->$renderer:Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$downloaded$1;->label:I

    invoke-virtual {v1, v3}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->downloadModels(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 79
    return-object v0

    .line 81
    :cond_0
    :goto_0
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

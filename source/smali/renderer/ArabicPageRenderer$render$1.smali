.class final Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ArabicPageRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->render(Lkotlin/jvm/functions/Function0;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x230
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "eu.kanade.tachiyomi.ui.reader.translation.ArabicPageRenderer"
    f = "ArabicPageRenderer.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x5d,
        0x60
    }
    m = "render"
    n = {
        "openImage",
        "output",
        "bounds",
        "sample",
        "options",
        "bitmap",
        "openImage",
        "output",
        "bounds",
        "sample",
        "options",
        "bitmap",
        "blocks",
        "$this$mapNotNull\\7",
        "$this$mapNotNullTo\\8",
        "destination\\8",
        "$this$forEach\\9",
        "element\\9",
        "element\\10",
        "block\\12",
        "$this$getOrPut\\14",
        "key\\14",
        "value\\14"
    }
    nl = {
        0x5e,
        0x60
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "L$9",
        "L$10",
        "L$12",
        "L$13",
        "L$14",
        "L$15",
        "L$16",
        "L$17"
    }
    v = 0x2
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$12:Ljava/lang/Object;

.field L$13:Ljava/lang/Object;

.field L$14:Ljava/lang/Object;

.field L$15:Ljava/lang/Object;

.field L$16:Ljava/lang/Object;

.field L$17:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;


# direct methods
.method constructor <init>(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->this$0:Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->result:Ljava/lang/Object;

    iget v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->label:I

    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->this$0:Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-virtual {v0, v1, v1, v2}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->render(Lkotlin/jvm/functions/Function0;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.class final Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ArabicPageRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->scan(Landroid/graphics/Bitmap;IIIIFLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x0,
        0x0,
        0x0
    }
    l = {
        0x9b
    }
    m = "scan"
    n = {
        "bitmap",
        "crop",
        "input",
        "x",
        "y",
        "width",
        "height",
        "zoom",
        "scale"
    }
    nl = {
        0x9e
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "I$2",
        "I$3",
        "F$0",
        "F$1"
    }
    v = 0x2
.end annotation


# instance fields
.field F$0:F

.field F$1:F

.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

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
            "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->this$0:Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iput-object p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->result:Ljava/lang/Object;

    iget v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->label:I

    iget-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->this$0:Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

    const/4 v7, 0x0

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->access$scan(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;Landroid/graphics/Bitmap;IIIIFLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

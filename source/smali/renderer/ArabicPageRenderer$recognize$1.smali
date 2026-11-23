.class final Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ArabicPageRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->recognize(Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x7f,
        0x86,
        0x87
    }
    m = "recognize"
    n = {
        "bitmap",
        "$this$recognize_u24lambda_u240\\1",
        "bandHeight\\1",
        "overlap\\1",
        "top\\1",
        "bottom\\1",
        "cropTop\\1",
        "height\\1",
        "bitmap",
        "$this$recognize_u24lambda_u240\\1",
        "primary\\1",
        "bandHeight\\1",
        "overlap\\1",
        "top\\1",
        "bottom\\1",
        "cropTop\\1",
        "height\\1",
        "half\\1",
        "margin\\1",
        "bitmap",
        "$this$recognize_u24lambda_u240\\1",
        "primary\\1",
        "left\\1",
        "bandHeight\\1",
        "overlap\\1",
        "top\\1",
        "bottom\\1",
        "cropTop\\1",
        "height\\1",
        "half\\1",
        "margin\\1"
    }
    nl = {
        0x80,
        0x87,
        0x88
    }
    s = {
        "L$0",
        "L$2",
        "I$0",
        "I$1",
        "I$2",
        "I$5",
        "I$6",
        "I$7",
        "L$0",
        "L$2",
        "L$3",
        "I$0",
        "I$1",
        "I$2",
        "I$5",
        "I$6",
        "I$7",
        "I$8",
        "I$9",
        "L$0",
        "L$2",
        "L$3",
        "L$4",
        "I$0",
        "I$1",
        "I$2",
        "I$5",
        "I$6",
        "I$7",
        "I$8",
        "I$9"
    }
    v = 0x2
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field I$4:I

.field I$5:I

.field I$6:I

.field I$7:I

.field I$8:I

.field I$9:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

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
            "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->this$0:Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->result:Ljava/lang/Object;

    iget v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->label:I

    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->this$0:Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1, v2}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->access$recognize(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

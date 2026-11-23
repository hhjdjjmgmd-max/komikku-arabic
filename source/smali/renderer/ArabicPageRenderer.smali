.class public final Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
.super Ljava/lang/Object;
.source "ArabicPageRenderer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$Companion;,
        Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArabicPageRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArabicPageRenderer.kt\neu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 6 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,250:1\n1#2:251\n1#2:273\n1#2:300\n1801#3,10:252\n2199#3:262\n2200#3:274\n1811#3:275\n777#3:276\n873#3,2:277\n777#3:280\n873#3,2:281\n2091#3,3:283\n1801#3,10:287\n2199#3:297\n2200#3:301\n1811#3:302\n777#3:303\n873#3,2:304\n777#3:306\n873#3,2:307\n777#3:309\n873#3,2:310\n1745#3:312\n1820#3,3:313\n777#3:316\n873#3,2:317\n777#3:319\n873#3,2:320\n777#3:322\n873#3,2:323\n1307#4:263\n1307#4:279\n1307#4:286\n460#5,7:264\n1878#6,2:271\n1878#6,2:298\n*S KotlinDebug\n*F\n+ 1 ArabicPageRenderer.kt\neu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer\n*L\n94#1:273\n160#1:300\n94#1:252,10\n94#1:262\n94#1:274\n94#1:275\n108#1:276\n108#1:277,2\n128#1:280\n128#1:281,2\n139#1:283,3\n160#1:287,10\n160#1:297\n160#1:301\n160#1:302\n187#1:303\n187#1:304,2\n188#1:306\n188#1:307,2\n189#1:309\n189#1:310,2\n212#1:312\n212#1:313,3\n212#1:316\n212#1:317,2\n213#1:319\n213#1:320,2\n214#1:322\n214#1:323,2\n95#1:263\n111#1:279\n146#1:286\n96#1:264,7\n97#1:271,2\n163#1:298,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u0000 62\u00020\u0001:\u000256B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000f\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0011J$\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0017\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010\u0019J\u001c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0082@\u00a2\u0006\u0002\u0010\u001fJD\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020\"2\u0006\u0010&\u001a\u00020\'H\u0082@\u00a2\u0006\u0002\u0010(J\u0018\u0010)\u001a\u00020\u00132\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020+H\u0002J.\u0010-\u001a\u00020\u00102\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u001c2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bH\u0002J\u0008\u00104\u001a\u00020\u0010H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u000c\u00088\u0012\u0008\u00089\u0012\u0004\u0008\u0003\u0010\u0000\u00a8\u00067"
    }
    d2 = {
        "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;",
        "Ljava/io/Closeable;",
        "language",
        "Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;",
        "<init>",
        "(Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;)V",
        "translator",
        "Lcom/google/mlkit/nl/translate/Translator;",
        "recognizer",
        "Lcom/google/mlkit/vision/text/TextRecognizer;",
        "spaces",
        "Lkotlin/text/Regex;",
        "translationCache",
        "",
        "",
        "downloadModels",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "render",
        "",
        "openImage",
        "Lkotlin/Function0;",
        "Ljava/io/InputStream;",
        "output",
        "Ljava/io/File;",
        "(Lkotlin/jvm/functions/Function0;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "recognize",
        "",
        "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "(Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "scan",
        "x",
        "",
        "y",
        "width",
        "height",
        "zoom",
        "",
        "(Landroid/graphics/Bitmap;IIIIFLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "overlapsText",
        "first",
        "Landroid/graphics/RectF;",
        "second",
        "drawTranslation",
        "canvas",
        "Landroid/graphics/Canvas;",
        "background",
        "Landroid/graphics/Paint;",
        "block",
        "neighbors",
        "close",
        "TextBox",
        "Companion",
        "Komikku:app_debug",
        "Landroidx/compose/runtime/internal/StabilityInferred;",
        "parameters"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field private static final Companion:Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$Companion;

.field public static final MAX_PIXELS:I = 0xb71b00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_WIDTH:I = 0xbb8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private english:Z

.field private retryScan:Z

.field private final sourceTag:Ljava/lang/String;

.field private pageTranslations:Ljava/util/Map;

.field private final recognizer:Lcom/google/mlkit/vision/text/TextRecognizer;

.field private final spaces:Lkotlin/text/Regex;

.field private final translationCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final translator:Lcom/google/mlkit/nl/translate/Translator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->Companion:Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$Companion;

    const/16 v0, 0x8

    sput v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->$stable:I

    return-void
.end method

.method public constructor <init>(Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;)V
    .locals 2
    .param p1, "language"    # Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->sourceTag:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->english:Z

    .line 57
    nop

    .line 58
    new-instance v0, Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;

    invoke-direct {v0}, Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;-><init>()V

    .line 59
    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;->setSourceLanguage(Ljava/lang/String;)Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;

    move-result-object v0

    .line 60
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;->setTargetLanguage(Ljava/lang/String;)Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;->build()Lcom/google/mlkit/nl/translate/TranslatorOptions;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/google/mlkit/nl/translate/Translation;->getClient(Lcom/google/mlkit/nl/translate/TranslatorOptions;)Lcom/google/mlkit/nl/translate/Translator;

    move-result-object v0

    const-string v1, "getClient(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->translator:Lcom/google/mlkit/nl/translate/Translator;

    .line 63
    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->getRecognizer()Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mlkit/vision/text/TextRecognition;->getClient(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)Lcom/google/mlkit/vision/text/TextRecognizer;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->recognizer:Lcom/google/mlkit/vision/text/TextRecognizer;

    .line 64
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\s+"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->spaces:Lkotlin/text/Regex;

    .line 65
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->translationCache:Ljava/util/Map;

    .line 56
    return-void
.end method

.method public static final synthetic access$getRecognizer$p(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;)Lcom/google/mlkit/vision/text/TextRecognizer;
    .locals 1
    .param p0, "$this"    # Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

    .line 56
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->recognizer:Lcom/google/mlkit/vision/text/TextRecognizer;

    return-object v0
.end method

.method public static final synthetic access$recognize(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 56
    invoke-direct {p0, p1, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->recognize(Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$scan(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;Landroid/graphics/Bitmap;IIIIFLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "zoom"    # F
    .param p7, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 56
    invoke-direct/range {p0 .. p7}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->scan(Landroid/graphics/Bitmap;IIIIFLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final overlapsText(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 5
    .param p1, "first"    # Landroid/graphics/RectF;
    .param p2, "second"    # Landroid/graphics/RectF;

    .line 176
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 177
    .local v0, "intersection":Landroid/graphics/RectF;
    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v1, v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 179
    .local v1, "smaller":F
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    const v4, 0x3f051eb8    # 0.52f

    mul-float/2addr v4, v1

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private final recognize(Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 31
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;

    iget v2, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;-><init>(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 120
    iget v5, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->label:I

    packed-switch v5, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local p0    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local p0    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    :pswitch_0
    const/4 v5, 0x0

    .local v5, "$i$a$-buildList-ArabicPageRenderer$recognize$2\\1\\120\\0":I
    iget v8, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$9:I

    .local v8, "margin\\1":I
    iget v9, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$8:I

    .local v9, "half\\1":I
    iget v10, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$7:I

    .local v10, "height\\1":I
    iget v11, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$6:I

    .local v11, "cropTop\\1":I
    iget v12, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$5:I

    .local v12, "bottom\\1":I
    iget v13, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$4:I

    iget v14, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$3:I

    iget v15, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$2:I

    .local v15, "top\\1":I
    iget v6, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$1:I

    .local v6, "overlap\\1":I
    iget v7, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$0:I

    .local v7, "bandHeight\\1":I
    iget-object v0, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object/from16 v16, v0

    .local v16, "left\\1":Ljava/util/List;
    iget-object v0, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object/from16 v17, v0

    .local v17, "primary\\1":Ljava/util/List;
    iget-object v0, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object/from16 v18, v0

    .local v18, "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    iget-object v0, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object/from16 v19, v0

    iget-object v0, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 p1, v18

    move/from16 v18, v9

    move-object/from16 v9, p1

    move-object/from16 v22, p2

    move-object/from16 p2, v0

    move v0, v15

    move-object/from16 p1, v16

    move v15, v14

    move v14, v7

    move-object v7, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_7

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "$i$a$-buildList-ArabicPageRenderer$recognize$2\\1\\120\\0":I
    .end local v6    # "overlap\\1":I
    .end local v7    # "bandHeight\\1":I
    .end local v8    # "margin\\1":I
    .end local v9    # "half\\1":I
    .end local v10    # "height\\1":I
    .end local v11    # "cropTop\\1":I
    .end local v12    # "bottom\\1":I
    .end local v15    # "top\\1":I
    .end local v16    # "left\\1":Ljava/util/List;
    .end local v17    # "primary\\1":Ljava/util/List;
    .end local v18    # "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "$i$a$-buildList-ArabicPageRenderer$recognize$2\\1\\120\\0":I
    iget v5, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$9:I

    .local v5, "margin\\1":I
    iget v6, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$8:I

    .local v6, "half\\1":I
    iget v7, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$7:I

    .local v7, "height\\1":I
    iget v8, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$6:I

    .local v8, "cropTop\\1":I
    iget v9, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$5:I

    .local v9, "bottom\\1":I
    iget v10, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$4:I

    iget v11, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$3:I

    iget v12, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$2:I

    .local v12, "top\\1":I
    iget v13, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$1:I

    .local v13, "overlap\\1":I
    iget v14, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$0:I

    .local v14, "bandHeight\\1":I
    iget-object v15, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$3:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    move/from16 v16, v0

    .end local v0    # "$i$a$-buildList-ArabicPageRenderer$recognize$2\\1\\120\\0":I
    .local v15, "primary\\1":Ljava/util/List;
    .local v16, "$i$a$-buildList-ArabicPageRenderer$recognize$2\\1\\120\\0":I
    iget-object v0, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object/from16 v17, v0

    .local v17, "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    iget-object v0, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object/from16 v18, v0

    iget-object v0, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 p1, v17

    move-object/from16 v17, v2

    move v2, v6

    move v6, v10

    move v10, v11

    move-object v11, v4

    move v4, v9

    move-object/from16 v9, p1

    move-object/from16 v22, p2

    move-object/from16 p1, v3

    move-object/from16 p2, v15

    move v15, v12

    move v12, v5

    move v5, v7

    move-object v7, v1

    move-object v1, v0

    move v0, v8

    move-object/from16 v8, v18

    goto/16 :goto_6

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "margin\\1":I
    .end local v6    # "half\\1":I
    .end local v7    # "height\\1":I
    .end local v8    # "cropTop\\1":I
    .end local v9    # "bottom\\1":I
    .end local v12    # "top\\1":I
    .end local v13    # "overlap\\1":I
    .end local v14    # "bandHeight\\1":I
    .end local v15    # "primary\\1":Ljava/util/List;
    .end local v16    # "$i$a$-buildList-ArabicPageRenderer$recognize$2\\1\\120\\0":I
    .end local v17    # "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_2
    const/4 v0, 0x0

    .local v0, "$i$a$-buildList-ArabicPageRenderer$recognize$2\\1\\120\\0":I
    iget v5, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$7:I

    .local v5, "height\\1":I
    iget v6, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$6:I

    .local v6, "cropTop\\1":I
    iget v7, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$5:I

    .local v7, "bottom\\1":I
    iget v8, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$4:I

    iget v9, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$3:I

    iget v10, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$2:I

    .local v10, "top\\1":I
    iget v11, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$1:I

    .local v11, "overlap\\1":I
    iget v12, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$0:I

    .local v12, "bandHeight\\1":I
    iget-object v13, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$2:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    .local v13, "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    iget-object v14, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    iget-object v15, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$0:Ljava/lang/Object;

    check-cast v15, Landroid/graphics/Bitmap;

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .local v15, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move-object v2, v14

    move-object/from16 p1, v15

    move-object v14, v1

    move v1, v7

    move v15, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v11, v12

    move v12, v5

    move v10, v6

    move v6, v0

    move-object v5, v4

    move-object/from16 v0, p2

    move-object v4, v3

    goto/16 :goto_2

    .end local v0    # "$i$a$-buildList-ArabicPageRenderer$recognize$2\\1\\120\\0":I
    .end local v5    # "height\\1":I
    .end local v6    # "cropTop\\1":I
    .end local v7    # "bottom\\1":I
    .end local v10    # "top\\1":I
    .end local v11    # "overlap\\1":I
    .end local v12    # "bandHeight\\1":I
    .end local v13    # "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    .local v5, "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    const/4 v6, 0x0

    .line 121
    .local v6, "$i$a$-buildList-ArabicPageRenderer$recognize$2\\1\\120\\0":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3fa00000    # 1.25f

    mul-float/2addr v7, v8

    invoke-static {v7}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    const/16 v8, 0x208

    const/16 v9, 0x41a

    invoke-static {v7, v8, v9}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v7

    .line 122
    .local v7, "bandHeight\\1":I
    div-int/lit8 v8, v7, 0x6

    .line 123
    .local v8, "overlap\\1":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v9

    check-cast v9, Lkotlin/ranges/IntProgression;

    invoke-static {v9, v7}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v9

    invoke-virtual {v9}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v10

    .restart local v10    # "top\\1":I
    invoke-virtual {v9}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v11

    invoke-virtual {v9}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v9

    if-lez v9, :cond_1

    if-le v10, v11, :cond_2

    :cond_1
    if-gez v9, :cond_12

    if-gt v11, v10, :cond_12

    .line 124
    :cond_2
    move v12, v11

    move v11, v8

    move v8, v9

    move v9, v12

    move-object v14, v0

    move-object/from16 v16, v2

    move-object v13, v5

    move v12, v7

    move-object/from16 v0, p1

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object/from16 v1, p2

    .end local v5    # "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    .end local v7    # "bandHeight\\1":I
    .end local v8    # "overlap\\1":I
    .end local p0    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v1, "$completion":Lkotlin/coroutines/Continuation;
    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    .local v4, "$result":Ljava/lang/Object;
    .restart local v11    # "overlap\\1":I
    .restart local v12    # "bandHeight\\1":I
    .restart local v13    # "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    .local v16, "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int v15, v10, v12

    invoke-static {v7, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 125
    .local v7, "bottom\\1":I
    sub-int v15, v10, v11

    move-object/from16 p1, v1

    const/4 v1, 0x0

    .end local v1    # "$completion":Lkotlin/coroutines/Continuation;
    .local p1, "$completion":Lkotlin/coroutines/Continuation;
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 126
    .local v15, "cropTop\\1":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .restart local p0    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    add-int v2, v7, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v1, v15

    .line 127
    .local v1, "height\\1":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    iput-object v0, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$1:Ljava/lang/Object;

    iput-object v13, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$3:Ljava/lang/Object;

    iput-object v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$4:Ljava/lang/Object;

    iput v12, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$0:I

    iput v11, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$1:I

    iput v10, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$2:I

    iput v9, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$3:I

    iput v8, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$4:I

    iput v7, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$5:I

    iput v15, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$6:I

    iput v1, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$7:I

    const/4 v2, 0x1

    iput v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->label:I

    const/16 v18, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v17, v0

    move/from16 v21, v1

    move-object/from16 v23, v3

    move/from16 v19, v15

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "height\\1":I
    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v15    # "cropTop\\1":I
    .local v17, "bitmap":Landroid/graphics/Bitmap;
    .local v19, "cropTop\\1":I
    .local v21, "height\\1":I
    .local v23, "$continuation":Lkotlin/coroutines/Continuation;
    invoke-direct/range {v16 .. v23}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->scan(Landroid/graphics/Bitmap;IIIIFLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_3

    .line 120
    .end local p0    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    return-object v5

    .line 127
    :cond_3
    move-object/from16 v0, p1

    move v1, v7

    move v15, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v11, v12

    move-object v2, v14

    move-object/from16 p1, v17

    move/from16 v10, v19

    move/from16 v12, v21

    move-object/from16 v14, v23

    .line 120
    .end local v7    # "bottom\\1":I
    .end local v17    # "bitmap":Landroid/graphics/Bitmap;
    .end local v19    # "cropTop\\1":I
    .end local v21    # "height\\1":I
    .end local v23    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v0, "$completion":Lkotlin/coroutines/Continuation;
    .local v1, "bottom\\1":I
    .local v8, "top\\1":I
    .local v9, "overlap\\1":I
    .local v10, "cropTop\\1":I
    .local v11, "bandHeight\\1":I
    .local v12, "height\\1":I
    .local v14, "$continuation":Lkotlin/coroutines/Continuation;
    .local p1, "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    check-cast v3, Ljava/util/List;

    .line 128
    .local v3, "primary\\1":Ljava/util/List;
    move-object/from16 v17, v3

    check-cast v17, Ljava/lang/Iterable;

    .local v17, "$this$filter\\2":Ljava/lang/Iterable;
    const/16 v18, 0x0

    .line 280
    .local v18, "$i$f$filter\\2\\128":I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    check-cast v19, Ljava/util/Collection;

    .local v19, "destination\\3":Ljava/util/Collection;
    move-object/from16 v20, v17

    .local v20, "$this$filterTo\\3":Ljava/lang/Iterable;
    move-object/from16 p2, v19

    .end local v19    # "destination\\3":Ljava/util/Collection;
    .local p2, "destination\\3":Ljava/util/Collection;
    const/16 v19, 0x0

    .line 281
    .local v19, "$i$f$filterTo\\3\\280":I
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v22, v0

    .end local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .local v22, "$completion":Lkotlin/coroutines/Continuation;
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element\\3":Ljava/lang/Object;
    move-object/from16 v23, v0

    check-cast v23, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    .local v23, "it\\4":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    const/16 v24, 0x0

    .line 128
    .local v24, "$i$a$-filter-ArabicPageRenderer$recognize$2$1\\4\\281\\1":I
    invoke-virtual/range {v23 .. v23}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getBounds()Landroid/graphics/RectF;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->centerY()F

    move-result v25

    move-object/from16 v26, v3

    .end local v3    # "primary\\1":Ljava/util/List;
    .local v26, "primary\\1":Ljava/util/List;
    int-to-float v3, v8

    cmpl-float v3, v25, v3

    if-ltz v3, :cond_4

    invoke-virtual/range {v23 .. v23}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move/from16 v25, v3

    int-to-float v3, v1

    cmpg-float v3, v25, v3

    if-gez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 281
    .end local v23    # "it\\4":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    .end local v24    # "$i$a$-filter-ArabicPageRenderer$recognize$2$1\\4\\281\\1":I
    :goto_4
    if-eqz v3, :cond_5

    move-object/from16 v3, p2

    .end local p2    # "destination\\3":Ljava/util/Collection;
    .local v3, "destination\\3":Ljava/util/Collection;
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .end local v3    # "destination\\3":Ljava/util/Collection;
    .restart local p2    # "destination\\3":Ljava/util/Collection;
    :cond_5
    move-object/from16 v3, p2

    .end local p2    # "destination\\3":Ljava/util/Collection;
    .restart local v3    # "destination\\3":Ljava/util/Collection;
    :goto_5
    move-object/from16 v0, v22

    move-object/from16 v3, v26

    goto :goto_3

    .line 282
    .end local v22    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v26    # "primary\\1":Ljava/util/List;
    .local v0, "$completion":Lkotlin/coroutines/Continuation;
    .local v3, "primary\\1":Ljava/util/List;
    .restart local p2    # "destination\\3":Ljava/util/Collection;
    :cond_6
    move-object/from16 v22, v0

    move-object/from16 v26, v3

    move-object/from16 v3, p2

    .end local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v3    # "primary\\1":Ljava/util/List;
    .end local v19    # "$i$f$filterTo\\3\\280":I
    .end local v20    # "$this$filterTo\\3":Ljava/lang/Iterable;
    .end local p2    # "destination\\3":Ljava/util/Collection;
    .restart local v22    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v26    # "primary\\1":Ljava/util/List;
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 280
    nop

    .end local v17    # "$this$filter\\2":Ljava/lang/Iterable;
    .end local v18    # "$i$f$filter\\2\\128":I
    check-cast v0, Ljava/util/Collection;

    .line 128
    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v3, 0x2

    div-int/2addr v0, v3

    .line 132
    .local v0, "half\\1":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move-object/from16 p2, v4

    .end local v4    # "$result":Ljava/lang/Object;
    .local p2, "$result":Ljava/lang/Object;
    div-int/lit8 v4, v17, 0x8

    .line 133
    .local v4, "margin\\1":I
    if-lt v0, v3, :cond_10

    .line 134
    add-int v17, v0, v4

    move-object/from16 v3, p1

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    iput-object v3, v14, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$0:Ljava/lang/Object;

    iput-object v2, v14, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$1:Ljava/lang/Object;

    iput-object v13, v14, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$2:Ljava/lang/Object;

    move-object/from16 v19, v2

    invoke-static/range {v26 .. v26}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v14, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$3:Ljava/lang/Object;

    iput v11, v14, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$0:I

    iput v9, v14, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$1:I

    iput v8, v14, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$2:I

    iput v7, v14, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$3:I

    iput v15, v14, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$4:I

    iput v1, v14, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$5:I

    iput v10, v14, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$6:I

    iput v12, v14, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$7:I

    iput v0, v14, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$8:I

    iput v4, v14, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$9:I

    const/4 v2, 0x2

    iput v2, v14, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->label:I

    move v2, v9

    .end local v9    # "overlap\\1":I
    .local v2, "overlap\\1":I
    const/4 v9, 0x0

    move-object/from16 v18, v13

    .end local v13    # "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    .local v18, "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    const/high16 v13, 0x40000000    # 2.0f

    move-object/from16 v30, v16

    move/from16 v16, v2

    move v2, v8

    move-object v8, v3

    move v3, v11

    move/from16 v11, v17

    move/from16 v17, v7

    move-object/from16 v7, v30

    .end local v11    # "bandHeight\\1":I
    .local v2, "top\\1":I
    .local v3, "bandHeight\\1":I
    .local v7, "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    .local v16, "overlap\\1":I
    invoke-direct/range {v7 .. v14}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->scan(Landroid/graphics/Bitmap;IIIIFLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_7

    .line 120
    return-object v5

    .line 134
    :cond_7
    move-object/from16 p1, p2

    move-object v11, v5

    move v5, v12

    move/from16 v13, v16

    move-object/from16 p2, v26

    move v12, v4

    move/from16 v16, v6

    move v6, v15

    move v4, v1

    move v15, v2

    move-object v1, v8

    move-object/from16 v8, v19

    move v2, v0

    move v0, v10

    move/from16 v10, v17

    move-object/from16 v17, v7

    move-object v7, v14

    move v14, v3

    move-object v3, v9

    move-object/from16 v9, v18

    .line 120
    .end local v3    # "bandHeight\\1":I
    .end local v6    # "$i$a$-buildList-ArabicPageRenderer$recognize$2\\1\\120\\0":I
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "cropTop\\1":I
    .end local v18    # "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    .end local v26    # "primary\\1":Ljava/util/List;
    .local v0, "cropTop\\1":I
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    .local v2, "half\\1":I
    .local v4, "bottom\\1":I
    .local v5, "height\\1":I
    .local v7, "$continuation":Lkotlin/coroutines/Continuation;
    .local v9, "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    .local v12, "margin\\1":I
    .local v13, "overlap\\1":I
    .local v14, "bandHeight\\1":I
    .local v15, "top\\1":I
    .local v16, "$i$a$-buildList-ArabicPageRenderer$recognize$2\\1\\120\\0":I
    .local v17, "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local p1, "$result":Ljava/lang/Object;
    .local p2, "primary\\1":Ljava/util/List;
    :goto_6
    check-cast v3, Ljava/util/List;

    .line 135
    .local v3, "left\\1":Ljava/util/List;
    sub-int v18, v2, v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    sub-int v19, v19, v2

    add-int v19, v19, v12

    iput-object v1, v7, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$0:Ljava/lang/Object;

    iput-object v8, v7, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$1:Ljava/lang/Object;

    iput-object v9, v7, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$2:Ljava/lang/Object;

    move-object/from16 v20, v1

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v20, "bitmap":Landroid/graphics/Bitmap;
    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$3:Ljava/lang/Object;

    iput-object v3, v7, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->L$4:Ljava/lang/Object;

    iput v14, v7, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$0:I

    iput v13, v7, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$1:I

    iput v15, v7, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$2:I

    iput v10, v7, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$3:I

    iput v6, v7, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$4:I

    iput v4, v7, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$5:I

    iput v0, v7, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$6:I

    iput v5, v7, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$7:I

    iput v2, v7, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$8:I

    iput v12, v7, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->I$9:I

    const/4 v1, 0x3

    iput v1, v7, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$recognize$1;->label:I

    move v1, v6

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v30, v3

    move v3, v0

    move-object/from16 v0, v17

    move-object/from16 v17, v30

    move/from16 v30, v19

    move/from16 v19, v1

    move-object/from16 v1, v20

    move/from16 v20, v4

    move/from16 v4, v30

    move/from16 v30, v18

    move/from16 v18, v2

    move/from16 v2, v30

    .end local v2    # "half\\1":I
    .end local v4    # "bottom\\1":I
    .local v0, "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v3, "cropTop\\1":I
    .local v17, "left\\1":Ljava/util/List;
    .local v18, "half\\1":I
    .local v20, "bottom\\1":I
    invoke-direct/range {v0 .. v7}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->scan(Landroid/graphics/Bitmap;IIIIFLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v11, :cond_8

    .line 120
    return-object v11

    .line 135
    :cond_8
    move-object v4, v11

    move v6, v13

    move/from16 v13, v19

    move v11, v3

    move-object/from16 v19, v8

    move v8, v12

    move/from16 v12, v20

    move-object v3, v2

    move-object/from16 v2, p1

    move-object/from16 p1, v17

    move-object/from16 v17, p2

    move-object/from16 p2, v1

    move-object v1, v0

    move v0, v15

    move v15, v10

    move v10, v5

    move/from16 v5, v16

    .line 120
    .end local v3    # "cropTop\\1":I
    .end local v13    # "overlap\\1":I
    .end local v15    # "top\\1":I
    .end local v16    # "$i$a$-buildList-ArabicPageRenderer$recognize$2\\1\\120\\0":I
    .end local v20    # "bottom\\1":I
    .local v0, "top\\1":I
    .local v1, "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local v2, "$result":Ljava/lang/Object;
    .local v5, "$i$a$-buildList-ArabicPageRenderer$recognize$2\\1\\120\\0":I
    .local v6, "overlap\\1":I
    .local v8, "margin\\1":I
    .local v10, "height\\1":I
    .local v11, "cropTop\\1":I
    .local v12, "bottom\\1":I
    .local v17, "primary\\1":Ljava/util/List;
    .local p1, "left\\1":Ljava/util/List;
    .local p2, "bitmap":Landroid/graphics/Bitmap;
    :goto_7
    check-cast v3, Ljava/util/List;

    .line 136
    .local v3, "right\\1":Ljava/util/List;
    move-object/from16 v16, v2

    .end local v2    # "$result":Ljava/lang/Object;
    .local v16, "$result":Ljava/lang/Object;
    move-object/from16 v2, p1

    check-cast v2, Ljava/util/Collection;

    move-object/from16 v20, v3

    .end local v3    # "right\\1":Ljava/util/List;
    .local v20, "right\\1":Ljava/util/List;
    move-object/from16 v3, v20

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    .line 137
    .local v3, "block\\1":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    move-object/from16 v21, v2

    invoke-virtual {v3}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 138
    .local v2, "box\\1":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v23

    move-object/from16 v24, v4

    int-to-float v4, v0

    cmpg-float v4, v23, v4

    if-ltz v4, :cond_e

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    move/from16 v23, v0

    .end local v0    # "top\\1":I
    .local v23, "top\\1":I
    int-to-float v0, v12

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_9

    move-object/from16 v2, v21

    move/from16 v0, v23

    goto :goto_b

    .line 139
    :cond_9
    move-object v0, v9

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any\\5":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 283
    .local v4, "$i$f$any\\5\\139":I
    move/from16 v25, v4

    .end local v4    # "$i$f$any\\5\\139":I
    .local v25, "$i$f$any\\5\\139":I
    instance-of v4, v0, Ljava/util/Collection;

    if-eqz v4, :cond_a

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v0, 0x0

    goto :goto_a

    .line 284
    :cond_a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    .local v26, "element\\5":Ljava/lang/Object;
    move-object/from16 v27, v26

    check-cast v27, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    .local v27, "it\\6":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    const/16 v28, 0x0

    .line 139
    .local v28, "$i$a$-any-ArabicPageRenderer$recognize$2$2\\6\\284\\1":I
    move-object/from16 v29, v0

    .end local v0    # "$this$any\\5":Ljava/lang/Iterable;
    .local v29, "$this$any\\5":Ljava/lang/Iterable;
    invoke-virtual/range {v27 .. v27}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->overlapsText(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    .line 284
    .end local v27    # "it\\6":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    .end local v28    # "$i$a$-any-ArabicPageRenderer$recognize$2$2\\6\\284\\1":I
    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_a

    :cond_b
    move-object/from16 v0, v29

    goto :goto_9

    .line 285
    .end local v26    # "element\\5":Ljava/lang/Object;
    .end local v29    # "$this$any\\5":Ljava/lang/Iterable;
    .restart local v0    # "$this$any\\5":Ljava/lang/Iterable;
    :cond_c
    move-object/from16 v29, v0

    .end local v0    # "$this$any\\5":Ljava/lang/Iterable;
    .restart local v29    # "$this$any\\5":Ljava/lang/Iterable;
    const/4 v0, 0x0

    .line 139
    .end local v25    # "$i$f$any\\5\\139":I
    .end local v29    # "$this$any\\5":Ljava/lang/Iterable;
    :goto_a
    if-nez v0, :cond_d

    .line 140
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v21

    move/from16 v0, v23

    move-object/from16 v4, v24

    goto :goto_8

    .line 139
    :cond_d
    move-object/from16 v2, v21

    move/from16 v0, v23

    move-object/from16 v4, v24

    goto :goto_8

    .line 138
    .end local v23    # "top\\1":I
    .local v0, "top\\1":I
    :cond_e
    move/from16 v23, v0

    .end local v0    # "top\\1":I
    .restart local v23    # "top\\1":I
    move-object/from16 v2, v21

    :goto_b
    move-object/from16 v4, v24

    goto/16 :goto_8

    .line 136
    .end local v2    # "box\\1":Landroid/graphics/RectF;
    .end local v3    # "block\\1":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    .end local v23    # "top\\1":I
    .restart local v0    # "top\\1":I
    :cond_f
    move/from16 v23, v0

    move-object/from16 v24, v4

    .end local v0    # "top\\1":I
    .restart local v23    # "top\\1":I
    move-object/from16 v0, p2

    move v11, v6

    move-object v3, v7

    move-object/from16 v18, v9

    move v12, v14

    move v9, v15

    move-object/from16 v4, v16

    move/from16 v8, v23

    move-object/from16 v16, v1

    move v6, v5

    move-object/from16 v5, v24

    move-object/from16 v14, v19

    move-object/from16 v1, v22

    goto :goto_c

    .line 133
    .end local v5    # "$i$a$-buildList-ArabicPageRenderer$recognize$2\\1\\120\\0":I
    .end local v7    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v17    # "primary\\1":Ljava/util/List;
    .end local v18    # "half\\1":I
    .end local v20    # "right\\1":Ljava/util/List;
    .end local v23    # "top\\1":I
    .local v0, "half\\1":I
    .local v1, "bottom\\1":I
    .local v4, "margin\\1":I
    .local v6, "$i$a$-buildList-ArabicPageRenderer$recognize$2\\1\\120\\0":I
    .local v8, "top\\1":I
    .local v9, "overlap\\1":I
    .local v10, "cropTop\\1":I
    .local v11, "bandHeight\\1":I
    .local v12, "height\\1":I
    .local v13, "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    .local v14, "$continuation":Lkotlin/coroutines/Continuation;
    .local v16, "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local v26, "primary\\1":Ljava/util/List;
    .local p1, "bitmap":Landroid/graphics/Bitmap;
    .local p2, "$result":Ljava/lang/Object;
    :cond_10
    move-object/from16 v19, v2

    move/from16 v17, v7

    move v2, v8

    move v3, v11

    move-object/from16 v18, v13

    move-object/from16 v7, v16

    move-object/from16 v8, p1

    move/from16 v16, v9

    .end local v9    # "overlap\\1":I
    .end local v11    # "bandHeight\\1":I
    .end local v13    # "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .local v2, "top\\1":I
    .local v3, "bandHeight\\1":I
    .local v7, "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    .local v16, "overlap\\1":I
    .local v18, "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    move-object/from16 v4, p2

    move v12, v3

    move-object v0, v8

    move-object v3, v14

    move v13, v15

    move/from16 v11, v16

    move/from16 v9, v17

    move v8, v2

    move-object/from16 v16, v7

    move-object/from16 v14, v19

    move-object/from16 v1, v22

    .line 123
    .end local v2    # "top\\1":I
    .end local v7    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local v10    # "cropTop\\1":I
    .end local v14    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v22    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v26    # "primary\\1":Ljava/util/List;
    .end local p2    # "$result":Ljava/lang/Object;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v1, "$completion":Lkotlin/coroutines/Continuation;
    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    .local v4, "$result":Ljava/lang/Object;
    .local v8, "top\\1":I
    .local v11, "overlap\\1":I
    .local v12, "bandHeight\\1":I
    .local v16, "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    :goto_c
    if-eq v8, v9, :cond_11

    add-int v10, v8, v13

    move-object/from16 v2, p0

    move v8, v13

    move-object/from16 v13, v18

    .end local v8    # "top\\1":I
    .local v10, "top\\1":I
    goto/16 :goto_1

    .end local v10    # "top\\1":I
    .restart local v8    # "top\\1":I
    :cond_11
    move v8, v11

    move v7, v12

    move-object/from16 v5, v18

    goto :goto_d

    .line 143
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v11    # "overlap\\1":I
    .end local v12    # "bandHeight\\1":I
    .end local v16    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local v18    # "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v3, "$result":Ljava/lang/Object;
    .local v5, "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    .local v7, "bandHeight\\1":I
    .local v8, "overlap\\1":I
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    .local p2, "$completion":Lkotlin/coroutines/Continuation;
    :cond_12
    move-object/from16 v16, p0

    move-object v14, v0

    move-object v4, v3

    move-object/from16 v0, p1

    move-object v3, v1

    move-object/from16 v1, p2

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "$completion":Lkotlin/coroutines/Continuation;
    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v16    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    :goto_d
    nop

    .line 120
    .end local v5    # "$this$recognize_u24lambda_u240\\1":Ljava/util/List;
    .end local v6    # "$i$a$-buildList-ArabicPageRenderer$recognize$2\\1\\120\\0":I
    .end local v7    # "bandHeight\\1":I
    .end local v8    # "overlap\\1":I
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 143
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final scan(Landroid/graphics/Bitmap;IIIIFLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 32
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "zoom"    # F
    .param p7, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "IIIIF",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    instance-of v0, v5, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;

    if-eqz v0, :cond_0

    move-object v0, v5

    check-cast v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;

    iget v6, v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->label:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    iget v6, v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->label:I

    sub-int/2addr v6, v7

    iput v6, v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;

    invoke-direct {v0, v1, v5}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;-><init>(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    .local v6, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v7, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->result:Ljava/lang/Object;

    .local v7, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 145
    iget v8, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->label:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v8, :pswitch_data_0

    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v7    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v7    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v8, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->F$1:F

    .local v8, "scale":F
    iget v4, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->F$0:F

    .end local p6    # "zoom":F
    .local v4, "zoom":F
    iget v3, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->I$3:I

    .end local p5    # "height":I
    .local v3, "height":I
    iget v2, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->I$2:I

    .end local p4    # "width":I
    .local v2, "width":I
    iget v11, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->I$1:I

    .end local p3    # "y":I
    .local v11, "y":I
    iget v12, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->I$0:I

    .end local p2    # "x":I
    .local v12, "x":I
    iget-object v0, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->L$2:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/graphics/Bitmap;

    .local v13, "input":Landroid/graphics/Bitmap;
    iget-object v0, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->L$1:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/graphics/Bitmap;

    .local v14, "crop":Landroid/graphics/Bitmap;
    iget-object v0, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->L$0:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Landroid/graphics/Bitmap;

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .local v15, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    move v3, v2

    move v2, v10

    move v10, v11

    move v11, v8

    move v8, v4

    move v4, v0

    move-object v0, v7

    move v9, v12

    goto/16 :goto_2

    .line 170
    :catchall_0
    move-exception v0

    move/from16 v28, v2

    move/from16 v27, v3

    move-object/from16 v26, v6

    move-object/from16 v29, v7

    move v10, v11

    move v9, v12

    move v11, v8

    move v8, v4

    goto/16 :goto_8

    .line 145
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "zoom":F
    .end local v8    # "scale":F
    .end local v11    # "y":I
    .end local v12    # "x":I
    .end local v13    # "input":Landroid/graphics/Bitmap;
    .end local v14    # "crop":Landroid/graphics/Bitmap;
    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p2    # "x":I
    .restart local p3    # "y":I
    .restart local p4    # "width":I
    .restart local p5    # "height":I
    .restart local p6    # "zoom":F
    :pswitch_1
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 146
    const/4 v8, 0x0

    .line 286
    .local v8, "$i$f$currentCoroutineContext\\1\\146":I
    invoke-interface {v6}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v11

    .line 146
    .end local v8    # "$i$f$currentCoroutineContext\\1\\146":I
    invoke-static {v11}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 147
    invoke-static/range {p1 .. p5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v11, "createBitmap(...)"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v8

    .line 148
    .restart local v14    # "crop":Landroid/graphics/Bitmap;
    int-to-float v8, v2

    int-to-float v11, v3

    mul-float/2addr v8, v11

    const v11, 0x4a742400    # 4000000.0f

    div-float/2addr v11, v8

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v8, v11

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 149
    .local v8, "scale":F
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v8, v11

    if-lez v11, :cond_1

    .line 150
    int-to-float v11, v2

    mul-float/2addr v11, v8

    invoke-static {v11}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v11

    int-to-float v12, v3

    mul-float/2addr v12, v8

    invoke-static {v12}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v12

    invoke-static {v14, v11, v12, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_1

    .line 152
    :cond_1
    move-object v11, v14

    .line 149
    :goto_1
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v11

    .line 154
    .restart local v13    # "input":Landroid/graphics/Bitmap;
    nop

    .line 155
    :try_start_1
    sget-object v11, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    check-cast v11, Lkotlin/coroutines/CoroutineContext;

    new-instance v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$result$1;

    invoke-direct {v12, v1, v13, v9}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$result$1;-><init>(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    move-object/from16 v15, p1

    :try_start_2
    iput-object v15, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->L$0:Ljava/lang/Object;

    iput-object v14, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->L$1:Ljava/lang/Object;

    iput-object v13, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->L$2:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    move/from16 v9, p2

    :try_start_3
    iput v9, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->I$0:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move/from16 v10, p3

    :try_start_4
    iput v10, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->I$1:I

    iput v2, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->I$2:I

    iput v3, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->I$3:I

    iput v4, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->F$0:F

    iput v8, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->F$1:F

    const/4 v2, 0x1

    iput v2, v6, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$scan$1;->label:I

    invoke-static {v11, v12, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    if-ne v11, v0, :cond_2

    .line 145
    return-object v0

    .line 155
    :cond_2
    move-object v0, v11

    move v11, v8

    move v8, v4

    move v4, v3

    move/from16 v3, p4

    .line 145
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .end local p2    # "x":I
    .end local p3    # "y":I
    .end local p4    # "width":I
    .end local p5    # "height":I
    .end local p6    # "zoom":F
    .local v3, "width":I
    .local v4, "height":I
    .local v8, "zoom":F
    .local v9, "x":I
    .local v10, "y":I
    .local v11, "scale":F
    .restart local v15    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    :try_start_5
    check-cast v0, Lcom/google/mlkit/vision/text/Text;

    .line 158
    .local v0, "result":Lcom/google/mlkit/vision/text/Text;
    int-to-float v12, v3

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v12, v2

    .line 159
    .local v12, "xScale":F
    int-to-float v2, v4

    move-object/from16 p1, v0

    .end local v0    # "result":Lcom/google/mlkit/vision/text/Text;
    .local p1, "result":Lcom/google/mlkit/vision/text/Text;
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 160
    .local v2, "yScale":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/mlkit/vision/text/Text;->getTextBlocks()Ljava/util/List;

    move-result-object v0

    move/from16 p2, v2

    .end local v2    # "yScale":F
    .local p2, "yScale":F
    const-string v2, "getTextBlocks(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$mapNotNull\\2":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 287
    .local v2, "$i$f$mapNotNull\\2\\160":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    check-cast v16, Ljava/util/Collection;

    .local v16, "destination\\3":Ljava/util/Collection;
    move-object/from16 v17, v0

    .local v17, "$this$mapNotNullTo\\3":Ljava/lang/Iterable;
    move-object/from16 p3, v16

    .end local v16    # "destination\\3":Ljava/util/Collection;
    .local p3, "destination\\3":Ljava/util/Collection;
    const/16 v16, 0x0

    .line 296
    .local v16, "$i$f$mapNotNullTo\\3\\287":I
    move-object/from16 v18, v17

    .local v18, "$this$forEach\\4":Ljava/lang/Iterable;
    const/16 v19, 0x0

    .line 297
    .local v19, "$i$f$forEach\\4\\296":I
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .local v21, "element\\4":Ljava/lang/Object;
    move-object/from16 v22, v21

    .local v22, "element\\5":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 296
    .local v23, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\5\\297\\3":I
    move-object/from16 v24, v22

    check-cast v24, Lcom/google/mlkit/vision/text/Text$TextBlock;

    .local v24, "block\\7":Lcom/google/mlkit/vision/text/Text$TextBlock;
    const/16 v25, 0x0

    .line 161
    .local v25, "$i$a$-mapNotNull-ArabicPageRenderer$scan$2\\7\\296\\0":I
    invoke-virtual/range {v24 .. v24}, Lcom/google/mlkit/vision/text/Text$TextBlock;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v26

    if-nez v26, :cond_3

    move-object/from16 p5, v0

    move/from16 p6, v2

    move/from16 v28, v3

    move/from16 v27, v4

    move-object/from16 v26, v6

    move-object/from16 v29, v7

    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_3
    move-object/from16 p4, v26

    .line 162
    .local p4, "box\\7":Landroid/graphics/Rect;
    move-object/from16 p5, v0

    .end local v0    # "$this$mapNotNull\\2":Ljava/lang/Iterable;
    .local p5, "$this$mapNotNull\\2":Ljava/lang/Iterable;
    invoke-virtual/range {v24 .. v24}, Lcom/google/mlkit/vision/text/Text$TextBlock;->getText()Ljava/lang/String;

    move-result-object v0

    move/from16 p6, v2

    .end local v2    # "$i$f$mapNotNull\\2\\160":I
    .local p6, "$i$f$mapNotNull\\2\\160":I
    const-string v2, "getText(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v2, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->spaces:Lkotlin/text/Regex;

    const-string v1, " "

    invoke-virtual {v2, v0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "text\\7":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .local v1, "$this$none\\8":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 298
    .local v2, "$i$f$none\\8\\163":I
    const/16 v26, 0x0

    move/from16 v27, v2

    move/from16 v2, v26

    .end local v2    # "$i$f$none\\8\\163":I
    .local v27, "$i$f$none\\8\\163":I
    :goto_4
    move/from16 v28, v3

    .end local v3    # "width":I
    .local v28, "width":I
    :try_start_6
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-ge v2, v3, :cond_5

    :try_start_7
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move-object/from16 v29, v1

    .end local v1    # "$this$none\\8":Ljava/lang/CharSequence;
    .local v3, "element\\8":C
    .local v29, "$this$none\\8":Ljava/lang/CharSequence;
    int-to-char v1, v3

    .local v1, "p0\\9":C
    const/16 v30, 0x0

    .line 163
    .local v30, "$i$a$-none-ArabicPageRenderer$scan$2$1\\9\\298\\7":I
    move/from16 v31, v2

    int-to-char v2, v1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 298
    .end local v1    # "p0\\9":C
    .end local v30    # "$i$a$-none-ArabicPageRenderer$scan$2$1\\9\\298\\7":I
    if-eqz v2, :cond_4

    goto :goto_5

    .end local v3    # "element\\8":C
    :cond_4
    add-int/lit8 v2, v31, 0x1

    move/from16 v3, v28

    move-object/from16 v1, v29

    goto :goto_4

    .line 170
    .end local v0    # "text\\7":Ljava/lang/String;
    .end local v12    # "xScale":F
    .end local v16    # "$i$f$mapNotNullTo\\3\\287":I
    .end local v17    # "$this$mapNotNullTo\\3":Ljava/lang/Iterable;
    .end local v18    # "$this$forEach\\4":Ljava/lang/Iterable;
    .end local v19    # "$i$f$forEach\\4\\296":I
    .end local v21    # "element\\4":Ljava/lang/Object;
    .end local v22    # "element\\5":Ljava/lang/Object;
    .end local v23    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\5\\297\\3":I
    .end local v24    # "block\\7":Lcom/google/mlkit/vision/text/Text$TextBlock;
    .end local v25    # "$i$a$-mapNotNull-ArabicPageRenderer$scan$2\\7\\296\\0":I
    .end local v27    # "$i$f$none\\8\\163":I
    .end local v29    # "$this$none\\8":Ljava/lang/CharSequence;
    .end local p1    # "result":Lcom/google/mlkit/vision/text/Text;
    .end local p2    # "yScale":F
    .end local p3    # "destination\\3":Ljava/util/Collection;
    .end local p4    # "box\\7":Landroid/graphics/Rect;
    .end local p5    # "$this$mapNotNull\\2":Ljava/lang/Iterable;
    .end local p6    # "$i$f$mapNotNull\\2\\160":I
    :catchall_1
    move-exception v0

    move/from16 v27, v4

    move-object/from16 v26, v6

    move-object/from16 v29, v7

    goto/16 :goto_8

    .line 299
    .restart local v0    # "text\\7":Ljava/lang/String;
    .local v1, "$this$none\\8":Ljava/lang/CharSequence;
    .restart local v12    # "xScale":F
    .restart local v16    # "$i$f$mapNotNullTo\\3\\287":I
    .restart local v17    # "$this$mapNotNullTo\\3":Ljava/lang/Iterable;
    .restart local v18    # "$this$forEach\\4":Ljava/lang/Iterable;
    .restart local v19    # "$i$f$forEach\\4\\296":I
    .restart local v21    # "element\\4":Ljava/lang/Object;
    .restart local v22    # "element\\5":Ljava/lang/Object;
    .restart local v23    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\5\\297\\3":I
    .restart local v24    # "block\\7":Lcom/google/mlkit/vision/text/Text$TextBlock;
    .restart local v25    # "$i$a$-mapNotNull-ArabicPageRenderer$scan$2\\7\\296\\0":I
    .restart local v27    # "$i$f$none\\8\\163":I
    .restart local p1    # "result":Lcom/google/mlkit/vision/text/Text;
    .restart local p2    # "yScale":F
    .restart local p3    # "destination\\3":Ljava/util/Collection;
    .restart local p4    # "box\\7":Landroid/graphics/Rect;
    .restart local p5    # "$this$mapNotNull\\2":Ljava/lang/Iterable;
    .restart local p6    # "$i$f$mapNotNull\\2\\160":I
    :cond_5
    move-object/from16 v29, v1

    .end local v1    # "$this$none\\8":Ljava/lang/CharSequence;
    .restart local v29    # "$this$none\\8":Ljava/lang/CharSequence;
    const/16 v26, 0x1

    .line 163
    .end local v27    # "$i$f$none\\8\\163":I
    .end local v29    # "$this$none\\8":Ljava/lang/CharSequence;
    :goto_5
    if-eqz v26, :cond_6

    move/from16 v27, v4

    move-object/from16 v26, v6

    move-object/from16 v29, v7

    const/4 v1, 0x0

    goto :goto_6

    .line 164
    :cond_6
    :try_start_8
    new-instance v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    .line 165
    new-instance v2, Landroid/graphics/RectF;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    int-to-float v3, v9

    move/from16 v26, v3

    move/from16 v27, v4

    move-object/from16 v3, p4

    .end local v4    # "height":I
    .end local p4    # "box\\7":Landroid/graphics/Rect;
    .local v3, "box\\7":Landroid/graphics/Rect;
    .local v27, "height":I
    :try_start_9
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v12

    add-float v4, v26, v4

    int-to-float v5, v10

    move/from16 v26, v5

    iget v5, v3, Landroid/graphics/Rect;->top:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    int-to-float v5, v5

    mul-float v5, v5, p2

    add-float v5, v26, v5

    move-object/from16 v26, v6

    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v26, "$continuation":Lkotlin/coroutines/Continuation;
    int-to-float v6, v9

    move/from16 v29, v6

    :try_start_a
    iget v6, v3, Landroid/graphics/Rect;->right:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    int-to-float v6, v6

    mul-float/2addr v6, v12

    add-float v6, v29, v6

    move-object/from16 v29, v7

    .end local v7    # "$result":Ljava/lang/Object;
    .local v29, "$result":Ljava/lang/Object;
    int-to-float v7, v10

    move/from16 v30, v7

    :try_start_b
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    mul-float v7, v7, p2

    add-float v7, v30, v7

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 166
    nop

    .line 164
    invoke-direct {v1, v2, v0}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;-><init>(Landroid/graphics/RectF;Ljava/lang/String;)V

    .line 167
    nop

    .line 296
    .end local v0    # "text\\7":Ljava/lang/String;
    .end local v3    # "box\\7":Landroid/graphics/Rect;
    .end local v24    # "block\\7":Lcom/google/mlkit/vision/text/Text$TextBlock;
    .end local v25    # "$i$a$-mapNotNull-ArabicPageRenderer$scan$2\\7\\296\\0":I
    :goto_6
    if-eqz v1, :cond_7

    .line 300
    .local v1, "it\\5":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 296
    .local v0, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1\\6\\300\\5":I
    move-object/from16 v2, p3

    .end local p3    # "destination\\3":Ljava/util/Collection;
    .local v2, "destination\\3":Ljava/util/Collection;
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v0    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1\\6\\300\\5":I
    .end local v1    # "it\\5":Ljava/lang/Object;
    goto :goto_7

    .end local v2    # "destination\\3":Ljava/util/Collection;
    .restart local p3    # "destination\\3":Ljava/util/Collection;
    :cond_7
    move-object/from16 v2, p3

    .line 297
    .end local v22    # "element\\5":Ljava/lang/Object;
    .end local v23    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\5\\297\\3":I
    .end local p3    # "destination\\3":Ljava/util/Collection;
    .restart local v2    # "destination\\3":Ljava/util/Collection;
    :goto_7
    move-object/from16 v1, p0

    move-object/from16 v0, p5

    move-object/from16 v5, p7

    move-object/from16 p3, v2

    move-object/from16 v6, v26

    move/from16 v4, v27

    move/from16 v3, v28

    move-object/from16 v7, v29

    move/from16 v2, p6

    .end local v21    # "element\\4":Ljava/lang/Object;
    goto/16 :goto_3

    .line 170
    .end local v2    # "destination\\3":Ljava/util/Collection;
    .end local v12    # "xScale":F
    .end local v16    # "$i$f$mapNotNullTo\\3\\287":I
    .end local v17    # "$this$mapNotNullTo\\3":Ljava/lang/Iterable;
    .end local v18    # "$this$forEach\\4":Ljava/lang/Iterable;
    .end local v19    # "$i$f$forEach\\4\\296":I
    .end local v29    # "$result":Ljava/lang/Object;
    .end local p1    # "result":Lcom/google/mlkit/vision/text/Text;
    .end local p2    # "yScale":F
    .end local p5    # "$this$mapNotNull\\2":Ljava/lang/Iterable;
    .end local p6    # "$i$f$mapNotNull\\2\\160":I
    .restart local v7    # "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move-object/from16 v29, v7

    .end local v7    # "$result":Ljava/lang/Object;
    .restart local v29    # "$result":Ljava/lang/Object;
    goto/16 :goto_8

    .end local v26    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v29    # "$result":Ljava/lang/Object;
    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v7    # "$result":Ljava/lang/Object;
    :catchall_3
    move-exception v0

    move-object/from16 v26, v6

    move-object/from16 v29, v7

    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v7    # "$result":Ljava/lang/Object;
    .restart local v26    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v29    # "$result":Ljava/lang/Object;
    goto/16 :goto_8

    .end local v26    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v27    # "height":I
    .end local v29    # "$result":Ljava/lang/Object;
    .restart local v4    # "height":I
    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v7    # "$result":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    move/from16 v27, v4

    move-object/from16 v26, v6

    move-object/from16 v29, v7

    .end local v4    # "height":I
    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v7    # "$result":Ljava/lang/Object;
    .restart local v26    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v27    # "height":I
    .restart local v29    # "$result":Ljava/lang/Object;
    goto/16 :goto_8

    .line 301
    .end local v26    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v27    # "height":I
    .end local v28    # "width":I
    .end local v29    # "$result":Ljava/lang/Object;
    .local v0, "$this$mapNotNull\\2":Ljava/lang/Iterable;
    .local v2, "$i$f$mapNotNull\\2\\160":I
    .local v3, "width":I
    .restart local v4    # "height":I
    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v7    # "$result":Ljava/lang/Object;
    .restart local v12    # "xScale":F
    .restart local v16    # "$i$f$mapNotNullTo\\3\\287":I
    .restart local v17    # "$this$mapNotNullTo\\3":Ljava/lang/Iterable;
    .restart local v18    # "$this$forEach\\4":Ljava/lang/Iterable;
    .restart local v19    # "$i$f$forEach\\4\\296":I
    .restart local p1    # "result":Lcom/google/mlkit/vision/text/Text;
    .restart local p2    # "yScale":F
    .restart local p3    # "destination\\3":Ljava/util/Collection;
    :cond_8
    move-object/from16 p5, v0

    move/from16 p6, v2

    move/from16 v28, v3

    move/from16 v27, v4

    move-object/from16 v26, v6

    move-object/from16 v29, v7

    move-object/from16 v2, p3

    .line 302
    .end local v0    # "$this$mapNotNull\\2":Ljava/lang/Iterable;
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v18    # "$this$forEach\\4":Ljava/lang/Iterable;
    .end local v19    # "$i$f$forEach\\4\\296":I
    .end local p3    # "destination\\3":Ljava/util/Collection;
    .local v2, "destination\\3":Ljava/util/Collection;
    .restart local v26    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v27    # "height":I
    .restart local v28    # "width":I
    .restart local v29    # "$result":Ljava/lang/Object;
    .restart local p5    # "$this$mapNotNull\\2":Ljava/lang/Iterable;
    .restart local p6    # "$i$f$mapNotNull\\2\\160":I
    nop

    .end local v2    # "destination\\3":Ljava/util/Collection;
    .end local v16    # "$i$f$mapNotNullTo\\3\\287":I
    .end local v17    # "$this$mapNotNullTo\\3":Ljava/lang/Iterable;
    move-object v0, v2

    check-cast v0, Ljava/util/List;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 287
    nop

    .line 170
    .end local v12    # "xScale":F
    .end local p1    # "result":Lcom/google/mlkit/vision/text/Text;
    .end local p2    # "yScale":F
    .end local p5    # "$this$mapNotNull\\2":Ljava/lang/Iterable;
    .end local p6    # "$i$f$mapNotNull\\2\\160":I
    if-eq v13, v14, :cond_9

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 171
    :cond_9
    if-eq v14, v15, :cond_a

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .restart local v12    # "xScale":F
    :cond_a
    move/from16 v1, p2

    .local v1, "yScale":F
    move-object/from16 v2, p1

    .line 160
    .local v2, "result":Lcom/google/mlkit/vision/text/Text;
    return-object v0

    .line 170
    .end local v1    # "yScale":F
    .end local v2    # "result":Lcom/google/mlkit/vision/text/Text;
    .end local v12    # "xScale":F
    :catchall_5
    move-exception v0

    goto :goto_8

    .end local v26    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v27    # "height":I
    .end local v28    # "width":I
    .end local v29    # "$result":Ljava/lang/Object;
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v7    # "$result":Ljava/lang/Object;
    :catchall_6
    move-exception v0

    move/from16 v28, v3

    move/from16 v27, v4

    move-object/from16 v26, v6

    move-object/from16 v29, v7

    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v7    # "$result":Ljava/lang/Object;
    .restart local v26    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v27    # "height":I
    .restart local v28    # "width":I
    .restart local v29    # "$result":Ljava/lang/Object;
    goto :goto_8

    .end local v9    # "x":I
    .end local v10    # "y":I
    .end local v11    # "scale":F
    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    .end local v26    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v27    # "height":I
    .end local v28    # "width":I
    .end local v29    # "$result":Ljava/lang/Object;
    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v7    # "$result":Ljava/lang/Object;
    .local v8, "scale":F
    .local p1, "bitmap":Landroid/graphics/Bitmap;
    .local p2, "x":I
    .local p3, "y":I
    .local p4, "width":I
    .local p5, "height":I
    .local p6, "zoom":F
    :catchall_7
    move-exception v0

    move-object/from16 v26, v6

    move-object/from16 v29, v7

    move/from16 v28, p4

    move/from16 v27, v3

    move v11, v8

    move v8, v4

    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v7    # "$result":Ljava/lang/Object;
    .restart local v26    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v29    # "$result":Ljava/lang/Object;
    goto :goto_8

    .end local v26    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v29    # "$result":Ljava/lang/Object;
    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v7    # "$result":Ljava/lang/Object;
    :catchall_8
    move-exception v0

    move/from16 v10, p3

    move-object/from16 v26, v6

    move-object/from16 v29, v7

    move/from16 v28, p4

    move/from16 v27, v3

    move v11, v8

    move v8, v4

    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v7    # "$result":Ljava/lang/Object;
    .restart local v26    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v29    # "$result":Ljava/lang/Object;
    goto :goto_8

    .end local v26    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v29    # "$result":Ljava/lang/Object;
    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v7    # "$result":Ljava/lang/Object;
    :catchall_9
    move-exception v0

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v26, v6

    move-object/from16 v29, v7

    move/from16 v28, p4

    move/from16 v27, v3

    move v11, v8

    move v8, v4

    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v7    # "$result":Ljava/lang/Object;
    .restart local v26    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v29    # "$result":Ljava/lang/Object;
    goto :goto_8

    .end local v26    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v29    # "$result":Ljava/lang/Object;
    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v7    # "$result":Ljava/lang/Object;
    :catchall_a
    move-exception v0

    move-object/from16 v15, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v26, v6

    move-object/from16 v29, v7

    move/from16 v28, p4

    move/from16 v27, v3

    move v11, v8

    move v8, v4

    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .end local p2    # "x":I
    .end local p3    # "y":I
    .end local p4    # "width":I
    .end local p5    # "height":I
    .end local p6    # "zoom":F
    .local v8, "zoom":F
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    .restart local v11    # "scale":F
    .restart local v15    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v26    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v27    # "height":I
    .restart local v28    # "width":I
    .restart local v29    # "$result":Ljava/lang/Object;
    :goto_8
    if-eq v13, v14, :cond_b

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 171
    :cond_b
    if-eq v14, v15, :cond_c

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 239
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->recognizer:Lcom/google/mlkit/vision/text/TextRecognizer;

    invoke-interface {v0}, Lcom/google/mlkit/vision/text/TextRecognizer;->close()V

    .line 240
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->translator:Lcom/google/mlkit/nl/translate/Translator;

    invoke-interface {v0}, Lcom/google/mlkit/nl/translate/Translator;->close()V

    .line 241
    return-void
.end method

.method public final downloadModels(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final render(Lkotlin/jvm/functions/Function0;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 34
    .param p1, "openImage"    # Lkotlin/jvm/functions/Function0;
    .param p2, "output"    # Ljava/io/File;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    instance-of v0, v2, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;

    if-eqz v0, :cond_0

    move-object v0, v2

    check-cast v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;

    iget v3, v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v3, v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->label:I

    sub-int/2addr v3, v4

    iput v3, v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;

    invoke-direct {v0, v1, v2}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;-><init>(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v3, v0

    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v4, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->result:Ljava/lang/Object;

    .local v4, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 71
    iget v5, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->label:I

    packed-switch v5, :pswitch_data_0

    .end local p0    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    move-object/from16 v8, p2

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local p0    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    :pswitch_0
    const/4 v5, 0x0

    .local v5, "$i$f$mapNotNull\\7\\94":I
    const/4 v10, 0x0

    .local v10, "$i$f$mapNotNullTo\\8\\252":I
    const/4 v11, 0x0

    .local v11, "$i$f$forEach\\9\\261":I
    const/4 v12, 0x0

    .local v12, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\10\\262\\8":I
    const/4 v13, 0x0

    .local v13, "$i$a$-mapNotNull-ArabicPageRenderer$render$translations$1\\12\\261\\0":I
    const/4 v14, 0x0

    .local v14, "$i$f$getOrPut\\14\\96":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    .local v15, "$i$a$-getOrPut-ArabicPageRenderer$render$translations$1$arabic$1\\15\\266\\12":I
    iget-object v7, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$17:Ljava/lang/Object;

    .local v7, "value\\14":Ljava/lang/Object;
    iget-object v6, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$16:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .local v6, "key\\14":Ljava/lang/Object;
    iget-object v8, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$15:Ljava/lang/Object;

    check-cast v8, Ljava/util/Map;

    .local v8, "$this$getOrPut\\14":Ljava/util/Map;
    iget-object v9, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$14:Ljava/lang/Object;

    check-cast v9, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    .local v9, "block\\12":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    iget-object v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$13:Ljava/lang/Object;

    move-object/from16 v19, v2

    .local v19, "element\\10":Ljava/lang/Object;
    iget-object v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$12:Ljava/lang/Object;

    move-object/from16 v20, v2

    .local v20, "element\\9":Ljava/lang/Object;
    iget-object v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$11:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    move-object/from16 v21, v2

    iget-object v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$10:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Iterable;

    move-object/from16 v22, v2

    .local v22, "$this$forEach\\9":Ljava/lang/Iterable;
    iget-object v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$9:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    move-object/from16 v23, v2

    .local v23, "destination\\8":Ljava/util/Collection;
    iget-object v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$8:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Iterable;

    move-object/from16 v24, v2

    .local v24, "$this$mapNotNullTo\\8":Ljava/lang/Iterable;
    iget-object v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$7:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Iterable;

    move-object/from16 v25, v2

    .local v25, "$this$mapNotNull\\7":Ljava/lang/Iterable;
    iget-object v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v26, v2

    .local v26, "blocks":Ljava/util/List;
    iget-object v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$5:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    move-object/from16 v27, v2

    .local v27, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$4:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v28, v2

    .local v28, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v29, v2

    .local v29, "sample":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$2:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v30, v2

    .local v30, "bounds":Landroid/graphics/BitmapFactory$Options;
    iget-object v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    move-object/from16 p2, v2

    iget-object v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .end local p1    # "openImage":Lkotlin/jvm/functions/Function0;
    .local v2, "openImage":Lkotlin/jvm/functions/Function0;
    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v32, v14

    move/from16 v33, v15

    move-object/from16 v14, v24

    move-object/from16 v31, v28

    move-object/from16 v28, v30

    move-object v15, v4

    move/from16 v30, v13

    move-object/from16 v24, v19

    move-object/from16 v19, v22

    move-object/from16 v13, v23

    move/from16 v22, v10

    move/from16 v23, v11

    move-object v10, v8

    move-object v11, v9

    move-object/from16 v8, p2

    move-object v9, v7

    move-object/from16 v7, v26

    move/from16 v26, v12

    move-object v12, v3

    move-object v3, v1

    move-object/from16 v1, p3

    goto/16 :goto_5

    .line 116
    .end local v5    # "$i$f$mapNotNull\\7\\94":I
    .end local v6    # "key\\14":Ljava/lang/Object;
    .end local v7    # "value\\14":Ljava/lang/Object;
    .end local v8    # "$this$getOrPut\\14":Ljava/util/Map;
    .end local v9    # "block\\12":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    .end local v10    # "$i$f$mapNotNullTo\\8\\252":I
    .end local v11    # "$i$f$forEach\\9\\261":I
    .end local v12    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\10\\262\\8":I
    .end local v13    # "$i$a$-mapNotNull-ArabicPageRenderer$render$translations$1\\12\\261\\0":I
    .end local v14    # "$i$f$getOrPut\\14\\96":I
    .end local v15    # "$i$a$-getOrPut-ArabicPageRenderer$render$translations$1$arabic$1\\15\\266\\12":I
    .end local v19    # "element\\10":Ljava/lang/Object;
    .end local v20    # "element\\9":Ljava/lang/Object;
    .end local v22    # "$this$forEach\\9":Ljava/lang/Iterable;
    .end local v23    # "destination\\8":Ljava/util/Collection;
    .end local v24    # "$this$mapNotNullTo\\8":Ljava/lang/Iterable;
    .end local v25    # "$this$mapNotNull\\7":Ljava/lang/Iterable;
    .end local v26    # "blocks":Ljava/util/List;
    :catchall_0
    move-exception v0

    move-object/from16 v8, p2

    move-object v9, v2

    move-object v12, v3

    move-object/from16 v2, v27

    move-object/from16 v31, v28

    move-object/from16 v5, v29

    move-object/from16 v28, v30

    move-object/from16 v3, p3

    goto/16 :goto_11

    .line 71
    .end local v2    # "openImage":Lkotlin/jvm/functions/Function0;
    .end local v27    # "bitmap":Landroid/graphics/Bitmap;
    .end local v28    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v29    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v30    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .restart local p1    # "openImage":Lkotlin/jvm/functions/Function0;
    :pswitch_1
    const/16 v16, 0x0

    iget-object v2, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$5:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$4:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/BitmapFactory$Options;

    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v6, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    .local v6, "sample":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v7, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$2:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/BitmapFactory$Options;

    .local v7, "bounds":Landroid/graphics/BitmapFactory$Options;
    iget-object v8, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/io/File;

    .end local p2    # "output":Ljava/io/File;
    .local v8, "output":Ljava/io/File;
    iget-object v9, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .end local p1    # "openImage":Lkotlin/jvm/functions/Function0;
    .local v9, "openImage":Lkotlin/jvm/functions/Function0;
    :try_start_1
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v6

    move-object v6, v5

    move-object v5, v11

    move-object v11, v2

    move-object v2, v7

    move-object v7, v4

    goto/16 :goto_3

    .line 116
    :catchall_1
    move-exception v0

    move-object v12, v3

    move-object/from16 v31, v5

    move-object v5, v6

    move-object/from16 v28, v7

    move-object/from16 v3, p3

    goto/16 :goto_11

    .line 71
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v7    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "output":Ljava/io/File;
    .end local v9    # "openImage":Lkotlin/jvm/functions/Function0;
    .restart local p1    # "openImage":Lkotlin/jvm/functions/Function0;
    .restart local p2    # "output":Ljava/io/File;
    :pswitch_2
    const/16 v16, 0x0

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v5, v2

    .line 251
    .local v5, "$this$render_u24lambda_u240\\1":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    .line 72
    .local v6, "$i$a$-apply-ArabicPageRenderer$render$bounds$1\\1\\72\\0":I
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 73
    .end local v5    # "$this$render_u24lambda_u240\\1":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "$i$a$-apply-ArabicPageRenderer$render$bounds$1\\1\\72\\0":I
    .local v2, "bounds":Landroid/graphics/BitmapFactory$Options;
    invoke-interface/range {p1 .. p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    invoke-static {v5}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    check-cast v5, Ljava/io/Closeable;

    :try_start_2
    move-object v6, v5

    check-cast v6, Lokio/BufferedSource;

    .local v6, "source\\2":Lokio/BufferedSource;
    const/4 v7, 0x0

    .line 74
    .local v7, "$i$a$-use-ArabicPageRenderer$render$2\\2\\73\\0":I
    sget-object v8, Ltachiyomi/core/common/util/system/ImageUtil;->INSTANCE:Ltachiyomi/core/common/util/system/ImageUtil;

    invoke-virtual {v8, v6}, Ltachiyomi/core/common/util/system/ImageUtil;->isAnimatedAndSupported(Lokio/BufferedSource;)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_12

    if-eqz v8, :cond_1

    :try_start_3
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 73
    .end local v6    # "source\\2":Lokio/BufferedSource;
    .end local v7    # "$i$a$-use-ArabicPageRenderer$render$2\\2\\73\\0":I
    const/4 v8, 0x0

    invoke-static {v5, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_2
    move-exception v0

    move-object/from16 v8, p2

    move-object v1, v0

    goto/16 :goto_13

    .line 75
    .restart local v6    # "source\\2":Lokio/BufferedSource;
    .restart local v7    # "$i$a$-use-ArabicPageRenderer$render$2\\2\\73\\0":I
    :cond_1
    const/4 v8, 0x0

    :try_start_4
    invoke-interface {v6}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9, v8, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_12

    .line 73
    .end local v6    # "source\\2":Lokio/BufferedSource;
    .end local v7    # "$i$a$-use-ArabicPageRenderer$render$2\\2\\73\\0":I
    invoke-static {v5, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 77
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v5, :cond_2

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move/from16 v5, v16

    :goto_1
    if-eqz v5, :cond_18

    .line 80
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v7, 0x1

    .local v5, "sample":Lkotlin/jvm/internal/Ref$IntRef;
    iput v7, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 81
    :goto_2
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-long v6, v6

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-long v8, v8

    mul-long/2addr v6, v8

    iget v8, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    iget v8, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    const-wide/32 v8, 0xb71b00

    cmp-long v6, v6, v8

    if-gtz v6, :cond_17

    .line 82
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    div-int/2addr v6, v7

    const/16 v7, 0xbb8

    if-le v6, v7, :cond_3

    move-object/from16 v8, p2

    const/4 v10, 0x0

    const/16 v18, 0x1

    goto/16 :goto_12

    .line 86
    :cond_3
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v7, v6

    .local v7, "$this$render_u24lambda_u242\\4":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x0

    .line 87
    .local v8, "$i$a$-apply-ArabicPageRenderer$render$options$1\\4\\86\\0":I
    iget v9, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iput v9, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 88
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v9, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 89
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 90
    nop

    .line 86
    .end local v7    # "$this$render_u24lambda_u242\\4":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "$i$a$-apply-ArabicPageRenderer$render$options$1\\4\\86\\0":I
    nop

    .line 91
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-interface/range {p1 .. p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/Closeable;

    :try_start_5
    move-object v8, v7

    check-cast v8, Ljava/io/InputStream;

    .line 251
    .local v8, "it\\5":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 91
    .local v9, "$i$a$-use-ArabicPageRenderer$render$bitmap$1\\5\\91\\0":I
    const/4 v10, 0x0

    invoke-static {v8, v10, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_10

    .end local v8    # "it\\5":Ljava/io/InputStream;
    .end local v9    # "$i$a$-use-ArabicPageRenderer$render$bitmap$1\\5\\91\\0":I
    invoke-static {v7, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v11, :cond_16

    .line 92
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    nop

    .line 93
    :try_start_6
    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$0:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_f

    move-object/from16 v8, p2

    :try_start_7
    iput-object v8, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$1:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$3:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$4:Ljava/lang/Object;

    iput-object v11, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$5:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->label:I

    invoke-direct {v1, v11, v3}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->recognize(Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_e

    if-ne v7, v0, :cond_4

    .line 71
    return-object v0

    .line 93
    :cond_4
    move-object/from16 v9, p1

    .line 71
    .end local p1    # "openImage":Lkotlin/jvm/functions/Function0;
    .end local p2    # "output":Ljava/io/File;
    .local v8, "output":Ljava/io/File;
    .local v9, "openImage":Lkotlin/jvm/functions/Function0;
    :goto_3
    :try_start_8
    check-cast v7, Ljava/util/List;

    .line 94
    iget-object v10, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->recognizer:Lcom/google/mlkit/vision/text/TextRecognizer;

    invoke-static {v11, v7, v10}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement;->refine(Landroid/graphics/Bitmap;Ljava/util/List;Lcom/google/mlkit/vision/text/TextRecognizer;)Ljava/util/List;

    move-result-object v7

    iget-boolean v10, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->english:Z

    if-eqz v10, :cond_5

    invoke-static {v11,v7}, Leu/kanade/tachiyomi/ui/reader/translation/BubbleLayout;->reconnect(Landroid/graphics/Bitmap;Ljava/util/List;)Ljava/util/List;

    move-result-object v7


    .local v7, "blocks":Ljava/util/List;
    :cond_5
    iget-object v10, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->recognizer:Lcom/google/mlkit/vision/text/TextRecognizer;

    iget-boolean v12, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->retryScan:Z

    invoke-static {v11, v7, v10, v12}, Leu/kanade/tachiyomi/ui/reader/translation/PageOcrRecovery;->recover(Landroid/graphics/Bitmap;Ljava/util/List;Lcom/google/mlkit/vision/text/TextRecognizer;Z)Ljava/util/List;

    move-result-object v7

    iget-object v10, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->sourceTag:Ljava/lang/String;

    invoke-static {v7, v10}, Leu/kanade/tachiyomi/ui/reader/translation/OnlinePageTranslation;->translatePage(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    iput-object v10, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->pageTranslations:Ljava/util/Map;

    move-object v10, v7

    check-cast v10, Ljava/lang/Iterable;

    .local v10, "$this$mapNotNull\\7":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 252
    .local v12, "$i$f$mapNotNull\\7\\94":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/Collection;

    .local v13, "destination\\8":Ljava/util/Collection;
    move-object v14, v10

    .local v14, "$this$mapNotNullTo\\8":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 261
    .local v15, "$i$f$mapNotNullTo\\8\\252":I
    move-object/from16 v19, v14

    .local v19, "$this$forEach\\9":Ljava/lang/Iterable;
    const/16 v20, 0x0

    .line 262
    .local v20, "$i$f$forEach\\9\\261":I
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_d

    move/from16 v22, v20

    move/from16 v20, v12

    move-object v12, v3

    move-object/from16 v3, v21

    move/from16 v21, v15

    move-object v15, v4

    move-object v4, v2

    move-object/from16 v2, p3

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p0    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    .local v1, "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local v2, "$completion":Lkotlin/coroutines/Continuation;
    .local v4, "bounds":Landroid/graphics/BitmapFactory$Options;
    .local v12, "$continuation":Lkotlin/coroutines/Continuation;
    .local v15, "$result":Ljava/lang/Object;
    .local v20, "$i$f$mapNotNull\\7\\94":I
    .local v21, "$i$f$mapNotNullTo\\8\\252":I
    .local v22, "$i$f$forEach\\9\\261":I
    :goto_4
    :try_start_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    .local v23, "element\\9":Ljava/lang/Object;
    move-object/from16 v24, v23

    .local v24, "element\\10":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 261
    .local v25, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\10\\262\\8":I
    move-object/from16 v26, v24

    check-cast v26, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    move-object/from16 p1, v26

    .local p1, "block\\12":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    const/16 v26, 0x0

    .line 95
    .local v26, "$i$a$-mapNotNull-ArabicPageRenderer$render$translations$1\\12\\261\\0":I
    move-object/from16 v27, v12

    .local v27, "$completion\\13":Lkotlin/coroutines/Continuation;
    const/16 v28, 0x0

    .line 263
    .local v28, "$i$f$currentCoroutineContext\\13\\95":I
    invoke-interface {v12}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v29

    .line 95
    .end local v27    # "$completion\\13":Lkotlin/coroutines/Continuation;
    .end local v28    # "$i$f$currentCoroutineContext\\13\\95":I
    invoke-static/range {v29 .. v29}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    .line 96
    move-object/from16 p2, v2

    .end local v2    # "$completion":Lkotlin/coroutines/Continuation;
    .local p2, "$completion":Lkotlin/coroutines/Continuation;
    :try_start_a
    iget-object v2, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->translationCache:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getText()Ljava/lang/String;

    move-result-object v27
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    move-object/from16 p3, v27

    .local v2, "$this$getOrPut\\14":Ljava/util/Map;
    .local p3, "key\\14":Ljava/lang/Object;
    const/16 v27, 0x0

    .line 264
    .local v27, "$i$f$getOrPut\\14\\96":I
    move-object/from16 v28, v4

    move-object/from16 v4, p3

    .end local p3    # "key\\14":Ljava/lang/Object;
    .local v4, "key\\14":Ljava/lang/Object;
    .local v28, "bounds":Landroid/graphics/BitmapFactory$Options;
    :try_start_b
    move-object/from16 v29, v1

    move-object/from16 v30, p1

    invoke-direct/range {v29 .. v30}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->getOnlineTranslation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    if-nez v29, :online_result

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    :online_result
    const/16 v30, 0x0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 265
    .local v29, "value\\14":Ljava/lang/Object;
    if-nez v29, :cond_7

    .line 266
    const/16 v30, 0x0

    .line 96
    .local v30, "$i$a$-getOrPut-ArabicPageRenderer$render$translations$1$arabic$1\\15\\266\\12":I
    move-object/from16 p3, v5

    .end local v5    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .local p3, "sample":Lkotlin/jvm/internal/Ref$IntRef;
    :try_start_c
    iget-object v5, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->translator:Lcom/google/mlkit/nl/translate/Translator;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object/from16 v31, v6

    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v31, "options":Landroid/graphics/BitmapFactory$Options;
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Leu/kanade/tachiyomi/ui/reader/translation/OnlinePageTranslation;->translateOffline(Lcom/google/mlkit/nl/translate/Translator;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v5

    const-string v6, "translate(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$0:Ljava/lang/Object;

    iput-object v8, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$1:Ljava/lang/Object;

    invoke-static/range {v28 .. v28}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$3:Ljava/lang/Object;

    invoke-static/range {v31 .. v31}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$4:Ljava/lang/Object;

    iput-object v11, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$5:Ljava/lang/Object;

    iput-object v7, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$6:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$7:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$8:Ljava/lang/Object;

    iput-object v13, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$9:Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$10:Ljava/lang/Object;

    iput-object v3, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$11:Ljava/lang/Object;

    invoke-static/range {v23 .. v23}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$12:Ljava/lang/Object;

    invoke-static/range {v24 .. v24}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$13:Ljava/lang/Object;

    move-object/from16 v6, p1

    .end local p1    # "block\\12":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    .local v6, "block\\12":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    iput-object v6, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$14:Ljava/lang/Object;

    iput-object v2, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$15:Ljava/lang/Object;

    iput-object v4, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$16:Ljava/lang/Object;

    move-object/from16 p1, v2

    .end local v2    # "$this$getOrPut\\14":Ljava/util/Map;
    .local p1, "$this$getOrPut\\14":Ljava/util/Map;
    invoke-static/range {v29 .. v29}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->L$17:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v12, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$render$1;->label:I

    invoke-static {v5, v12}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    if-ne v2, v0, :cond_6

    .line 71
    return-object v0

    .line 96
    :cond_6
    move/from16 v5, v20

    move-object/from16 v20, v23

    move/from16 v32, v27

    move/from16 v33, v30

    move-object/from16 v27, v11

    move/from16 v23, v22

    move/from16 v30, v26

    move-object v11, v6

    move/from16 v22, v21

    move/from16 v26, v25

    move-object/from16 v21, v3

    move-object v6, v4

    move-object/from16 v25, v10

    move-object/from16 v10, p1

    move-object v3, v1

    move-object v4, v2

    move-object v2, v9

    move-object/from16 v9, v29

    move-object/from16 v1, p2

    move-object/from16 v29, p3

    .end local v4    # "key\\14":Ljava/lang/Object;
    .end local v21    # "$i$f$mapNotNullTo\\8\\252":I
    .end local p1    # "$this$getOrPut\\14":Ljava/util/Map;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .end local p3    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .local v1, "$completion":Lkotlin/coroutines/Continuation;
    .local v2, "openImage":Lkotlin/jvm/functions/Function0;
    .local v3, "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local v5, "$i$f$mapNotNull\\7\\94":I
    .local v6, "key\\14":Ljava/lang/Object;
    .local v9, "value\\14":Ljava/lang/Object;
    .local v10, "$this$getOrPut\\14":Ljava/util/Map;
    .local v11, "block\\12":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    .local v20, "element\\9":Ljava/lang/Object;
    .local v22, "$i$f$mapNotNullTo\\8\\252":I
    .local v23, "$i$f$forEach\\9\\261":I
    .local v25, "$this$mapNotNull\\7":Ljava/lang/Iterable;
    .local v26, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\10\\262\\8":I
    .local v27, "bitmap":Landroid/graphics/Bitmap;
    .local v29, "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .local v30, "$i$a$-mapNotNull-ArabicPageRenderer$render$translations$1\\12\\261\\0":I
    .local v32, "$i$f$getOrPut\\14\\96":I
    .local v33, "$i$a$-getOrPut-ArabicPageRenderer$render$translations$1$arabic$1\\15\\266\\12":I
    :goto_5
    move-object/from16 p1, v0

    :try_start_e
    const-string v0, "await(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .end local v33    # "$i$a$-getOrPut-ArabicPageRenderer$render$translations$1$arabic$1\\15\\266\\12":I
    nop

    .line 267
    .local v0, "answer\\14":Ljava/lang/Object;
    invoke-interface {v10, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 268
    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    move-object v4, v9

    move-object v9, v2

    move-object v2, v10

    move-object/from16 v10, v25

    move-object/from16 v25, v24

    move-object/from16 v24, v20

    move/from16 v20, v5

    move-object/from16 v5, v29

    move-object/from16 v29, v4

    move-object v4, v6

    move-object v6, v11

    move-object/from16 v11, v27

    move/from16 v27, v32

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    .end local v0    # "answer\\14":Ljava/lang/Object;
    goto :goto_6

    .line 116
    .end local v5    # "$i$f$mapNotNull\\7\\94":I
    .end local v6    # "key\\14":Ljava/lang/Object;
    .end local v7    # "blocks":Ljava/util/List;
    .end local v9    # "value\\14":Ljava/lang/Object;
    .end local v10    # "$this$getOrPut\\14":Ljava/util/Map;
    .end local v11    # "block\\12":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    .end local v13    # "destination\\8":Ljava/util/Collection;
    .end local v14    # "$this$mapNotNullTo\\8":Ljava/lang/Iterable;
    .end local v19    # "$this$forEach\\9":Ljava/lang/Iterable;
    .end local v20    # "element\\9":Ljava/lang/Object;
    .end local v22    # "$i$f$mapNotNullTo\\8\\252":I
    .end local v23    # "$i$f$forEach\\9\\261":I
    .end local v24    # "element\\10":Ljava/lang/Object;
    .end local v25    # "$this$mapNotNull\\7":Ljava/lang/Iterable;
    .end local v26    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\10\\262\\8":I
    .end local v30    # "$i$a$-mapNotNull-ArabicPageRenderer$render$translations$1\\12\\261\\0":I
    .end local v32    # "$i$f$getOrPut\\14\\96":I
    :catchall_3
    move-exception v0

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    move-object v9, v2

    move-object v4, v15

    move-object/from16 v2, v27

    move-object/from16 v5, v29

    goto/16 :goto_11

    .end local v2    # "openImage":Lkotlin/jvm/functions/Function0;
    .end local v3    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local v27    # "bitmap":Landroid/graphics/Bitmap;
    .end local v29    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v1, "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    .local v9, "openImage":Lkotlin/jvm/functions/Function0;
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local p3    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    :catchall_4
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object v2, v11

    move-object v4, v15

    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    goto/16 :goto_11

    .line 270
    .end local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p3    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .local v2, "$this$getOrPut\\14":Ljava/util/Map;
    .restart local v4    # "key\\14":Ljava/lang/Object;
    .local v5, "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v7    # "blocks":Ljava/util/List;
    .local v10, "$this$mapNotNull\\7":Ljava/lang/Iterable;
    .restart local v13    # "destination\\8":Ljava/util/Collection;
    .restart local v14    # "$this$mapNotNullTo\\8":Ljava/lang/Iterable;
    .restart local v19    # "$this$forEach\\9":Ljava/lang/Iterable;
    .local v20, "$i$f$mapNotNull\\7\\94":I
    .restart local v21    # "$i$f$mapNotNullTo\\8\\252":I
    .local v22, "$i$f$forEach\\9\\261":I
    .local v23, "element\\9":Ljava/lang/Object;
    .restart local v24    # "element\\10":Ljava/lang/Object;
    .local v25, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\10\\262\\8":I
    .local v26, "$i$a$-mapNotNull-ArabicPageRenderer$render$translations$1\\12\\261\\0":I
    .local v27, "$i$f$getOrPut\\14\\96":I
    .local v29, "value\\14":Ljava/lang/Object;
    .local p1, "block\\12":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    :cond_7
    move-object/from16 p3, v5

    move-object/from16 v31, v6

    move-object/from16 v6, p1

    move-object/from16 p1, v2

    .end local v2    # "$this$getOrPut\\14":Ljava/util/Map;
    .end local v5    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .local v6, "block\\12":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    .restart local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .local p1, "$this$getOrPut\\14":Ljava/util/Map;
    .restart local p3    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    move/from16 v30, v26

    move-object/from16 v32, v29

    move/from16 v26, v25

    move-object/from16 v25, v24

    move-object/from16 v24, v23

    move/from16 v23, v22

    move/from16 v22, v21

    move-object/from16 v21, v3

    move-object/from16 v3, p2

    .line 265
    .end local v21    # "$i$f$mapNotNullTo\\8\\252":I
    .end local p1    # "$this$getOrPut\\14":Ljava/util/Map;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .end local p3    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v2    # "$this$getOrPut\\14":Ljava/util/Map;
    .local v3, "$completion":Lkotlin/coroutines/Continuation;
    .restart local v5    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .local v22, "$i$f$mapNotNullTo\\8\\252":I
    .local v23, "$i$f$forEach\\9\\261":I
    .local v24, "element\\9":Ljava/lang/Object;
    .local v25, "element\\10":Ljava/lang/Object;
    .local v26, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\10\\262\\8":I
    .restart local v30    # "$i$a$-mapNotNull-ArabicPageRenderer$render$translations$1\\12\\261\\0":I
    :goto_6
    nop

    .line 96
    .end local v2    # "$this$getOrPut\\14":Ljava/util/Map;
    .end local v4    # "key\\14":Ljava/lang/Object;
    .end local v27    # "$i$f$getOrPut\\14\\96":I
    .end local v29    # "value\\14":Ljava/lang/Object;
    :try_start_f
    check-cast v32, Ljava/lang/String;

    move-object/from16 v2, v32

    .line 97
    .local v2, "arabic\\12":Ljava/lang/String;
    invoke-virtual {v6}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .local v4, "$this$none\\16":Ljava/lang/CharSequence;
    const/16 v27, 0x0

    .line 271
    .local v27, "$i$f$none\\16\\97":I
    move-object/from16 p1, v0

    move/from16 v0, v16

    :goto_7
    move-object/from16 p2, v1

    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local p2, "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    :try_start_10
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_b

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move/from16 v29, v0

    .local v1, "element\\16":C
    int-to-char v0, v1

    .local v0, "it\\17":C
    const/16 v32, 0x0

    .line 97
    .local v32, "$i$a$-none-ArabicPageRenderer$render$translations$1$1\\17\\271\\12":I
    move/from16 p3, v1

    .end local v1    # "element\\16":C
    .local p3, "element\\16":C
    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v1

    move/from16 v33, v0

    .end local v0    # "it\\17":C
    .local v33, "it\\17":C
    sget-object v0, Ljava/lang/Character$UnicodeScript;->ARABIC:Ljava/lang/Character$UnicodeScript;

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_8

    .end local v33    # "it\\17":C
    .restart local v0    # "it\\17":C
    :cond_8
    move/from16 v33, v0

    .end local v0    # "it\\17":C
    .restart local v33    # "it\\17":C
    :cond_9
    move/from16 v0, v16

    .line 271
    .end local v32    # "$i$a$-none-ArabicPageRenderer$render$translations$1$1\\17\\271\\12":I
    .end local v33    # "it\\17":C
    :goto_8
    if-eqz v0, :cond_a

    move/from16 v0, v16

    goto :goto_9

    .end local p3    # "element\\16":C
    :cond_a
    add-int/lit8 v0, v29, 0x1

    move-object/from16 v1, p2

    goto :goto_7

    .line 272
    :cond_b
    const/4 v0, 0x1

    .line 97
    .end local v4    # "$this$none\\16":Ljava/lang/CharSequence;
    .end local v27    # "$i$f$none\\16\\97":I
    :goto_9
    if-eqz v0, :cond_c

    goto :goto_a

    .line 100
    :cond_c
    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    invoke-virtual {v6}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;-><init>(Landroid/graphics/RectF;Ljava/lang/String;)V

    goto :goto_b

    .line 97
    .end local p2    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local v1, "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    :cond_d
    move-object/from16 p1, v0

    move-object/from16 p2, v1

    .line 98
    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .restart local p2    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    :goto_a
    const/4 v0, 0x0

    .line 101
    :goto_b
    nop

    .line 261
    .end local v2    # "arabic\\12":Ljava/lang/String;
    .end local v6    # "block\\12":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    .end local v30    # "$i$a$-mapNotNull-ArabicPageRenderer$render$translations$1\\12\\261\\0":I
    if-eqz v0, :cond_e

    .line 273
    .local v0, "it\\10":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 261
    .local v1, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1\\11\\273\\10":I
    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .end local v0    # "it\\10":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1\\11\\273\\10":I
    goto :goto_c

    .line 116
    .end local v7    # "blocks":Ljava/util/List;
    .end local v10    # "$this$mapNotNull\\7":Ljava/lang/Iterable;
    .end local v13    # "destination\\8":Ljava/util/Collection;
    .end local v14    # "$this$mapNotNullTo\\8":Ljava/lang/Iterable;
    .end local v19    # "$this$forEach\\9":Ljava/lang/Iterable;
    .end local v20    # "$i$f$mapNotNull\\7\\94":I
    .end local v22    # "$i$f$mapNotNullTo\\8\\252":I
    .end local v23    # "$i$f$forEach\\9\\261":I
    .end local v24    # "element\\9":Ljava/lang/Object;
    .end local v25    # "element\\10":Ljava/lang/Object;
    .end local v26    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1\\10\\262\\8":I
    :catchall_5
    move-exception v0

    move-object/from16 v1, p2

    move-object v2, v11

    move-object v4, v15

    goto/16 :goto_11

    .line 262
    .restart local v7    # "blocks":Ljava/util/List;
    .restart local v10    # "$this$mapNotNull\\7":Ljava/lang/Iterable;
    .restart local v13    # "destination\\8":Ljava/util/Collection;
    .restart local v14    # "$this$mapNotNullTo\\8":Ljava/lang/Iterable;
    .restart local v19    # "$this$forEach\\9":Ljava/lang/Iterable;
    .restart local v20    # "$i$f$mapNotNull\\7\\94":I
    .restart local v22    # "$i$f$mapNotNullTo\\8\\252":I
    .restart local v23    # "$i$f$forEach\\9\\261":I
    .restart local v24    # "element\\9":Ljava/lang/Object;
    :cond_e
    :goto_c
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v3

    move-object/from16 v3, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move-object/from16 v4, v28

    move-object/from16 v6, v31

    .end local v24    # "element\\9":Ljava/lang/Object;
    goto/16 :goto_4

    .line 116
    .end local v7    # "blocks":Ljava/util/List;
    .end local v10    # "$this$mapNotNull\\7":Ljava/lang/Iterable;
    .end local v13    # "destination\\8":Ljava/util/Collection;
    .end local v14    # "$this$mapNotNullTo\\8":Ljava/lang/Iterable;
    .end local v19    # "$this$forEach\\9":Ljava/lang/Iterable;
    .end local v20    # "$i$f$mapNotNull\\7\\94":I
    .end local v22    # "$i$f$mapNotNullTo\\8\\252":I
    .end local v23    # "$i$f$forEach\\9\\261":I
    .end local p2    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local v1, "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    :catchall_6
    move-exception v0

    move-object/from16 p2, v1

    move-object v2, v11

    move-object v4, v15

    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .restart local p2    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    goto/16 :goto_11

    .end local v3    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    .local p2, "$completion":Lkotlin/coroutines/Continuation;
    :catchall_7
    move-exception v0

    move-object/from16 p3, v5

    move-object/from16 v31, v6

    move-object/from16 v3, p2

    move-object v2, v11

    move-object v4, v15

    .end local v5    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .local p3, "sample":Lkotlin/jvm/internal/Ref$IntRef;
    goto/16 :goto_11

    .end local v28    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .end local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p3    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .local v4, "bounds":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_8
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 p3, v5

    move-object/from16 v31, v6

    move-object/from16 v3, p2

    move-object v2, v11

    move-object v4, v15

    .end local v4    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v28    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .restart local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p3    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    goto/16 :goto_11

    .line 274
    .end local v28    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .end local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .end local p3    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .local v2, "$completion":Lkotlin/coroutines/Continuation;
    .restart local v4    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v7    # "blocks":Ljava/util/List;
    .restart local v10    # "$this$mapNotNull\\7":Ljava/lang/Iterable;
    .restart local v13    # "destination\\8":Ljava/util/Collection;
    .restart local v14    # "$this$mapNotNullTo\\8":Ljava/lang/Iterable;
    .restart local v19    # "$this$forEach\\9":Ljava/lang/Iterable;
    .restart local v20    # "$i$f$mapNotNull\\7\\94":I
    .restart local v21    # "$i$f$mapNotNullTo\\8\\252":I
    .local v22, "$i$f$forEach\\9\\261":I
    :cond_f
    move-object/from16 p2, v2

    move-object/from16 v28, v4

    move-object/from16 p3, v5

    move-object/from16 v31, v6

    .line 275
    .end local v2    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v4    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "$this$forEach\\9":Ljava/lang/Iterable;
    .end local v22    # "$i$f$forEach\\9\\261":I
    .restart local v28    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .restart local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local p3    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    nop

    .end local v13    # "destination\\8":Ljava/util/Collection;
    .end local v14    # "$this$mapNotNullTo\\8":Ljava/lang/Iterable;
    .end local v21    # "$i$f$mapNotNullTo\\8\\252":I
    :try_start_11
    move-object v0, v13

    check-cast v0, Ljava/util/List;

    .line 252
    nop

    .line 94
    .end local v10    # "$this$mapNotNull\\7":Ljava/lang/Iterable;
    .end local v20    # "$i$f$mapNotNull\\7\\94":I
    move-object v2, v0

    .line 103
    .local v2, "translations":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 116
    .end local v2    # "translations":Ljava/util/List;
    .end local v7    # "blocks":Ljava/util/List;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 103
    .restart local v2    # "translations":Ljava/util/List;
    .restart local v7    # "blocks":Ljava/util/List;
    return-object v0

    .line 105
    :cond_10
    :try_start_12
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v0

    .line 106
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    move-object v4, v0

    .line 251
    .local v4, "$this$render_u24lambda_u245\\18":Landroid/graphics/Paint;
    const/4 v5, 0x0

    .line 106
    .local v5, "$i$a$-apply-ArabicPageRenderer$render$background$1\\18\\106\\0":I
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .end local v4    # "$this$render_u24lambda_u245\\18":Landroid/graphics/Paint;
    .end local v5    # "$i$a$-apply-ArabicPageRenderer$render$background$1\\18\\106\\0":I
    move-object v4, v0

    .line 107
    .local v4, "background":Landroid/graphics/Paint;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    .line 108
    .local v5, "box":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    move-object v6, v7

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$filter\\19":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 276
    .local v10, "$i$f$filter\\19\\108":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/Collection;

    .local v13, "destination\\20":Ljava/util/Collection;
    move-object v14, v6

    .local v14, "$this$filterTo\\20":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 277
    .local v16, "$i$f$filterTo\\20\\276":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_12

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 p1, v19

    .local p1, "element\\20":Ljava/lang/Object;
    move-object/from16 v19, p1

    check-cast v19, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    .local v19, "it\\21":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    const/16 v20, 0x0

    .line 108
    .local v20, "$i$a$-filter-ArabicPageRenderer$render$3\\21\\277\\0":I
    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v19}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    move-object/from16 v22, v2

    .end local v2    # "translations":Ljava/util/List;
    .local v22, "translations":Ljava/util/List;
    invoke-virtual {v5}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 277
    .end local v19    # "it\\21":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    .end local v20    # "$i$a$-filter-ArabicPageRenderer$render$3\\21\\277\\0":I
    if-nez v0, :cond_11

    move-object/from16 v0, p1

    .end local p1    # "element\\20":Ljava/lang/Object;
    .local v0, "element\\20":Ljava/lang/Object;
    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .end local v0    # "element\\20":Ljava/lang/Object;
    .restart local p1    # "element\\20":Ljava/lang/Object;
    :cond_11
    move-object/from16 v0, p1

    .end local p1    # "element\\20":Ljava/lang/Object;
    .restart local v0    # "element\\20":Ljava/lang/Object;
    :goto_f
    move-object/from16 v0, v21

    move-object/from16 v2, v22

    goto :goto_e

    .line 278
    .end local v0    # "element\\20":Ljava/lang/Object;
    .end local v22    # "translations":Ljava/util/List;
    .restart local v2    # "translations":Ljava/util/List;
    :cond_12
    move-object/from16 v21, v0

    move-object/from16 v22, v2

    .end local v2    # "translations":Ljava/util/List;
    .end local v13    # "destination\\20":Ljava/util/Collection;
    .end local v14    # "$this$filterTo\\20":Ljava/lang/Iterable;
    .end local v16    # "$i$f$filterTo\\20\\276":I
    .restart local v22    # "translations":Ljava/util/List;
    move-object v0, v13

    check-cast v0, Ljava/util/List;

    .line 276
    nop

    .line 108
    .end local v6    # "$this$filter\\19":Ljava/lang/Iterable;
    .end local v10    # "$i$f$filter\\19\\108":I
    invoke-static {v11, v3, v5, v0}, Leu/kanade/tachiyomi/ui/reader/translation/BubbleLayout;->draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;Ljava/util/List;)V

    move-object/from16 v0, v21

    move-object/from16 v2, v22

    .end local v5    # "box":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    goto :goto_d

    .line 111
    .end local v22    # "translations":Ljava/util/List;
    .restart local v2    # "translations":Ljava/util/List;
    :cond_13
    move-object/from16 v22, v2

    invoke-static {v8, v11, v2}, Leu/kanade/tachiyomi/ui/reader/translation/BubbleTap;->save(Ljava/io/File;Landroid/graphics/Bitmap;Ljava/util/List;)V

    .end local v2    # "translations":Ljava/util/List;
    .restart local v22    # "translations":Ljava/util/List;
    const/4 v0, 0x0

    .line 279
    .local v0, "$i$f$currentCoroutineContext\\22\\111":I
    invoke-interface {v12}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 111
    .end local v0    # "$i$f$currentCoroutineContext\\22\\111":I
    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 112
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_10

    :cond_14
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_10
    move-object v2, v0

    .line 113
    .local v2, "format":Landroid/graphics/Bitmap$CompressFormat;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v5, v0

    check-cast v5, Ljava/io/Closeable;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    :try_start_13
    move-object v0, v5

    check-cast v0, Ljava/io/FileOutputStream;

    .line 251
    .local v0, "it\\23":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 113
    .local v6, "$i$a$-use-ArabicPageRenderer$render$4\\23\\113\\0":I
    move-object v10, v0

    check-cast v10, Ljava/io/OutputStream;

    const/16 v13, 0x5f

    invoke-virtual {v11, v2, v13, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v10

    if-eqz v10, :cond_15

    .end local v0    # "it\\23":Ljava/io/FileOutputStream;
    .end local v6    # "$i$a$-use-ArabicPageRenderer$render$4\\23\\113\\0":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    const/4 v10, 0x0

    :try_start_14
    invoke-static {v5, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 114
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    .line 116
    .end local v2    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "background":Landroid/graphics/Paint;
    .end local v7    # "blocks":Ljava/util/List;
    .end local v22    # "translations":Ljava/util/List;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 114
    .restart local v2    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "background":Landroid/graphics/Paint;
    .restart local v7    # "blocks":Ljava/util/List;
    .restart local v22    # "translations":Ljava/util/List;
    return-object v0

    .line 113
    .restart local v0    # "it\\23":Ljava/io/FileOutputStream;
    .restart local v6    # "$i$a$-use-ArabicPageRenderer$render$4\\23\\113\\0":I
    :cond_15
    :try_start_15
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v13, "Check failed."

    invoke-direct {v10, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local v2    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "background":Landroid/graphics/Paint;
    .end local v7    # "blocks":Ljava/util/List;
    .end local v8    # "output":Ljava/io/File;
    .end local v9    # "openImage":Lkotlin/jvm/functions/Function0;
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v15    # "$result":Ljava/lang/Object;
    .end local v22    # "translations":Ljava/util/List;
    .end local v28    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .end local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .end local p3    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    throw v10
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .end local v0    # "it\\23":Ljava/io/FileOutputStream;
    .end local v6    # "$i$a$-use-ArabicPageRenderer$render$4\\23\\113\\0":I
    .restart local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .restart local v2    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "background":Landroid/graphics/Paint;
    .restart local v7    # "blocks":Ljava/util/List;
    .restart local v8    # "output":Ljava/io/File;
    .restart local v9    # "openImage":Lkotlin/jvm/functions/Function0;
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v15    # "$result":Ljava/lang/Object;
    .restart local v22    # "translations":Ljava/util/List;
    .restart local v28    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .restart local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local p3    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    :catchall_9
    move-exception v0

    move-object v6, v0

    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local v2    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "background":Landroid/graphics/Paint;
    .end local v7    # "blocks":Ljava/util/List;
    .end local v8    # "output":Ljava/io/File;
    .end local v9    # "openImage":Lkotlin/jvm/functions/Function0;
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v15    # "$result":Ljava/lang/Object;
    .end local v22    # "translations":Ljava/util/List;
    .end local v28    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .end local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .end local p3    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    :try_start_16
    throw v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .restart local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .restart local v2    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "background":Landroid/graphics/Paint;
    .restart local v7    # "blocks":Ljava/util/List;
    .restart local v8    # "output":Ljava/io/File;
    .restart local v9    # "openImage":Lkotlin/jvm/functions/Function0;
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v15    # "$result":Ljava/lang/Object;
    .restart local v22    # "translations":Ljava/util/List;
    .restart local v28    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .restart local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local p3    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    :catchall_a
    move-exception v0

    :try_start_17
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local v8    # "output":Ljava/io/File;
    .end local v9    # "openImage":Lkotlin/jvm/functions/Function0;
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v15    # "$result":Ljava/lang/Object;
    .end local v28    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .end local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .end local p3    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 116
    .end local v2    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "background":Landroid/graphics/Paint;
    .end local v7    # "blocks":Ljava/util/List;
    .end local v22    # "translations":Ljava/util/List;
    .restart local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .restart local v8    # "output":Ljava/io/File;
    .restart local v9    # "openImage":Lkotlin/jvm/functions/Function0;
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v15    # "$result":Ljava/lang/Object;
    .restart local v28    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .restart local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local p3    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    :catchall_b
    move-exception v0

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object v2, v11

    move-object v4, v15

    goto :goto_11

    .end local v28    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .end local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .end local p3    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .local v2, "$completion":Lkotlin/coroutines/Continuation;
    .local v4, "bounds":Landroid/graphics/BitmapFactory$Options;
    .local v5, "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_c
    move-exception v0

    move-object/from16 p2, v2

    move-object/from16 v28, v4

    move-object/from16 p3, v5

    move-object/from16 v31, v6

    move-object/from16 v3, p2

    move-object v2, v11

    move-object v4, v15

    .end local v2    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v4    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v28    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .restart local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local p3    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    goto :goto_11

    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local v12    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v15    # "$result":Ljava/lang/Object;
    .end local v28    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .end local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v2, "bounds":Landroid/graphics/BitmapFactory$Options;
    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    .local v4, "$result":Ljava/lang/Object;
    .restart local v5    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .local p3, "$completion":Lkotlin/coroutines/Continuation;
    :catchall_d
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v28, v2

    move-object v12, v3

    move-object/from16 v31, v6

    move-object v2, v11

    move-object/from16 v3, p3

    goto :goto_11

    .end local v8    # "output":Ljava/io/File;
    .end local v9    # "openImage":Lkotlin/jvm/functions/Function0;
    .local p1, "openImage":Lkotlin/jvm/functions/Function0;
    .local p2, "output":Ljava/io/File;
    :catchall_e
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v28, v2

    move-object v12, v3

    move-object/from16 v31, v6

    move-object v2, v11

    move-object/from16 v3, p3

    goto :goto_11

    :catchall_f
    move-exception v0

    move-object/from16 v8, p2

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v28, v2

    move-object v12, v3

    move-object/from16 v31, v6

    move-object v2, v11

    move-object/from16 v3, p3

    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local p1    # "openImage":Lkotlin/jvm/functions/Function0;
    .end local p2    # "output":Ljava/io/File;
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    .local v3, "$completion":Lkotlin/coroutines/Continuation;
    .restart local v8    # "output":Ljava/io/File;
    .restart local v9    # "openImage":Lkotlin/jvm/functions/Function0;
    .restart local v12    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v28    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .restart local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_11
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    throw v0

    .line 91
    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local v8    # "output":Ljava/io/File;
    .end local v9    # "openImage":Lkotlin/jvm/functions/Function0;
    .end local v12    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v28    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .end local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v2, "bounds":Landroid/graphics/BitmapFactory$Options;
    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p1    # "openImage":Lkotlin/jvm/functions/Function0;
    .restart local p2    # "output":Ljava/io/File;
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :cond_16
    move-object/from16 v8, p2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_10
    move-exception v0

    move-object/from16 v8, p2

    move-object v1, v0

    .end local v2    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p1    # "openImage":Lkotlin/jvm/functions/Function0;
    .end local p2    # "output":Ljava/io/File;
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_18
    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    .restart local v2    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v5    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p1    # "openImage":Lkotlin/jvm/functions/Function0;
    .restart local p2    # "output":Ljava/io/File;
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_11
    move-exception v0

    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 81
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_17
    move-object/from16 v8, p2

    const/4 v10, 0x0

    const/16 v18, 0x1

    .line 84
    :goto_12
    iget v1, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v17, 0x2

    mul-int/lit8 v1, v1, 0x2

    iput v1, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v1, p0

    goto/16 :goto_2

    .line 77
    .end local v5    # "sample":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_18
    move-object/from16 v8, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :catchall_12
    move-exception v0

    move-object/from16 v8, p2

    move-object v1, v0

    .end local v2    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local p1    # "openImage":Lkotlin/jvm/functions/Function0;
    .end local p2    # "output":Ljava/io/File;
    .end local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :goto_13
    :try_start_19
    throw v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_13

    .restart local v2    # "bounds":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local p1    # "openImage":Lkotlin/jvm/functions/Function0;
    .restart local p2    # "output":Ljava/io/File;
    .restart local p3    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_13
    move-exception v0

    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getOnlineTranslation(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->pageTranslations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setRetryScan(Z)V
    .locals 0

    iput-boolean p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->retryScan:Z

    return-void
.end method

.class public final Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement;
.super Ljava/lang/Object;
.source "OcrRefinement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;,
        Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;
    }
.end annotation


# static fields
.field private static final EXCLAMATIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LETTERS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 16
    new-instance v0, Ljava/util/HashSet;

    .line 17
    const-string v12, "wow"

    const-string v13, "ah"

    const-string v1, "what"

    const-string v2, "no"

    const-string v3, "yes"

    const-string v4, "wait"

    const-string v5, "help"

    const-string v6, "stop"

    const-string v7, "please"

    const-string v8, "hey"

    const-string v9, "oh"

    const-string v10, "ouch"

    const-string v11, "why"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement;->EXCLAMATIONS:Ljava/util/Set;

    .line 19
    const-string v0, "\\p{L}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement;->LETTERS:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static joined(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s+"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    const-string v0, "(?i)[a-z -]+[!?]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "[^A-Za-z]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v2, "(.)\\1+"

    const-string v3, "$1"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    sget-object v3, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement;->EXCLAMATIONS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[^!?]"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_0
    return-object p0
.end method

.method static synthetic lambda$0(Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;)I
    .locals 0

    .line 144
    iget p1, p1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->ink:I

    iget p0, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->ink:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$1(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;)D
    .locals 2

    .line 151
    invoke-virtual {p0}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getBounds()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->top:F

    float-to-double v0, p0

    return-wide v0
.end method

.method static synthetic lambda$2(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;)D
    .locals 2

    .line 152
    invoke-virtual {p0}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getBounds()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, p0

    return-wide v0
.end method

.method static synthetic lambda$3(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;)D
    .locals 2

    .line 161
    invoke-virtual {p0}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getBounds()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->top:F

    float-to-double v0, p0

    return-wide v0
.end method

.method static synthetic lambda$4(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;)D
    .locals 2

    .line 162
    invoke-virtual {p0}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getBounds()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, p0

    return-wide v0
.end method

.method static synthetic lambda$6(Landroid/graphics/Bitmap;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 219
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private static merge(Ljava/util/List;Ljava/util/List;F)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;",
            ">;",
            "Ljava/util/List<",
            "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;",
            ">;F)V"
        }
    .end annotation

    .line 161
    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 162
    new-instance v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 161
    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 163
    nop

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 181
    if-eqz v3, :cond_0

    new-instance p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement;->joined(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v3, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;-><init>(Landroid/graphics/RectF;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    return-void

    .line 165
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    .line 166
    invoke-virtual {v4}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getBounds()Landroid/graphics/RectF;

    move-result-object v5

    .line 167
    if-eqz v2, :cond_3

    .line 168
    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget v7, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v7, v2, Landroid/graphics/RectF;->left:F

    iget v8, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    sub-float/2addr v6, v7

    .line 169
    iget v7, v5, Landroid/graphics/RectF;->top:F

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    .line 170
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const v9, 0x3e99999a    # 0.3f

    mul-float/2addr v8, v9

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_2

    .line 171
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const v8, -0x4170a3d7    # -0.28f

    mul-float/2addr v6, v8

    cmpg-float v6, v7, v6

    if-ltz v6, :cond_2

    .line 172
    const/high16 v6, 0x41600000    # 14.0f

    mul-float/2addr v6, p2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v2, v8

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    cmpl-float v2, v7, v2

    if-lez v2, :cond_3

    .line 173
    :cond_2
    new-instance v2, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement;->joined(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;-><init>(Landroid/graphics/RectF;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v3, v1

    .line 177
    :cond_3
    if-nez v3, :cond_4

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object v3, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v5}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 178
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    :cond_5
    invoke-virtual {v4}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v5

    goto/16 :goto_0
.end method

.method private static overlaps(Landroid/graphics/RectF;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Ljava/util/List<",
            "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;",
            ">;)Z"
        }
    .end annotation

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    const/4 p0, 0x0

    return p0

    .line 157
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    invoke-virtual {v0}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method public static refine(Landroid/graphics/Bitmap;Ljava/util/List;Lcom/google/mlkit/vision/text/TextRecognizer;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;",
            ">;",
            "Lcom/google/mlkit/vision/text/TextRecognizer;",
            ")",
            "Ljava/util/List<",
            "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;",
            ">;"
        }
    .end annotation

    .line 123
    move-object/from16 v9, p0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v1, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x4111170000000000L    # 280000.0

    div-double/2addr v4, v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v2, v0

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 125
    invoke-static {v9, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 126
    mul-int v4, v1, v0

    new-array v4, v4, [I

    .line 127
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    move-object v10, v3

    move-object v11, v4

    move v13, v1

    move/from16 v16, v1

    move/from16 v17, v0

    :try_start_0
    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v9, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 128
    :cond_0
    new-instance v5, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;

    invoke-direct {v5, v4, v1, v0}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;-><init>([III)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v10, v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 130
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_a

    .line 136
    iget-object v1, v5, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->regions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 144
    new-instance v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v12, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0xfa0

    add-long v13, v1, v3

    .line 146
    const/4 v1, 0x0

    move v15, v1

    :goto_2
    const/4 v1, 0x6

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v15, v1, :cond_2

    goto :goto_3

    .line 147
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    cmp-long v1, v1, v13

    if-gez v1, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 148
    :cond_3
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;

    .line 149
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v4, v10

    move v5, v0

    move-object v6, v11

    move-wide v7, v13

    invoke-static/range {v1 .. v8}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement;->reread(Landroid/graphics/Bitmap;Lcom/google/mlkit/vision/text/TextRecognizer;Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;FFLjava/util/List;J)V

    .line 146
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 151
    :cond_4
    :goto_3
    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 152
    new-instance v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 151
    invoke-interface {v11, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 153
    return-object v11

    .line 136
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;

    .line 137
    if-nez v1, :cond_6

    goto :goto_1

    .line 138
    :cond_6
    iget-object v4, v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->boxes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v1, v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->boxes:Ljava/util/List;

    invoke-static {v1, v11, v0}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement;->merge(Ljava/util/List;Ljava/util/List;F)V

    goto :goto_1

    .line 139
    :cond_7
    iget v4, v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->ink:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_9

    iget v4, v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkRight:I

    iget v5, v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkLeft:I

    sub-int/2addr v4, v5

    const/4 v5, 0x4

    if-lt v4, v5, :cond_9

    iget v4, v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkBottom:I

    iget v6, v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkTop:I

    sub-int/2addr v4, v6

    if-lt v4, v5, :cond_9

    .line 140
    iget v4, v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->ink:I

    int-to-float v4, v4

    iget v5, v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->paper:I

    int-to-float v5, v5

    const v6, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    goto/16 :goto_1

    .line 141
    :cond_8
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkLeft:I

    int-to-float v5, v5

    mul-float/2addr v5, v10

    iget v6, v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkTop:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    iget v7, v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkRight:I

    add-int/2addr v7, v2

    int-to-float v7, v7

    mul-float/2addr v7, v10

    iget v8, v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkBottom:I

    add-int/2addr v8, v2

    int-to-float v8, v8

    mul-float/2addr v8, v0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 142
    move-object/from16 v6, p1

    invoke-static {v4, v6}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement;->overlaps(Landroid/graphics/RectF;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 139
    :cond_9
    move-object/from16 v6, p1

    goto/16 :goto_1

    .line 132
    :cond_a
    move-object/from16 v6, p1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    .line 133
    invoke-virtual {v3}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getBounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v5, v4, v10, v0}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->at(Landroid/graphics/RectF;FF)Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;

    move-result-object v4

    .line 134
    if-nez v4, :cond_b

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    iget-object v4, v4, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->boxes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 127
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eq v3, v9, :cond_c

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    throw v1
.end method

.method private static reread(Landroid/graphics/Bitmap;Lcom/google/mlkit/vision/text/TextRecognizer;Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;FFLjava/util/List;J)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/google/mlkit/vision/text/TextRecognizer;",
            "Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;",
            "FF",
            "Ljava/util/List<",
            "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;",
            ">;J)V"
        }
    .end annotation

    .line 185
    move-object/from16 v0, p2

    move/from16 v1, p4

    move-object/from16 v2, p5

    iget v3, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkLeft:I

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, p3

    float-to-int v3, v3

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v6, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkTop:I

    sub-int/2addr v6, v4

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget v8, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkRight:I

    add-int/lit8 v8, v8, 0x3

    int-to-float v8, v8

    mul-float v8, v8, p3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget v0, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkBottom:I

    add-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v0, v9

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 188
    if-le v7, v3, :cond_b

    if-gt v0, v6, :cond_0

    goto/16 :goto_c

    .line 189
    :cond_0
    sub-int v8, v7, v3

    sub-int v9, v0, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x442f0000    # 700.0f

    div-float/2addr v11, v10

    const/high16 v10, 0x40200000    # 2.5f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 190
    int-to-float v11, v8

    mul-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    const/4 v12, 0x1

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v13, v9

    mul-float/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 191
    add-int/lit8 v12, v11, 0x18

    add-int/lit8 v13, v10, 0x18

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 192
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 193
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 194
    new-instance v4, Landroid/graphics/ColorMatrix;

    .line 195
    const/16 v15, 0x14

    new-array v15, v15, [F

    fill-array-data v15, :array_0

    .line 194
    invoke-direct {v4, v15}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 196
    new-instance v15, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v15, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 197
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/RectF;

    add-int/lit8 v5, v11, 0xc

    int-to-float v5, v5

    move/from16 p2, v0

    add-int/lit8 v0, v10, 0xc

    int-to-float v0, v0

    move/from16 p3, v7

    const/high16 v7, 0x41400000    # 12.0f

    invoke-direct {v15, v7, v7, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v4, v15, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 198
    nop

    .line 200
    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v12, v0}, Lcom/google/mlkit/vision/common/InputImage;->fromBitmap(Landroid/graphics/Bitmap;I)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object v0

    move-object/from16 v5, p1

    invoke-interface {v5, v0}, Lcom/google/mlkit/vision/text/TextRecognizer;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 201
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v13, p6, v13

    move v0, v9

    move v5, v10

    const-wide/16 v9, 0x1

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v9, v10, v7}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/mlkit/vision/text/Text;

    .line 202
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-virtual {v7}, Lcom/google/mlkit/vision/text/Text;->getTextBlocks()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v10, :cond_2

    .line 212
    :try_start_2
    invoke-static {v9, v2, v1}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement;->merge(Ljava/util/List;Ljava/util/List;F)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 213
    nop

    .line 218
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_6

    .line 219
    :cond_1
    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda3;-><init>()V

    new-instance v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda4;

    invoke-direct {v1, v12}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda4;-><init>(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 203
    :cond_2
    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/mlkit/vision/text/Text$TextBlock;

    .line 204
    invoke-virtual {v10}, Lcom/google/mlkit/vision/text/Text$TextBlock;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v13

    .line 205
    if-eqz v13, :cond_5

    sget-object v14, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement;->LETTERS:Ljava/util/regex/Pattern;

    invoke-virtual {v10}, Lcom/google/mlkit/vision/text/Text$TextBlock;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_0

    .line 206
    :cond_3
    new-instance v14, Landroid/graphics/RectF;

    int-to-float v15, v3

    iget v1, v13, Landroid/graphics/Rect;->left:I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v1, v1, -0xc

    mul-int/2addr v1, v8

    int-to-float v1, v1

    move/from16 v16, v3

    int-to-float v3, v11

    div-float/2addr v1, v3

    add-float/2addr v1, v15

    .line 207
    move-object/from16 p0, v4

    int-to-float v4, v6

    move/from16 v17, v6

    :try_start_4
    iget v6, v13, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, -0xc

    mul-int/2addr v6, v0

    int-to-float v6, v6

    move-object/from16 p1, v7

    int-to-float v7, v5

    div-float/2addr v6, v7

    add-float/2addr v6, v4

    move/from16 p6, v5

    iget v5, v13, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, -0xc

    mul-int/2addr v5, v8

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v5, v15

    .line 208
    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0xc

    mul-int/2addr v3, v0

    int-to-float v3, v3

    div-float/2addr v3, v7

    add-float/2addr v3, v4

    .line 206
    invoke-direct {v14, v1, v6, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 209
    move/from16 v1, p3

    int-to-float v3, v1

    move/from16 v5, p2

    int-to-float v6, v5

    invoke-virtual {v14, v15, v4, v3, v6}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v14, v2}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement;->overlaps(Landroid/graphics/RectF;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 210
    new-instance v3, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    invoke-virtual {v10}, Lcom/google/mlkit/vision/text/Text$TextBlock;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v14, v4}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;-><init>(Landroid/graphics/RectF;Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move/from16 p3, v1

    move/from16 p2, v5

    move/from16 v3, v16

    move/from16 v6, v17

    move/from16 v1, p4

    move/from16 v5, p6

    goto/16 :goto_0

    .line 209
    :cond_4
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move/from16 p3, v1

    move/from16 p2, v5

    move/from16 v3, v16

    move/from16 v6, v17

    move/from16 v1, p4

    move/from16 v5, p6

    goto/16 :goto_0

    .line 217
    :catchall_0
    move-exception v0

    move-object/from16 v4, p0

    goto/16 :goto_9

    .line 215
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    .line 213
    :catch_3
    move-exception v0

    goto :goto_3

    .line 205
    :cond_5
    move/from16 v1, p3

    move/from16 v16, v3

    move-object/from16 p0, v4

    move/from16 p6, v5

    move/from16 v17, v6

    move-object/from16 p1, v7

    move/from16 v5, p2

    move/from16 v1, p4

    move/from16 v5, p6

    goto/16 :goto_0

    .line 217
    :catchall_1
    move-exception v0

    move-object/from16 p0, v4

    goto :goto_9

    .line 215
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    :goto_1
    move-object/from16 p0, v4

    :goto_2
    move-object/from16 v4, p0

    goto :goto_4

    .line 213
    :catch_7
    move-exception v0

    move-object/from16 p0, v4

    .line 214
    :goto_3
    move-object/from16 v4, p0

    goto :goto_7

    .line 217
    :catchall_2
    move-exception v0

    goto :goto_9

    .line 215
    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v0

    goto :goto_4

    :catch_a
    move-exception v0

    .line 218
    :goto_4
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    .line 219
    :cond_6
    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda3;-><init>()V

    new-instance v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda4;

    invoke-direct {v1, v12}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda4;-><init>(Landroid/graphics/Bitmap;)V

    :goto_5
    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_8

    .line 218
    :cond_7
    :goto_6
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_8

    .line 213
    :catch_b
    move-exception v0

    .line 214
    :goto_7
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 218
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    .line 219
    :cond_8
    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda3;-><init>()V

    new-instance v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda4;

    invoke-direct {v1, v12}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda4;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 221
    :goto_8
    return-void

    .line 218
    :goto_9
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_a

    .line 219
    :cond_9
    new-instance v1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda3;-><init>()V

    new-instance v2, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda4;

    invoke-direct {v2, v12}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda4;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_b

    .line 218
    :cond_a
    :goto_a
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 220
    :goto_b
    throw v0

    .line 188
    :cond_b
    :goto_c
    return-void

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f451eb8    # 0.77f
        0x3e19999a    # 0.15f
        0x0
        -0x3dd40000    # -43.0f
        0x3ecccccd    # 0.4f
        0x3f451eb8    # 0.77f
        0x3e19999a    # 0.15f
        0x0
        -0x3dd40000    # -43.0f
        0x3ecccccd    # 0.4f
        0x3f451eb8    # 0.77f
        0x3e19999a    # 0.15f
        0x0
        -0x3dd40000    # -43.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

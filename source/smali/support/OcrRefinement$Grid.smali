.class final Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;
.super Ljava/lang/Object;
.source "OcrRefinement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Grid"
.end annotation


# instance fields
.field final height:I

.field final labels:[I

.field final regions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;",
            ">;"
        }
    .end annotation
.end field

.field final width:I


# direct methods
.method constructor <init>([III)V
    .locals 16

    .line 43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->regions:Ljava/util/ArrayList;

    .line 44
    iput v2, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->width:I

    iput v3, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->height:I

    .line 45
    array-length v4, v1

    new-array v4, v4, [I

    iput-object v4, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->labels:[I

    .line 46
    iget-object v4, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->regions:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v1

    const/4 v7, -0x1

    if-lt v5, v6, :cond_14

    .line 51
    array-length v5, v1

    new-array v6, v5, [I

    .line 52
    move v8, v4

    :goto_1
    iget-object v5, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->labels:[I

    array-length v5, v5

    if-lt v8, v5, :cond_a

    .line 72
    move v5, v4

    :goto_2
    if-lt v5, v3, :cond_0

    .line 88
    return-void

    .line 73
    :cond_0
    nop

    .line 74
    move v6, v4

    :goto_3
    if-lt v6, v2, :cond_1

    .line 72
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 75
    :cond_1
    mul-int v8, v5, v2

    add-int v9, v8, v6

    .line 76
    iget-object v10, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->labels:[I

    aget v10, v10, v9

    if-eq v10, v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 77
    :cond_2
    nop

    .line 78
    move v10, v6

    :goto_4
    if-ge v10, v2, :cond_4

    iget-object v11, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->labels:[I

    add-int v12, v8, v10

    aget v11, v11, v12

    if-eq v11, v7, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 79
    :cond_4
    :goto_5
    if-eqz v6, :cond_9

    if-eq v10, v2, :cond_9

    sub-int v11, v10, v6

    const/16 v12, 0xc

    div-int/lit8 v13, v2, 0x10

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-le v11, v12, :cond_5

    goto :goto_7

    .line 80
    :cond_5
    iget-object v11, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->labels:[I

    add-int/lit8 v9, v9, -0x1

    aget v9, v11, v9

    .line 81
    if-lez v9, :cond_9

    iget-object v11, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->labels:[I

    add-int v12, v8, v10

    aget v11, v11, v12

    if-eq v11, v9, :cond_6

    goto :goto_7

    .line 82
    :cond_6
    iget-object v11, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->regions:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;

    .line 83
    nop

    :goto_6
    if-lt v6, v10, :cond_7

    goto :goto_7

    .line 84
    :cond_7
    add-int v11, v8, v6

    aget v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0x9b

    if-ge v11, v12, :cond_8

    invoke-virtual {v9, v6, v5}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->ink(II)V

    .line 83
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 74
    :cond_9
    :goto_7
    move v6, v10

    goto :goto_3

    .line 53
    :cond_a
    iget-object v5, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->labels:[I

    aget v5, v5, v8

    if-eqz v5, :cond_b

    goto :goto_b

    .line 54
    :cond_b
    iget-object v5, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->regions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 55
    aput v8, v6, v4

    iget-object v5, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->labels:[I

    aput v9, v5, v8

    .line 56
    new-instance v10, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;

    rem-int v5, v8, v2

    div-int v11, v8, v2

    invoke-direct {v10, v5, v11}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;-><init>(II)V

    .line 57
    const/4 v11, 0x1

    move v5, v4

    move v12, v11

    :goto_8
    if-lt v5, v12, :cond_f

    .line 65
    iget v5, v10, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->right:I

    iget v9, v10, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->left:I

    sub-int/2addr v5, v9

    add-int/2addr v5, v11

    iget v9, v10, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->bottom:I

    iget v13, v10, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->top:I

    sub-int/2addr v9, v13

    add-int/2addr v9, v11

    .line 66
    iget v13, v10, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->paper:I

    const/16 v14, 0x69

    if-lt v13, v14, :cond_c

    const/16 v13, 0x8

    if-lt v5, v13, :cond_c

    if-lt v9, v13, :cond_c

    int-to-float v5, v5

    int-to-float v13, v2

    const v14, 0x3f266666    # 0.65f

    mul-float/2addr v13, v14

    cmpg-float v13, v5, v13

    if-gtz v13, :cond_c

    .line 67
    if-gt v9, v2, :cond_c

    iget v13, v10, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->paper:I

    int-to-float v13, v13

    const v14, 0x3ed70a3d    # 0.42f

    mul-float/2addr v5, v14

    int-to-float v9, v9

    mul-float/2addr v5, v9

    .line 66
    cmpl-float v5, v13, v5

    if-ltz v5, :cond_c

    goto :goto_9

    :cond_c
    move v11, v4

    .line 68
    :goto_9
    if-eqz v11, :cond_d

    iget-object v5, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->regions:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 69
    :cond_d
    move v5, v4

    :goto_a
    if-lt v5, v12, :cond_e

    .line 52
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 69
    :cond_e
    iget-object v9, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->labels:[I

    aget v10, v6, v5

    const/4 v11, -0x2

    aput v11, v9, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 58
    :cond_f
    aget v13, v6, v5

    rem-int v14, v13, v2

    div-int v15, v13, v2

    .line 59
    invoke-virtual {v10, v14, v15}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->paper(II)V

    .line 60
    if-lez v14, :cond_10

    add-int/lit8 v4, v13, -0x1

    invoke-direct {v0, v4, v9, v6, v12}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->visit(II[II)I

    move-result v12

    .line 61
    :cond_10
    add-int/lit8 v14, v14, 0x1

    if-ge v14, v2, :cond_11

    add-int/lit8 v4, v13, 0x1

    invoke-direct {v0, v4, v9, v6, v12}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->visit(II[II)I

    move-result v12

    .line 62
    :cond_11
    if-lez v15, :cond_12

    sub-int v4, v13, v2

    invoke-direct {v0, v4, v9, v6, v12}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->visit(II[II)I

    move-result v12

    .line 63
    :cond_12
    add-int/lit8 v15, v15, 0x1

    if-ge v15, v3, :cond_13

    add-int/2addr v13, v2

    invoke-direct {v0, v13, v9, v6, v12}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->visit(II[II)I

    move-result v4

    move v12, v4

    .line 57
    :cond_13
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_8

    .line 48
    :cond_14
    aget v4, v1, v5

    .line 49
    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    const/16 v8, 0xe0

    if-lt v6, v8, :cond_15

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    if-lt v6, v8, :cond_15

    and-int/lit16 v4, v4, 0xff

    if-ge v4, v8, :cond_16

    :cond_15
    iget-object v4, v0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->labels:[I

    aput v7, v4, v5

    .line 47
    :cond_16
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private visit(II[II)I
    .locals 1

    .line 90
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->labels:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->labels:[I

    aput p2, v0, p1

    add-int/lit8 p2, p4, 0x1

    aput p1, p3, p4

    move p4, p2

    .line 91
    :cond_0
    return p4
.end method


# virtual methods
.method at(Landroid/graphics/RectF;FF)Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;
    .locals 11

    .line 94
    const/16 v0, 0xf

    new-array v1, v0, [I

    .line 95
    nop

    .line 96
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x3

    if-lt v3, v5, :cond_4

    .line 101
    move p1, v2

    :goto_1
    if-lt p1, v0, :cond_0

    .line 105
    const/4 p1, 0x0

    return-object p1

    .line 101
    :cond_0
    aget p2, v1, p1

    if-lez p2, :cond_3

    .line 102
    move p3, v2

    move v3, p3

    :goto_2
    if-lt p3, v0, :cond_1

    .line 103
    const/4 p3, 0x6

    if-lt v3, p3, :cond_3

    iget-object p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->regions:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;

    return-object p1

    .line 102
    :cond_1
    aget v4, v1, p3

    if-ne v4, p2, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 101
    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 96
    :cond_4
    move v5, v2

    :goto_3
    const/4 v6, 0x5

    if-lt v5, v6, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_5
    iget v6, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    int-to-float v8, v5

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    const/high16 v8, 0x40a00000    # 5.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float/2addr v6, p2

    float-to-int v6, v6

    .line 98
    iget v7, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v8

    int-to-float v10, v3

    add-float/2addr v10, v9

    mul-float/2addr v8, v10

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    div-float/2addr v7, p3

    float-to-int v7, v7

    .line 99
    add-int/lit8 v8, v4, 0x1

    if-ltz v6, :cond_7

    iget v9, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->width:I

    if-ge v6, v9, :cond_7

    if-ltz v7, :cond_7

    iget v9, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->height:I

    if-lt v7, v9, :cond_6

    goto :goto_4

    :cond_6
    iget-object v9, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->labels:[I

    iget v10, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Grid;->width:I

    mul-int/2addr v7, v10

    add-int/2addr v7, v6

    aget v6, v9, v7

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v6, -0x1

    :goto_5
    aput v6, v1, v4

    .line 96
    add-int/lit8 v5, v5, 0x1

    move v4, v8

    goto :goto_3
.end method

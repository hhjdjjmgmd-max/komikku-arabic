.class public final Leu/kanade/tachiyomi/ui/reader/translation/BubbleTap;
.super Ljava/lang/Object;
.source "BubbleTap.java"


# static fields
.field private static final starts:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Leu/kanade/tachiyomi/ui/reader/translation/BubbleTap;->starts:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static controls(Leu/kanade/tachiyomi/ui/reader/ReaderActivity;)V
    .locals 4

    .line 80
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u062a\u0631\u062c\u0645\u0629 \u0627\u0644\u0641\u0635\u0644"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 81
    const-string v1, "\u0625\u064a\u0642\u0627\u0641 \u0627\u0644\u062a\u0631\u062c\u0645\u0629 \u0648\u062d\u0641\u0638 \u0627\u0644\u062a\u0642\u062f\u0651\u0645"

    const-string v2, "\u062e\u064a\u0627\u0631\u0627\u062a \u0627\u0644\u0639\u0631\u0636 \u0648\u0627\u0644\u0644\u063a\u0629"

    const-string v3, "إعادة ترجمة هاي الصفحة"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Leu/kanade/tachiyomi/ui/reader/translation/BubbleTap$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Leu/kanade/tachiyomi/ui/reader/translation/BubbleTap$$ExternalSyntheticLambda0;-><init>(Leu/kanade/tachiyomi/ui/reader/ReaderActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 83
    const-string v0, "\u0631\u062c\u0648\u0639"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 84
    return-void
.end method

.method public static hit(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;Ljava/io/File;)Z
    .locals 16

    .line 30
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz p3, :cond_12

    if-nez v1, :cond_0

    goto/16 :goto_a

    .line 31
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    sget-object v1, Leu/kanade/tachiyomi/ui/reader/translation/BubbleTap;->starts:Ljava/util/WeakHashMap;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return v2

    .line 36
    :cond_1
    sget-object v4, Leu/kanade/tachiyomi/ui/reader/translation/BubbleTap;->starts:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 37
    if-nez v4, :cond_2

    return v2

    .line 38
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    .line 39
    const/4 v6, 0x3

    if-eq v3, v6, :cond_11

    const/4 v6, 0x5

    if-eq v3, v6, :cond_11

    .line 40
    iget v6, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v4, v8

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    int-to-double v4, v5

    cmpl-double v4, v6, v4

    if-lez v4, :cond_3

    goto/16 :goto_9

    .line 43
    :cond_3
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    return v2

    .line 44
    :cond_4
    sget-object v3, Leu/kanade/tachiyomi/ui/reader/translation/BubbleTap;->starts:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-lez v3, :cond_5

    return v2

    .line 46
    :cond_5
    const/4 v3, 0x2

    new-array v5, v3, [I

    new-array v6, v3, [I

    invoke-virtual {v1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    aget v8, v6, v2

    int-to-float v8, v8

    add-float/2addr v7, v8

    aget v8, v5, v2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    aget v6, v6, v4

    int-to-float v6, v6

    add-float/2addr v8, v6

    aget v5, v5, v4

    int-to-float v5, v5

    sub-float/2addr v8, v5

    .line 49
    instance-of v5, v1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    if-eqz v5, :cond_7

    .line 50
    check-cast v1, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    .line 51
    invoke-virtual {v1, v7, v8}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->viewToSourceCoord(FF)Landroid/graphics/PointF;

    move-result-object v3

    .line 52
    if-nez v3, :cond_6

    return v2

    .line 53
    :cond_6
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getSWidth()I

    move-result v6

    invoke-virtual {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getSHeight()I

    move-result v1

    .line 54
    goto :goto_0

    :cond_7
    instance-of v5, v1, Landroid/widget/ImageView;

    if-eqz v5, :cond_10

    .line 55
    check-cast v1, Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 56
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_8

    .line 57
    :cond_8
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v7, v6

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v8, v6

    new-array v3, v3, [F

    aput v7, v3, v2

    aput v8, v3, v4

    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v5, v3, v2

    aget v3, v3, v4

    .line 58
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 59
    nop

    .line 60
    :goto_0
    :try_start_0
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".text"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 61
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 62
    if-lez v6, :cond_c

    if-lez v1, :cond_c

    if-lez v9, :cond_c

    if-lez v10, :cond_c

    if-ltz v11, :cond_c

    const/16 v12, 0x1000

    if-gt v11, v12, :cond_c

    int-to-double v12, v6

    int-to-double v14, v10

    mul-double/2addr v12, v14

    int-to-double v14, v1

    move-object/from16 p2, v8

    int-to-double v7, v9

    mul-double/2addr v14, v7

    div-double/2addr v12, v14

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v7

    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide v12, 0x3f8eb851eb851eb8L    # 0.015

    cmpl-double v7, v7, v12

    if-lez v7, :cond_9

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 63
    :cond_9
    int-to-float v7, v9

    int-to-float v6, v6

    div-float/2addr v7, v6

    mul-float/2addr v5, v7

    int-to-float v6, v10

    int-to-float v1, v1

    div-float/2addr v6, v1

    mul-float/2addr v3, v6

    .line 64
    move v1, v2

    :goto_1
    if-lt v1, v11, :cond_a

    .line 76
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    const/4 v7, 0x0

    goto/16 :goto_5

    .line 65
    :cond_a
    :try_start_4
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 67
    invoke-virtual {v6, v5, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-nez v6, :cond_b

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    :cond_b
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41c00000    # 24.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 70
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextDirection(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 71
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v3, Landroid/widget/ScrollView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 73
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0631\u062c\u0648\u0639"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->close()V

    .line 74
    return v4

    .line 76
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 62
    :cond_c
    move-object/from16 p2, v8

    const/4 v3, 0x0

    .line 76
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 62
    return v2

    .line 76
    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 p2, v8

    :goto_3
    move-object v7, v0

    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->close()V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_5

    :catchall_5
    move-exception v0

    const/4 v3, 0x0

    :goto_4
    move-object v7, v3

    :goto_5
    if-eqz v7, :cond_d

    if-eq v7, v0, :cond_e

    :try_start_7
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_d
    move-object v7, v0

    :cond_e
    :goto_6
    throw v7
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    .line 77
    :goto_7
    return v2

    .line 56
    :cond_f
    :goto_8
    return v2

    .line 59
    :cond_10
    return v2

    .line 41
    :cond_11
    :goto_9
    sget-object v1, Leu/kanade/tachiyomi/ui/reader/translation/BubbleTap;->starts:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    .line 30
    :cond_12
    :goto_a
    return v2
.end method

.method static synthetic lambda$0(Leu/kanade/tachiyomi/ui/reader/ReaderActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 82
    if-nez p2, :stop_or_options

    invoke-virtual {p0}, Leu/kanade/tachiyomi/ui/reader/ReaderActivity;->retryVisibleTranslationPage()V

    return-void

    :stop_or_options
    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Leu/kanade/tachiyomi/ui/reader/ReaderActivity;->stopChapterModel()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Leu/kanade/tachiyomi/ui/reader/ReaderActivity;->rawTranslationMenu(Z)V

    .line 83
    :goto_0
    return-void
.end method

.method public static save(Ljava/io/File;Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".text"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 21
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 22
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    .line 27
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    return-void

    .line 22
    :cond_0
    :try_start_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    .line 23
    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getBounds()Landroid/graphics/RectF;

    move-result-object p2

    .line 24
    iget v2, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 25
    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    move-object v0, p0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    move-object p0, v0

    :cond_2
    throw p0
.end method

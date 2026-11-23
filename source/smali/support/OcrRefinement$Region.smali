.class final Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;
.super Ljava/lang/Object;
.source "OcrRefinement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Region"
.end annotation


# instance fields
.field bottom:I

.field final boxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;",
            ">;"
        }
    .end annotation
.end field

.field ink:I

.field inkBottom:I

.field inkLeft:I

.field inkRight:I

.field inkTop:I

.field left:I

.field paper:I

.field right:I

.field top:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const v0, 0x7fffffff

    iput v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkLeft:I

    iput v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkTop:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->boxes:Ljava/util/List;

    .line 26
    iput p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->right:I

    iput p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->left:I

    iput p2, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->bottom:I

    iput p2, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->top:I

    return-void
.end method


# virtual methods
.method ink(II)V
    .locals 1

    .line 33
    iget v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->ink:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->ink:I

    .line 34
    iget v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkLeft:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkLeft:I

    iget v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkRight:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkRight:I

    .line 35
    iget p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkTop:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkTop:I

    iget p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkBottom:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->inkBottom:I

    .line 36
    return-void
.end method

.method paper(II)V
    .locals 1

    .line 28
    iget v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->paper:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->paper:I

    .line 29
    iget v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->left:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->left:I

    iget v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->right:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->right:I

    .line 30
    iget p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->top:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->top:I

    iget p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->bottom:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$Region;->bottom:I

    .line 31
    return-void
.end method

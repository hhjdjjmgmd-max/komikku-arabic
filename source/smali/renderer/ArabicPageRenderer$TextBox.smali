.class final Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
.super Ljava/lang/Object;
.source "ArabicPageRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextBox"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013H\u00d6\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0005H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;",
        "",
        "bounds",
        "Landroid/graphics/RectF;",
        "text",
        "",
        "<init>",
        "(Landroid/graphics/RectF;Ljava/lang/String;)V",
        "getBounds",
        "()Landroid/graphics/RectF;",
        "getText",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "Komikku:app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final bounds:Landroid/graphics/RectF;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "text"    # Ljava/lang/String;

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->bounds:Landroid/graphics/RectF;

    iput-object p2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->text:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;Landroid/graphics/RectF;Ljava/lang/String;ILjava/lang/Object;)Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->bounds:Landroid/graphics/RectF;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->text:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->copy(Landroid/graphics/RectF;Ljava/lang/String;)Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->bounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Landroid/graphics/RectF;Ljava/lang/String;)Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    invoke-direct {v0, p1, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;-><init>(Landroid/graphics/RectF;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    iget-object v3, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->bounds:Landroid/graphics/RectF;

    iget-object v4, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->bounds:Landroid/graphics/RectF;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->text:Ljava/lang/String;

    iget-object v1, v1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->text:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBounds()Landroid/graphics/RectF;
    .locals 1

    .line 243
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->bounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->bounds:Landroid/graphics/RectF;

    iget-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;->text:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TextBox(bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

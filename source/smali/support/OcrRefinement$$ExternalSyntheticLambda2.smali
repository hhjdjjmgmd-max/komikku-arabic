.class public final synthetic Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 2

    .line 0
    check-cast p1, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;

    invoke-static {p1}, Leu/kanade/tachiyomi/ui/reader/translation/OcrRefinement;->lambda$2(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer$TextBox;)D

    move-result-wide v0

    return-wide v0
.end method

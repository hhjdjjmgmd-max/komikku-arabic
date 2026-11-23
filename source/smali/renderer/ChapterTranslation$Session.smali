.class final Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
.super Ljava/lang/Object;
.source "ChapterTranslation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Session"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001d\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00190\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0014\"\u0004\u0008$\u0010\u0016R\u001a\u0010%\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0014\"\u0004\u0008\'\u0010\u0016R\u001c\u0010(\u001a\u0004\u0018\u00010)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u0006."
    }
    d2 = {
        "Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;",
        "",
        "chapter",
        "Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;",
        "language",
        "Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;",
        "pages",
        "",
        "Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;",
        "currentIndex",
        "",
        "<init>",
        "(Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;Ljava/util/List;I)V",
        "getChapter",
        "()Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;",
        "getLanguage",
        "()Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;",
        "getPages",
        "()Ljava/util/List;",
        "getCurrentIndex",
        "()I",
        "setCurrentIndex",
        "(I)V",
        "results",
        "",
        "Ljava/io/File;",
        "getResults",
        "()Ljava/util/Map;",
        "showArabic",
        "",
        "getShowArabic",
        "()Z",
        "setShowArabic",
        "(Z)V",
        "processed",
        "getProcessed",
        "setProcessed",
        "failed",
        "getFailed",
        "setFailed",
        "job",
        "Lkotlinx/coroutines/Job;",
        "getJob",
        "()Lkotlinx/coroutines/Job;",
        "setJob",
        "(Lkotlinx/coroutines/Job;)V",
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
.field private final chapter:Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

.field private currentIndex:I

.field retryPage:Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

.field final requestedIndex:Lkotlinx/coroutines/flow/MutableStateFlow;

.field private failed:I

.field private job:Lkotlinx/coroutines/Job;

.field private final language:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

.field private final pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;",
            ">;"
        }
    .end annotation
.end field

.field private processed:I

.field public restoredOnly:Z

.field public restoredPages:Ljava/util/Set;

.field private final results:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public savedDirectory:Ljava/io/File;

.field private showArabic:Z


# direct methods
.method public constructor <init>(Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;Ljava/util/List;I)V
    .locals 1
    .param p1, "chapter"    # Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;
    .param p2, "language"    # Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;
    .param p3, "pages"    # Ljava/util/List;
    .param p4, "currentIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;",
            "Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;",
            "Ljava/util/List<",
            "+",
            "Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "chapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pages"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->chapter:Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

    .line 156
    iput-object p2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->language:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    .line 157
    iput-object p3, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->pages:Ljava/util/List;

    .line 158
    iput p4, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->currentIndex:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->requestedIndex:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 160
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->results:Ljava/util/Map;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->showArabic:Z

    .line 154
    return-void
.end method


# virtual methods
.method public final getChapter()Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;
    .locals 1

    .line 155
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->chapter:Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

    return-object v0
.end method

.method public final getCurrentIndex()I
    .locals 1

    .line 158
    iget v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->currentIndex:I

    return v0
.end method

.method public final getFailed()I
    .locals 1

    .line 163
    iget v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->failed:I

    return v0
.end method

.method public final getJob()Lkotlinx/coroutines/Job;
    .locals 1

    .line 164
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->job:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final getLanguage()Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;
    .locals 1

    .line 156
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->language:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    return-object v0
.end method

.method public final getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->pages:Ljava/util/List;

    return-object v0
.end method

.method public final getProcessed()I
    .locals 1

    .line 162
    iget v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->processed:I

    return v0
.end method

.method public final getResults()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->results:Ljava/util/Map;

    return-object v0
.end method

.method public final getShowArabic()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->showArabic:Z

    return v0
.end method

.method public final setCurrentIndex(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 158
    iput p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->currentIndex:I

    invoke-direct {p0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->publishRequestedIndex()V

    return-void
.end method

.method public final setFailed(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 163
    iput p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->failed:I

    return-void
.end method

.method public final setJob(Lkotlinx/coroutines/Job;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlinx/coroutines/Job;

    .line 164
    iput-object p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setProcessed(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 162
    iput p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->processed:I

    return-void
.end method

.method public final setShowArabic(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 161
    iput-boolean p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->showArabic:Z

    invoke-direct {p0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->publishRequestedIndex()V

    return-void
.end method

.method private publishRequestedIndex()V
    .locals 2

    iget-boolean v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->showArabic:Z

    if-eqz v0, :hidden

    iget v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->currentIndex:I

    goto :publish

    :hidden
    const/4 v0, -0x1

    :publish
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->requestedIndex:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

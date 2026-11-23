.class public final Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
.super Ljava/lang/Object;
.source "ChapterTranslation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Progress;,
        Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChapterTranslation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChapterTranslation.kt\neu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,167:1\n221#2:168\n222#2:170\n1#3:169\n2199#4,2:171\n296#4,2:180\n117#5,7:173\n125#5,2:182\n*S KotlinDebug\n*F\n+ 1 ChapterTranslation.kt\neu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation\n*L\n58#1:168\n58#1:170\n65#1:171,2\n87#1:180,2\n77#1:173,7\n77#1:182,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001:\u0002$%B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u0012J\u0016\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u0010H\u0082@\u00a2\u0006\u0002\u0010\u001eJ\u0016\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\u0014H\u0082@\u00a2\u0006\u0002\u0010 J$\u0010!\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u00102\u0008\u0008\u0002\u0010\"\u001a\u00020\u001a2\u0008\u0008\u0002\u0010#\u001a\u00020\u001aH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u000c\u0008\'\u0012\u0008\u0008(\u0012\u0004\u0008\u0003\u0010\u0000\u00a8\u0006&"
    }
    d2 = {
        "Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "cache",
        "Ljava/io/File;",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineScope;Ljava/io/File;)V",
        "status",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Progress;",
        "getStatus",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "renderLock",
        "Lkotlinx/coroutines/sync/Mutex;",
        "session",
        "Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;",
        "start",
        "",
        "page",
        "Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;",
        "language",
        "Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;",
        "onPageSelected",
        "showArabic",
        "show",
        "",
        "close",
        "translate",
        "active",
        "(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitImage",
        "(Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateProgress",
        "preparing",
        "modelError",
        "Progress",
        "Session",
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


# instance fields
.field private final cache:Ljava/io/File;

.field private lastChecked:Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

.field private final renderLock:Lkotlinx/coroutines/sync/Mutex;

.field private restoringOnly:Z

.field private autoTranslationLanguage:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private session:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

.field private final status:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Progress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->$stable:I

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Ljava/io/File;)V
    .locals 3
    .param p1, "scope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p2, "cache"    # Ljava/io/File;

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->cache:Ljava/io/File;

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->status:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 25
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->renderLock:Lkotlinx/coroutines/sync/Mutex;

    .line 22
    return-void
.end method

.method public static final synthetic access$awaitImage(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .param p1, "page"    # Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 22
    invoke-direct {p0, p1, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->awaitImage(Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getCache$p(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;)Ljava/io/File;
    .locals 1
    .param p0, "$this"    # Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;

    .line 22
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->cache:Ljava/io/File;

    return-object v0
.end method

.method public static final synthetic access$translate(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .param p1, "active"    # Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 22
    invoke-direct {p0, p1, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->translate(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final awaitImage(Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "page"    # Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$1;

    iget v1, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$1;

    invoke-direct {v0, p0, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$1;-><init>(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 123
    iget v3, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v2, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$1;->L$1:Ljava/lang/Object;

    check-cast v2, Leu/kanade/tachiyomi/ui/reader/loader/PageLoader;

    .local v2, "loader":Leu/kanade/tachiyomi/ui/reader/loader/PageLoader;
    iget-object v3, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$1;->L$0:Ljava/lang/Object;

    move-object p1, v3

    check-cast p1, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v1

    goto :goto_2

    .end local v2    # "loader":Leu/kanade/tachiyomi/ui/reader/loader/PageLoader;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getChapter()Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

    move-result-object v3

    invoke-virtual {v3}, Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;->getPageLoader()Leu/kanade/tachiyomi/ui/reader/loader/PageLoader;

    move-result-object v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 125
    .local v3, "loader":Leu/kanade/tachiyomi/ui/reader/loader/PageLoader;
    :cond_1
    instance-of v6, v3, Leu/kanade/tachiyomi/ui/reader/loader/HttpPageLoader;

    if-nez v6, :cond_3

    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getStatus()Leu/kanade/tachiyomi/source/model/Page$State;

    move-result-object v2

    sget-object v6, Leu/kanade/tachiyomi/source/model/Page$State$Ready;->INSTANCE:Leu/kanade/tachiyomi/source/model/Page$State$Ready;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getStream()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 126
    :cond_3
    new-instance v5, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;

    const/4 v6, 0x0

    invoke-direct {v5, v3, p1, v6}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$2;-><init>(Leu/kanade/tachiyomi/ui/reader/loader/PageLoader;Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$awaitImage$1;->label:I

    const-wide/32 v6, 0xd6d8

    invoke-static {v6, v7, v5, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_4

    .line 123
    return-object v2

    .line 126
    :cond_4
    move-object v2, v3

    .end local v3    # "loader":Leu/kanade/tachiyomi/ui/reader/loader/PageLoader;
    .restart local v2    # "loader":Leu/kanade/tachiyomi/ui/reader/loader/PageLoader;
    :goto_2
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private chapterFolder(Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;)Ljava/io/File;
    .locals 6

    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;->getPages()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;->getChapter()Leu/kanade/tachiyomi/data/database/models/Chapter;

    move-result-object v5

    invoke-interface {v5}, Leu/kanade/tachiyomi/data/database/models/Chapter;->getManga_id()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v5}, Leu/kanade/tachiyomi/data/database/models/Chapter;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5}, Leu/kanade/tachiyomi/data/database/models/Chapter;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->cache:Ljava/io/File;

    invoke-static/range {v0 .. v4}, Leu/kanade/tachiyomi/ui/reader/translation/SavedChapterPages;->chapter(Ljava/io/File;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static dropRestored(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->restoredPages:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private restore(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;)V
    .locals 10

    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getChapter()Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

    move-result-object v0

    invoke-direct {p0, v0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->chapterFolder(Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getLanguage()Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leu/kanade/tachiyomi/ui/reader/translation/SavedChapterPages;->language(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->savedDirectory:Ljava/io/File;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p1, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->restoredPages:Ljava/util/Set;

    invoke-static {v0}, Leu/kanade/tachiyomi/ui/reader/translation/SavedChapterPages;->entries(Ljava/io/File;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getPages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    invoke-virtual {v4}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getIndex()I

    move-result v5

    invoke-static {v0, v5, v1}, Leu/kanade/tachiyomi/ui/reader/translation/SavedChapterPages;->rendered(Ljava/io/File;ILjava/util/Set;)Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getResults()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getTranslatedImage$Komikku_app_debug()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    invoke-interface {v7, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-static {v5, v1}, Leu/kanade/tachiyomi/ui/reader/translation/SavedChapterPages;->unchanged(ILjava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    iget-object v8, p1, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->retryPage:Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    if-eq v4, v8, :goto_0

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->setProcessed(I)V

    return-void
.end method

.method private final translate(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 28
    .param p1, "active"    # Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    instance-of v0, v7, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;

    if-eqz v0, :cond_0

    move-object v0, v7

    check-cast v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;

    iget v2, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;

    invoke-direct {v0, v1, v7}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;-><init>(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v0

    .local v8, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v9, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->result:Ljava/lang/Object;

    .local v9, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    .line 70
    iget v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->label:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    packed-switch v0, :pswitch_data_0

    .end local p0    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    move-object/from16 v3, p1

    .end local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$result":Ljava/lang/Object;
    .restart local p0    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    :resume_viewport
    move-object/from16 v16, v9

    move-object/from16 v21, v1

    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$0:Ljava/lang/Object;
    check-cast v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    move-object/from16 v2, v0
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$1:Ljava/lang/Object;
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object/from16 v3, v0
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$2:Ljava/lang/Object;
    check-cast v0, Ljava/io/File;
    move-object/from16 v12, v0
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$3:Ljava/lang/Object;
    check-cast v0, Lkotlinx/coroutines/sync/Mutex;
    move-object/from16 v13, v0
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$4:Ljava/lang/Object;
    check-cast v0, Ljava/io/Closeable;
    move-object/from16 v5, v0
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$5:Ljava/lang/Object;
    check-cast v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    move-object/from16 v23, v0
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$6:Ljava/lang/Object;
    check-cast v0, Ljava/lang/Boolean;
    move-object/from16 v15, v0
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$7:Ljava/lang/Object;
    check-cast v0, Ljava/util/List;
    move-object/from16 v14, v0
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$8:Ljava/lang/Object;
    check-cast v0, Ljava/lang/Throwable;
    move-object/from16 v1, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x1

    move/from16 p1, v11

    iget-object v9, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$9:Ljava/lang/Object;

    move-object/from16 v0, v16

    :try_viewport_resume
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :end_viewport_resume
    .catchall {:try_viewport_resume .. :end_viewport_resume} :catchall_e

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v2, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v2, "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v3, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$0:Ljava/lang/Object;

    check-cast v3, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

    .end local p1    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .local v3, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_15

    .end local v2    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v3    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local p1    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :pswitch_1
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .restart local v2    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

    .end local p1    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v3    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :try_start_0
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v27, v3

    move-object v3, v2

    move-object/from16 v2, v27

    goto/16 :goto_11

    .line 119
    :catchall_0
    move-exception v0

    move-object v5, v2

    move-object v2, v3

    goto/16 :goto_14

    .line 70
    .end local v2    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v3    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local p1    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :pswitch_2
    const/4 v2, 0x0

    .local v2, "$i$f$withLock\\1\\77":I
    const/4 v3, 0x0

    .local v3, "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    const/4 v4, 0x0

    .local v4, "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$9:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    .local v5, "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$8:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/io/File;

    .local v6, "output\\3":Ljava/io/File;
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$7:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/util/List;

    .local v14, "pending\\3":Ljava/util/List;
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$6:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/lang/Boolean;

    .local v15, "downloaded\\3":Ljava/lang/Boolean;
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$5:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

    .local v16, "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$4:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/io/Closeable;

    const/16 v18, 0x0

    .local v18, "owner\\1":Ljava/lang/Object;
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$3:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lkotlinx/coroutines/sync/Mutex;

    .local v19, "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$2:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/io/File;

    .local v20, "destination":Ljava/io/File;
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$1:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v21, "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$0:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

    .end local p1    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .local v22, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :try_start_1
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v11, v16

    move-object/from16 v23, v22

    move-object/from16 v16, v9

    move-object/from16 v22, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v19

    move/from16 v19, v12

    move-object v12, v13

    move-object/from16 v13, v17

    goto/16 :goto_8

    .line 97
    :catch_0
    move-exception v0

    move-object/from16 v11, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v19

    move/from16 v19, v12

    move-object v12, v13

    move-object/from16 v13, v17

    goto/16 :goto_9

    .line 95
    :catch_1
    move-exception v0

    goto/16 :goto_b

    .line 70
    .end local v2    # "$i$f$withLock\\1\\77":I
    .end local v3    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .end local v4    # "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .end local v5    # "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .end local v6    # "output\\3":Ljava/io/File;
    .end local v14    # "pending\\3":Ljava/util/List;
    .end local v15    # "downloaded\\3":Ljava/lang/Boolean;
    .end local v16    # "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local v18    # "owner\\1":Ljava/lang/Object;
    .end local v19    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .end local v20    # "destination":Ljava/io/File;
    .end local v21    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v22    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local p1    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :pswitch_3
    const/4 v2, 0x0

    .restart local v2    # "$i$f$withLock\\1\\77":I
    const/4 v3, 0x0

    .restart local v3    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    const/4 v0, 0x0

    .local v0, "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    iget-object v4, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$5:Ljava/lang/Object;

    check-cast v4, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

    .local v4, "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    iget-object v5, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$4:Ljava/lang/Object;

    move-object/from16 v17, v5

    check-cast v17, Ljava/io/Closeable;

    const/16 v18, 0x0

    .restart local v18    # "owner\\1":Ljava/lang/Object;
    iget-object v5, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$3:Ljava/lang/Object;

    move-object/from16 v19, v5

    check-cast v19, Lkotlinx/coroutines/sync/Mutex;

    .restart local v19    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    iget-object v5, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$2:Ljava/lang/Object;

    move-object/from16 v20, v5

    check-cast v20, Ljava/io/File;

    .restart local v20    # "destination":Ljava/io/File;
    iget-object v5, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$1:Ljava/lang/Object;

    move-object/from16 v21, v5

    check-cast v21, Lkotlin/jvm/internal/Ref$ObjectRef;

    .restart local v21    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v5, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$0:Ljava/lang/Object;

    move-object/from16 v22, v5

    check-cast v22, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

    .end local p1    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v22    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :try_start_2
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v11, v2

    move v13, v3

    move-object v14, v4

    move-object v2, v9

    move-object/from16 v15, v17

    move-object/from16 v16, v19

    move/from16 v19, v12

    goto/16 :goto_3

    .line 78
    .end local v0    # "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .end local v4    # "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    :catchall_1
    move-exception v0

    move-object/from16 v5, v17

    move-object/from16 v6, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v1

    move-object v1, v0

    goto/16 :goto_c

    .line 70
    .end local v2    # "$i$f$withLock\\1\\77":I
    .end local v3    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .end local v18    # "owner\\1":Ljava/lang/Object;
    .end local v19    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .end local v20    # "destination":Ljava/io/File;
    .end local v21    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v22    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local p1    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :pswitch_4
    const/4 v0, 0x0

    .local v0, "$i$f$withLock\\1\\77":I
    const/4 v2, 0x0

    .local v2, "owner\\1":Ljava/lang/Object;
    iget-object v3, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    .local v3, "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    iget-object v4, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    .local v4, "destination":Ljava/io/File;
    iget-object v5, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v5, "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v6, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$0:Ljava/lang/Object;

    check-cast v6, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

    .end local p1    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .local v6, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :try_start_3
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v18, v2

    move v2, v0

    goto/16 :goto_2

    .line 119
    .end local v0    # "$i$f$withLock\\1\\77":I
    .end local v2    # "owner\\1":Ljava/lang/Object;
    .end local v3    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .end local v4    # "destination":Ljava/io/File;
    :catchall_2
    move-exception v0

    move-object v2, v6

    goto/16 :goto_14

    .line 112
    :catch_2
    move-exception v0

    move-object v11, v1

    move-object v12, v6

    goto/16 :goto_f

    .line 110
    :catch_3
    move-exception v0

    move-object v2, v6

    goto/16 :goto_13

    .line 70
    .end local v5    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local p1    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :pswitch_5
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .restart local v5    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

    .end local p1    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .local v2, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :try_start_4
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v0, v9

    goto :goto_1

    .line 119
    :catchall_3
    move-exception v0

    goto/16 :goto_14

    .line 112
    :catch_4
    move-exception v0

    move-object v11, v1

    move-object v12, v2

    goto/16 :goto_f

    .line 110
    :catch_5
    move-exception v0

    goto/16 :goto_13

    .line 70
    .end local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local v5    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local p1    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :pswitch_6
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v5, v0

    .line 72
    .restart local v5    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    nop

    .line 73
    nop

    .line 74
    :try_start_5
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1;

    invoke-direct {v2, v1, v5, v13}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1;-><init>(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_16
    .catchall {:try_start_5 .. :try_end_5} :catchall_19

    move-object/from16 v3, p1

    :try_start_6
    iput-object v3, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$0:Ljava/lang/Object;

    iput-object v5, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$1:Ljava/lang/Object;

    iput v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->label:I

    invoke-static {v0, v2, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_14
    .catchall {:try_start_6 .. :try_end_6} :catchall_18

    if-ne v0, v10, :cond_1

    .line 70
    return-object v10

    .line 74
    :cond_1
    move-object v2, v3

    .line 70
    .end local p1    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :goto_1
    :try_start_7
    check-cast v0, Ljava/io/File;

    .line 77
    .local v0, "destination":Ljava/io/File;
    iget-object v3, v1, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->renderLock:Lkotlinx/coroutines/sync/Mutex;

    .line 173
    .restart local v3    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    const/4 v4, 0x0

    .local v4, "owner\\1":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 177
    .local v6, "$i$f$withLock\\1\\77":I
    iput-object v2, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$0:Ljava/lang/Object;

    iput-object v5, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$1:Ljava/lang/Object;

    iput-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$2:Ljava/lang/Object;

    iput-object v3, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$3:Ljava/lang/Object;

    const/4 v14, 0x2

    iput v14, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->label:I

    invoke-interface {v3, v4, v8}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12
    .catchall {:try_start_7 .. :try_end_7} :catchall_17

    if-ne v14, v10, :cond_2

    .line 70
    return-object v10

    .line 177
    :cond_2
    move/from16 v18, v6

    move-object v6, v2

    move/from16 v2, v18

    move-object/from16 v18, v4

    move-object v4, v0

    .line 178
    .end local v0    # "destination":Ljava/io/File;
    .local v2, "$i$f$withLock\\1\\77":I
    .local v4, "destination":Ljava/io/File;
    .local v6, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v18    # "owner\\1":Ljava/lang/Object;
    :goto_2
    iget-object v0, v6, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->savedDirectory:Ljava/io/File;

    if-eqz v0, :cond_3

    move-object v4, v0

    :cond_3
    nop

    .line 179
    const/4 v14, 0x0

    .line 78
    .local v14, "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    :try_start_8
    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

    invoke-virtual {v6}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getLanguage()Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    move-result-object v15

    invoke-direct {v0, v15}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;-><init>(Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;)V

    move-object v15, v0

    check-cast v15, Ljava/io/Closeable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_15

    :try_start_9
    move-object v0, v15

    check-cast v0, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;

    .local v0, "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    const/16 v16, 0x0

    .line 79
    .local v16, "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    new-instance v11, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$downloaded$1;

    invoke-direct {v11, v0, v13}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$downloaded$1;-><init>(Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iput-object v6, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$0:Ljava/lang/Object;

    iput-object v5, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$1:Ljava/lang/Object;

    iput-object v4, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$2:Ljava/lang/Object;

    iput-object v3, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$3:Ljava/lang/Object;

    iput-object v15, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$4:Ljava/lang/Object;

    iput-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$5:Ljava/lang/Object;

    move/from16 v19, v12

    const/4 v12, 0x3

    iput v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->label:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_12

    move/from16 p1, v14

    .end local v14    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .local p1, "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    const-wide/32 v13, 0x2bf20

    :try_start_a
    invoke-static {v13, v14, v11, v8}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_11

    if-ne v11, v10, :cond_4

    .line 70
    return-object v10

    .line 79
    :cond_4
    move-object v13, v11

    move v11, v2

    move-object v2, v13

    move/from16 v13, p1

    move-object v14, v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v0, v16

    move-object/from16 v16, v3

    .line 70
    .end local v2    # "$i$f$withLock\\1\\77":I
    .end local v3    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .end local v4    # "destination":Ljava/io/File;
    .end local v5    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local p1    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .local v0, "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .local v11, "$i$f$withLock\\1\\77":I
    .local v13, "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .local v14, "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local v16, "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .restart local v20    # "destination":Ljava/io/File;
    .restart local v21    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v22    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :goto_3
    :try_start_b
    check-cast v2, Ljava/lang/Boolean;

    .line 83
    .local v2, "downloaded\\3":Ljava/lang/Boolean;
    invoke-static/range {v19 .. v19}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_10

    if-eqz v3, :cond_c

    .line 84
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v27, v22

    move-object/from16 v22, v2

    move-object/from16 v2, v27

    .local v2, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .local v22, "downloaded\\3":Ljava/lang/Boolean;
    :try_start_c
    invoke-static/range {v1 .. v6}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->updateProgress$default(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;ZZILjava/lang/Object;)V

    .line 85
    invoke-virtual {v2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getPages()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->dropRestored(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;Ljava/util/List;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_f

    move v4, v0

    move/from16 p1, v13

    move-object/from16 v23, v14

    move-object v5, v15

    move-object/from16 v13, v16

    move-object/from16 v12, v20

    move-object/from16 v3, v21

    move-object/from16 v15, v22

    move-object/from16 v21, p0

    move-object v14, v1

    const/4 v1, 0x0

    move-object/from16 v6, v18

    .line 86
    .end local v0    # "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .end local v16    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .end local v18    # "owner\\1":Ljava/lang/Object;
    .end local v20    # "destination":Ljava/io/File;
    .end local v22    # "downloaded\\3":Ljava/lang/Boolean;
    .end local p0    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v3, "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v4, "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .local v6, "owner\\1":Ljava/lang/Object;
    .local v7, "$completion":Lkotlin/coroutines/Continuation;
    .local v12, "destination":Ljava/io/File;
    .local v13, "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .local v14, "pending\\3":Ljava/util/List;
    .restart local v15    # "downloaded\\3":Ljava/lang/Boolean;
    .local v21, "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .local v23, "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .restart local p1    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    :goto_4
    :try_start_d
    move-object v0, v14

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v2, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->requestedIndex:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v14, v0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->closestPage(Ljava/util/List;I)Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    move-result-object v20

    if-nez v20, :cond_8

    iput-object v2, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$0:Ljava/lang/Object;
    iput-object v3, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$1:Ljava/lang/Object;
    iput-object v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$2:Ljava/lang/Object;
    iput-object v13, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$3:Ljava/lang/Object;
    iput-object v5, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$4:Ljava/lang/Object;
    move-object/from16 v0, v23
    iput-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$5:Ljava/lang/Object;
    iput-object v15, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$6:Ljava/lang/Object;
    iput-object v14, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$7:Ljava/lang/Object;
    iput-object v1, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$8:Ljava/lang/Object;
    iput-object v9, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$9:Ljava/lang/Object;

    const/4 v0, 0x7

    iput v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->label:I

    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/PageIsRequested;

    invoke-direct {v0, v14}, Leu/kanade/tachiyomi/ui/reader/translation/PageIsRequested;-><init>(Ljava/util/List;)V

    move-object/from16 v24, v0

    iget-object v0, v2, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->requestedIndex:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 v25, v0

    move-object/from16 v26, v8

    invoke-static/range {v24 .. v26}, Leu/kanade/tachiyomi/ui/reader/translation/PageIsRequested;->await(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    if-ne v0, v10, :goto_4

    return-object v10

    :cond_8
    move/from16 v26, v4

    move-object/from16 v0, v20

    iget-object v4, v2, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->retryPage:Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    if-ne v0, v4, :ordinary_scan

    const/4 v4, 0x1

    goto :set_scan

    :ordinary_scan
    const/4 v4, 0x0

    :set_scan
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;->setRetryScan(Z)V

    move-object/from16 v22, v20

    move-object/from16 v4, v22

    .line 88
    .local v4, "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    :try_start_11
    invoke-interface {v14, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Ljava/io/File;

    move-object/from16 v22, v4

    .end local v4    # "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .local v22, "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    invoke-virtual/range {v22 .. v22}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getIndex()I

    move-result v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    move-object/from16 p2, v7

    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .local p2, "$completion":Lkotlin/coroutines/Continuation;
    :try_start_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".img"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v12, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    move-object/from16 v24, v0

    .line 90
    .local v24, "output\\3":Ljava/io/File;
    nop

    .line 91
    :try_start_13
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v20, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;

    const/16 v25, 0x0

    invoke-direct/range {v20 .. v25}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$2$1$rendered$1;-><init>(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    :try_end_13
    .catch Ljava/util/concurrent/CancellationException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    move-object/from16 v16, v9

    move-object/from16 v4, v22

    move-object/from16 v9, v23

    move-object/from16 v7, v24

    .end local v22    # "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .end local v23    # "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local v24    # "output\\3":Ljava/io/File;
    .restart local v4    # "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .local v7, "output\\3":Ljava/io/File;
    .local v9, "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local v16, "$result":Ljava/lang/Object;
    move/from16 v18, v11

    .end local v11    # "$i$f$withLock\\1\\77":I
    .local v18, "$i$f$withLock\\1\\77":I
    :try_start_14
    move-object/from16 v11, v20

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iput-object v2, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$0:Ljava/lang/Object;

    iput-object v3, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$1:Ljava/lang/Object;

    iput-object v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$2:Ljava/lang/Object;

    iput-object v13, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$3:Ljava/lang/Object;

    iput-object v5, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$4:Ljava/lang/Object;

    iput-object v9, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$5:Ljava/lang/Object;
    :try_end_14
    .catch Ljava/util/concurrent/CancellationException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    move-object/from16 v20, v2

    .end local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .local v20, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :try_start_15
    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$6:Ljava/lang/Object;

    iput-object v14, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$7:Ljava/lang/Object;

    iput-object v7, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$8:Ljava/lang/Object;

    iput-object v4, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$9:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->label:I

    invoke-static {v0, v11, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_15
    .catch Ljava/util/concurrent/CancellationException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    if-ne v0, v10, :cond_9

    .line 70
    return-object v10

    .line 91
    :cond_9
    move-object v2, v12

    move-object v12, v1

    move-object/from16 v1, v21

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object v11, v9

    move/from16 v2, v18

    move-object/from16 v23, v20

    move/from16 v3, p1

    move-object v9, v0

    move-object/from16 v18, v6

    move-object v6, v7

    move-object/from16 v20, v13

    move-object/from16 v7, p2

    move-object v13, v5

    move-object v5, v4

    move/from16 v4, v26

    .end local v9    # "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local v12    # "destination":Ljava/io/File;
    .end local v13    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .end local v26    # "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .end local p1    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v1, "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .local v2, "$i$f$withLock\\1\\77":I
    .local v3, "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .local v4, "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .local v5, "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .local v6, "output\\3":Ljava/io/File;
    .local v7, "$completion":Lkotlin/coroutines/Continuation;
    .local v11, "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local v18, "owner\\1":Ljava/lang/Object;
    .local v20, "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .local v21, "destination":Ljava/io/File;
    .local v22, "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v23, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :goto_8
    :try_start_16
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_16
    .catch Ljava/util/concurrent/CancellationException; {:try_start_16 .. :try_end_16} :catch_7
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    move-object/from16 v26, v11

    move-object/from16 v25, v15

    move-object v15, v10

    move-object v10, v5

    move-object/from16 v5, v23

    move-object/from16 v24, v14

    move-object v11, v6

    move-object v14, v8

    move-object/from16 v23, v20

    move/from16 v20, v2

    move v2, v4

    move-object v4, v1

    move-object v1, v12

    move-object v12, v7

    goto/16 :goto_a

    .line 78
    .end local v4    # "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .end local v5    # "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .end local v6    # "output\\3":Ljava/io/File;
    .end local v11    # "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local v14    # "pending\\3":Ljava/util/List;
    .end local v15    # "downloaded\\3":Ljava/lang/Boolean;
    :catchall_5
    move-exception v0

    move-object v5, v13

    move-object/from16 v9, v16

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v6, v23

    move-object/from16 v21, v1

    move-object v1, v0

    goto/16 :goto_c

    .line 97
    .restart local v4    # "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .restart local v5    # "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .restart local v6    # "output\\3":Ljava/io/File;
    .restart local v11    # "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .restart local v14    # "pending\\3":Ljava/util/List;
    .restart local v15    # "downloaded\\3":Ljava/lang/Boolean;
    :catch_6
    move-exception v0

    move-object/from16 v9, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v23

    goto/16 :goto_9

    .line 95
    :catch_7
    move-exception v0

    move-object/from16 v17, v13

    move-object/from16 v9, v16

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v16, v11

    goto/16 :goto_b

    .line 97
    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .end local v2    # "$i$f$withLock\\1\\77":I
    .end local v5    # "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .end local v11    # "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local v22    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v23    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .local v3, "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v4, "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .local v6, "owner\\1":Ljava/lang/Object;
    .local v7, "output\\3":Ljava/io/File;
    .restart local v9    # "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .restart local v12    # "destination":Ljava/io/File;
    .restart local v13    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .local v18, "$i$f$withLock\\1\\77":I
    .local v20, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .local v21, "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .restart local v26    # "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .restart local p1    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catch_8
    move-exception v0

    move-object v2, v12

    move-object v12, v1

    move-object/from16 v1, v21

    move-object/from16 v21, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v9

    move-object v9, v2

    move-object/from16 v22, v3

    move/from16 v2, v18

    move-object/from16 v11, v20

    move/from16 v3, p1

    move-object/from16 v18, v6

    move-object v6, v7

    move-object/from16 v20, v13

    move-object/from16 v7, p2

    move-object v13, v5

    move-object v5, v4

    move/from16 v4, v26

    goto/16 :goto_9

    .line 95
    :catch_9
    move-exception v0

    move-object/from16 v1, v16

    move-object/from16 v16, v9

    move-object v9, v1

    move-object/from16 v17, v5

    move-object/from16 v19, v13

    move/from16 v2, v18

    move-object/from16 v22, v20

    move-object/from16 v1, v21

    move-object/from16 v21, v3

    move-object v5, v4

    move-object/from16 v18, v6

    move-object v6, v7

    move-object/from16 v20, v12

    move/from16 v4, v26

    move/from16 v3, p1

    move-object/from16 v7, p2

    goto/16 :goto_b

    .line 78
    .end local v4    # "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .end local v7    # "output\\3":Ljava/io/File;
    .end local v9    # "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local v14    # "pending\\3":Ljava/util/List;
    .end local v15    # "downloaded\\3":Ljava/lang/Boolean;
    .end local v20    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local v26    # "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .local v2, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :catchall_6
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v7, p2

    move-object v1, v0

    move-object/from16 v22, v3

    move-object/from16 v19, v13

    move-object/from16 v9, v16

    move/from16 v2, v18

    move/from16 v3, p1

    move-object/from16 v18, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v12

    .end local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v20    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    goto/16 :goto_c

    .line 97
    .end local v20    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v4    # "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .restart local v7    # "output\\3":Ljava/io/File;
    .restart local v9    # "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .restart local v14    # "pending\\3":Ljava/util/List;
    .restart local v15    # "downloaded\\3":Ljava/lang/Boolean;
    .restart local v26    # "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    :catch_a
    move-exception v0

    move-object/from16 v20, v2

    move-object v2, v12

    move-object v12, v1

    move-object/from16 v1, v21

    move-object/from16 v21, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v9

    move-object v9, v2

    move-object/from16 v22, v3

    move/from16 v2, v18

    move-object/from16 v11, v20

    move/from16 v3, p1

    move-object/from16 v18, v6

    move-object v6, v7

    move-object/from16 v20, v13

    move-object/from16 v7, p2

    move-object v13, v5

    move-object v5, v4

    move/from16 v4, v26

    .end local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v20    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    goto/16 :goto_9

    .line 95
    .end local v20    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :catch_b
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v1, v16

    move-object/from16 v16, v9

    move-object v9, v1

    move-object/from16 v17, v5

    move-object/from16 v19, v13

    move/from16 v2, v18

    move-object/from16 v22, v20

    move-object/from16 v1, v21

    move-object/from16 v21, v3

    move-object v5, v4

    move-object/from16 v18, v6

    move-object v6, v7

    move-object/from16 v20, v12

    move/from16 v4, v26

    move/from16 v3, p1

    move-object/from16 v7, p2

    .end local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v20    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    goto/16 :goto_b

    .line 97
    .end local v4    # "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .end local v7    # "output\\3":Ljava/io/File;
    .end local v16    # "$result":Ljava/lang/Object;
    .end local v18    # "$i$f$withLock\\1\\77":I
    .end local v20    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .local v9, "$result":Ljava/lang/Object;
    .local v11, "$i$f$withLock\\1\\77":I
    .local v22, "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .local v23, "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .restart local v24    # "output\\3":Ljava/io/File;
    :catch_c
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v16, v9

    move/from16 v18, v11

    move-object/from16 v4, v22

    move-object/from16 v9, v23

    move-object/from16 v7, v24

    move-object v2, v12

    move-object v12, v1

    move-object/from16 v1, v21

    move-object/from16 v21, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v9

    move-object v9, v2

    move-object/from16 v22, v3

    move/from16 v2, v18

    move-object/from16 v11, v20

    move/from16 v3, p1

    move-object/from16 v18, v6

    move-object v6, v7

    move-object/from16 v20, v13

    move-object/from16 v7, p2

    move-object v13, v5

    move-object v5, v4

    move/from16 v4, v26

    .line 98
    .end local v12    # "destination":Ljava/io/File;
    .end local v13    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .end local v23    # "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local v24    # "output\\3":Ljava/io/File;
    .end local v26    # "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .end local p1    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v0, "<unused var>\\3":Ljava/lang/Exception;
    .restart local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .local v2, "$i$f$withLock\\1\\77":I
    .local v3, "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .local v4, "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .restart local v5    # "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .local v6, "output\\3":Ljava/io/File;
    .local v7, "$completion":Lkotlin/coroutines/Continuation;
    .local v11, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .local v16, "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local v18, "owner\\1":Ljava/lang/Object;
    .local v20, "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .local v21, "destination":Ljava/io/File;
    .local v22, "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_9
    :try_start_17
    invoke-virtual {v11}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getFailed()I

    move-result v23

    move-object/from16 p1, v0

    .end local v0    # "<unused var>\\3":Ljava/lang/Exception;
    .local p1, "<unused var>\\3":Ljava/lang/Exception;
    add-int/lit8 v0, v23, 0x1

    invoke-virtual {v11, v0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->setFailed(I)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 99
    move-object/from16 v25, v15

    move-object/from16 v26, v16

    const/4 v0, 0x0

    move-object/from16 v16, v9

    move-object v15, v10

    move-object v10, v5

    move-object v5, v11

    move-object/from16 v24, v14

    move-object/from16 v23, v20

    move/from16 v20, v2

    move v2, v4

    move-object v14, v8

    move-object v4, v1

    move-object v1, v12

    move-object v11, v6

    move-object v12, v7

    .line 90
    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .end local v6    # "output\\3":Ljava/io/File;
    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "$result":Ljava/lang/Object;
    .end local v15    # "downloaded\\3":Ljava/lang/Boolean;
    .end local p1    # "<unused var>\\3":Ljava/lang/Exception;
    .local v2, "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .local v4, "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .local v5, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .local v10, "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .local v11, "output\\3":Ljava/io/File;
    .local v12, "$completion":Lkotlin/coroutines/Continuation;
    .local v14, "$continuation":Lkotlin/coroutines/Continuation;
    .local v16, "$result":Ljava/lang/Object;
    .local v20, "$i$f$withLock\\1\\77":I
    .local v23, "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .local v24, "pending\\3":Ljava/util/List;
    .local v25, "downloaded\\3":Ljava/lang/Boolean;
    .local v26, "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    :goto_a
    nop

    .line 101
    .local v0, "rendered\\3":Z
    if-eqz v0, :cond_a

    .line 102
    :try_start_18
    iget-object v6, v5, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->retryPage:Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    if-ne v6, v10, :regular_result

    invoke-static {v11}, Leu/kanade/tachiyomi/ui/reader/translation/PageOcrRecovery;->refreshFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v11

    :regular_result
    invoke-virtual {v5}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getResults()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {v5}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getShowArabic()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v10}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getTranslatedImage$Komikku_app_debug()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    invoke-interface {v6, v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 105
    :cond_a
    invoke-virtual {v5}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getProcessed()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->setProcessed(I)V

    .line 106
    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->updateProgress$default(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;ZZILjava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    move/from16 p1, v3

    move-object v7, v12

    move-object v8, v14

    move-object v10, v15

    move-object/from16 v9, v16

    move/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v3, v22

    move-object/from16 v14, v24

    move-object/from16 v15, v25

    move-object/from16 v21, v4

    move v4, v2

    move-object v2, v5

    move-object v5, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v26

    move-object/from16 v6, v18

    .end local v0    # "rendered\\3":Z
    .end local v10    # "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .end local v11    # "output\\3":Ljava/io/File;
    goto/16 :goto_4

    .line 78
    .end local v2    # "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .end local v24    # "pending\\3":Ljava/util/List;
    .end local v25    # "downloaded\\3":Ljava/lang/Boolean;
    .end local v26    # "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    :catchall_7
    move-exception v0

    move-object v1, v0

    move-object v6, v5

    move-object v7, v12

    move-object v5, v13

    move-object v8, v14

    move-object v10, v15

    move-object/from16 v9, v16

    move/from16 v2, v20

    move-object/from16 v20, v21

    move-object/from16 v19, v23

    move-object/from16 v21, v4

    goto/16 :goto_c

    .end local v4    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .end local v5    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local v12    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v14    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v16    # "$result":Ljava/lang/Object;
    .end local v23    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .restart local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .local v2, "$i$f$withLock\\1\\77":I
    .restart local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$result":Ljava/lang/Object;
    .local v11, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .local v20, "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    :catchall_8
    move-exception v0

    move-object v6, v11

    move-object v5, v13

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v1

    move-object v1, v0

    goto/16 :goto_c

    .line 95
    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v18    # "owner\\1":Ljava/lang/Object;
    .end local v20    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .local v2, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .local v3, "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v6, "owner\\1":Ljava/lang/Object;
    .local v11, "$i$f$withLock\\1\\77":I
    .local v12, "destination":Ljava/io/File;
    .restart local v13    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .local v14, "pending\\3":Ljava/util/List;
    .restart local v15    # "downloaded\\3":Ljava/lang/Boolean;
    .local v21, "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .local v22, "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .local v23, "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .local v24, "output\\3":Ljava/io/File;
    .local v26, "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .local p1, "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catch_d
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v16, v9

    move/from16 v18, v11

    move-object/from16 v4, v22

    move-object/from16 v9, v23

    move-object/from16 v7, v24

    move-object/from16 v1, v16

    move-object/from16 v16, v9

    move-object v9, v1

    move-object/from16 v17, v5

    move-object/from16 v19, v13

    move/from16 v2, v18

    move-object/from16 v22, v20

    move-object/from16 v1, v21

    move-object/from16 v21, v3

    move-object v5, v4

    move-object/from16 v18, v6

    move-object v6, v7

    move-object/from16 v20, v12

    move/from16 v4, v26

    move/from16 v3, p1

    move-object/from16 v7, p2

    .line 96
    .end local v11    # "$i$f$withLock\\1\\77":I
    .end local v12    # "destination":Ljava/io/File;
    .end local v13    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .end local v23    # "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .end local v24    # "output\\3":Ljava/io/File;
    .end local v26    # "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .end local p1    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v0, "cancelled\\3":Ljava/util/concurrent/CancellationException;
    .restart local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .local v2, "$i$f$withLock\\1\\77":I
    .local v3, "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .local v4, "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .local v5, "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .local v6, "output\\3":Ljava/io/File;
    .restart local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .local v16, "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .restart local v18    # "owner\\1":Ljava/lang/Object;
    .restart local v19    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .local v20, "destination":Ljava/io/File;
    .local v21, "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v22, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :goto_b
    nop

    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .end local v2    # "$i$f$withLock\\1\\77":I
    .end local v3    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "$result":Ljava/lang/Object;
    .end local v18    # "owner\\1":Ljava/lang/Object;
    .end local v19    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .end local v20    # "destination":Ljava/io/File;
    .end local v21    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v22    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 78
    .end local v0    # "cancelled\\3":Ljava/util/concurrent/CancellationException;
    .end local v4    # "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .end local v5    # "page\\3":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .end local v6    # "output\\3":Ljava/io/File;
    .end local v14    # "pending\\3":Ljava/util/List;
    .end local v15    # "downloaded\\3":Ljava/lang/Boolean;
    .end local v16    # "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .restart local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .restart local v2    # "$i$f$withLock\\1\\77":I
    .restart local v3    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .restart local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$result":Ljava/lang/Object;
    .restart local v18    # "owner\\1":Ljava/lang/Object;
    .restart local v19    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .restart local v20    # "destination":Ljava/io/File;
    .restart local v21    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v22    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :catchall_9
    move-exception v0

    move-object/from16 v5, v17

    move-object/from16 v6, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v1

    move-object v1, v0

    goto/16 :goto_c

    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v18    # "owner\\1":Ljava/lang/Object;
    .end local v19    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .end local v20    # "destination":Ljava/io/File;
    .end local v22    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .local v2, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .local v3, "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v6, "owner\\1":Ljava/lang/Object;
    .restart local v11    # "$i$f$withLock\\1\\77":I
    .restart local v12    # "destination":Ljava/io/File;
    .restart local v13    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .local v21, "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .restart local p1    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_a
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v16, v9

    move/from16 v18, v11

    move-object/from16 v7, p2

    move-object v1, v0

    move-object/from16 v22, v3

    move-object/from16 v19, v13

    move/from16 v2, v18

    move/from16 v3, p1

    move-object/from16 v18, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v12

    .end local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local v9    # "$result":Ljava/lang/Object;
    .end local v11    # "$i$f$withLock\\1\\77":I
    .local v16, "$result":Ljava/lang/Object;
    .local v18, "$i$f$withLock\\1\\77":I
    .local v20, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    goto/16 :goto_c

    .line 108
    .end local v16    # "$result":Ljava/lang/Object;
    .end local v18    # "$i$f$withLock\\1\\77":I
    .end local v20    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v4    # "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .restart local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$result":Ljava/lang/Object;
    .restart local v11    # "$i$f$withLock\\1\\77":I
    .restart local v14    # "pending\\3":Ljava/util/List;
    .restart local v15    # "downloaded\\3":Ljava/lang/Boolean;
    .restart local v23    # "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    :cond_b
    move-object/from16 v20, v2

    move/from16 v26, v4

    move-object/from16 p2, v7

    move-object/from16 v16, v9

    move/from16 v18, v11

    move-object/from16 v9, v23

    .end local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local v4    # "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v9    # "$result":Ljava/lang/Object;
    .end local v11    # "$i$f$withLock\\1\\77":I
    .end local v14    # "pending\\3":Ljava/util/List;
    .end local v15    # "downloaded\\3":Ljava/lang/Boolean;
    .end local v23    # "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .restart local v16    # "$result":Ljava/lang/Object;
    .restart local v18    # "$i$f$withLock\\1\\77":I
    .restart local v20    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :try_start_1a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    .line 78
    :try_start_1b
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 109
    nop

    .end local p1    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    .line 179
    nop

    .line 182
    :try_start_1c
    invoke-interface {v13, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1c .. :try_end_1c} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_e
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    .line 183
    nop

    .line 178
    nop

    .end local v6    # "owner\\1":Ljava/lang/Object;
    .end local v12    # "destination":Ljava/io/File;
    .end local v13    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .end local v18    # "$i$f$withLock\\1\\77":I
    move-object/from16 v7, p2

    move-object/from16 v9, v16

    move-object/from16 v2, v20

    move-object/from16 v1, v21

    goto/16 :goto_10

    .line 119
    :catchall_b
    move-exception v0

    move-object/from16 v7, p2

    move-object v5, v3

    move-object/from16 v9, v16

    move-object/from16 v2, v20

    move-object/from16 v1, v21

    goto/16 :goto_14

    .line 112
    :catch_e
    move-exception v0

    move-object/from16 v7, p2

    move-object v5, v3

    move-object/from16 v9, v16

    move-object/from16 v12, v20

    move-object/from16 v11, v21

    goto/16 :goto_f

    .line 110
    :catch_f
    move-exception v0

    move-object/from16 v7, p2

    move-object v5, v3

    move-object/from16 v9, v16

    move-object/from16 v2, v20

    move-object/from16 v1, v21

    goto/16 :goto_13

    .line 182
    .restart local v6    # "owner\\1":Ljava/lang/Object;
    .restart local v12    # "destination":Ljava/io/File;
    .restart local v13    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .restart local v18    # "$i$f$withLock\\1\\77":I
    :catchall_c
    move-exception v0

    move-object/from16 v7, p2

    move-object v5, v3

    move-object v11, v6

    move-object v4, v12

    move-object v3, v13

    move-object/from16 v9, v16

    move/from16 v2, v18

    move-object/from16 v6, v20

    move-object/from16 v1, v21

    goto/16 :goto_d

    .line 78
    .restart local p1    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    :catchall_d
    move-exception v0

    move-object/from16 v7, p2

    move-object v1, v0

    move-object/from16 v22, v3

    move-object/from16 v19, v13

    move-object/from16 v9, v16

    move/from16 v2, v18

    move/from16 v3, p1

    move-object/from16 v18, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v12

    goto/16 :goto_c

    .end local v16    # "$result":Ljava/lang/Object;
    .end local v18    # "$i$f$withLock\\1\\77":I
    .end local v20    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$result":Ljava/lang/Object;
    .restart local v11    # "$i$f$withLock\\1\\77":I
    :catchall_e
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 p2, v7

    move-object/from16 v16, v9

    move/from16 v18, v11

    move-object v1, v0

    move-object/from16 v22, v3

    move-object/from16 v19, v13

    move/from16 v2, v18

    move/from16 v3, p1

    move-object/from16 v18, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v12

    .end local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v9    # "$result":Ljava/lang/Object;
    .end local v11    # "$i$f$withLock\\1\\77":I
    .restart local v16    # "$result":Ljava/lang/Object;
    .restart local v18    # "$i$f$withLock\\1\\77":I
    .restart local v20    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    goto/16 :goto_c

    .end local v3    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "owner\\1":Ljava/lang/Object;
    .end local v12    # "destination":Ljava/io/File;
    .end local p1    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .restart local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v9    # "$result":Ljava/lang/Object;
    .restart local v11    # "$i$f$withLock\\1\\77":I
    .local v13, "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .local v16, "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .local v18, "owner\\1":Ljava/lang/Object;
    .local v20, "destination":Ljava/io/File;
    .local v21, "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_f
    move-exception v0

    move-object v1, v0

    move-object v6, v2

    move v2, v11

    move v3, v13

    move-object v5, v15

    move-object/from16 v19, v16

    move-object/from16 v22, v21

    move-object/from16 v21, p0

    goto :goto_c

    .line 83
    .local v0, "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .local v2, "downloaded\\3":Ljava/lang/Boolean;
    .local v14, "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .restart local v22    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :cond_c
    move-object/from16 v27, v22

    move-object/from16 v22, v2

    move-object/from16 v2, v27

    .local v2, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .local v22, "downloaded\\3":Ljava/lang/Boolean;
    :try_start_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Check failed."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "$result":Ljava/lang/Object;
    .end local v11    # "$i$f$withLock\\1\\77":I
    .end local v13    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .end local v16    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .end local v18    # "owner\\1":Ljava/lang/Object;
    .end local v20    # "destination":Ljava/io/File;
    .end local v21    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    .line 78
    .end local v0    # "$i$a$-use-ChapterTranslation$translate$2$1\\3\\78\\2":I
    .end local v14    # "renderer\\3":Leu/kanade/tachiyomi/ui/reader/translation/ArabicPageRenderer;
    .restart local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$result":Ljava/lang/Object;
    .restart local v11    # "$i$f$withLock\\1\\77":I
    .restart local v13    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .restart local v16    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .restart local v18    # "owner\\1":Ljava/lang/Object;
    .restart local v20    # "destination":Ljava/io/File;
    .restart local v21    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v22, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_10
    move-exception v0

    move-object/from16 v2, v22

    move-object v1, v0

    move-object v6, v2

    move v2, v11

    move v3, v13

    move-object v5, v15

    move-object/from16 v19, v16

    move-object/from16 v22, v21

    move-object/from16 v21, p0

    .end local v22    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    goto :goto_c

    .end local v11    # "$i$f$withLock\\1\\77":I
    .end local v13    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .end local v16    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .end local v20    # "destination":Ljava/io/File;
    .end local v21    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v2, "$i$f$withLock\\1\\77":I
    .local v3, "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .local v4, "destination":Ljava/io/File;
    .local v5, "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v6, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local p1    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    :catchall_11
    move-exception v0

    move-object/from16 v21, p0

    move-object v1, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    move-object v5, v15

    move/from16 v3, p1

    goto :goto_c

    .end local p1    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .local v14, "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    :catchall_12
    move-exception v0

    move/from16 p1, v14

    move-object/from16 v21, p0

    move-object v1, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    move-object v5, v15

    move/from16 v3, p1

    .end local v2    # "$i$f$withLock\\1\\77":I
    .end local v3    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .end local v4    # "destination":Ljava/io/File;
    .end local v5    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "$result":Ljava/lang/Object;
    .end local v14    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .end local v18    # "owner\\1":Ljava/lang/Object;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :goto_c
    :try_start_1e
    throw v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_13

    .restart local v2    # "$i$f$withLock\\1\\77":I
    .local v3, "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .restart local v6    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$result":Ljava/lang/Object;
    .restart local v18    # "owner\\1":Ljava/lang/Object;
    .restart local v19    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .restart local v20    # "destination":Ljava/io/File;
    .local v21, "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .local v22, "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_13
    move-exception v0

    :try_start_1f
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v2    # "$i$f$withLock\\1\\77":I
    .end local v6    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "$result":Ljava/lang/Object;
    .end local v18    # "owner\\1":Ljava/lang/Object;
    .end local v19    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .end local v20    # "destination":Ljava/io/File;
    .end local v21    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .end local v22    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_14

    .line 182
    .end local v3    # "$i$a$-withLock$default-ChapterTranslation$translate$2\\2\\179\\0":I
    .restart local v2    # "$i$f$withLock\\1\\77":I
    .restart local v6    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$result":Ljava/lang/Object;
    .restart local v18    # "owner\\1":Ljava/lang/Object;
    .restart local v19    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .restart local v20    # "destination":Ljava/io/File;
    .restart local v21    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .restart local v22    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_14
    move-exception v0

    move-object/from16 v11, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v1, v21

    move-object/from16 v5, v22

    goto :goto_d

    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v19    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .end local v20    # "destination":Ljava/io/File;
    .end local v21    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .end local v22    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v3, "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .restart local v4    # "destination":Ljava/io/File;
    .restart local v5    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_15
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v11, v18

    .end local v18    # "owner\\1":Ljava/lang/Object;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .restart local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .local v11, "owner\\1":Ljava/lang/Object;
    :goto_d
    :try_start_20
    invoke-interface {v3, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .end local v5    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_20
    .catch Ljava/util/concurrent/CancellationException; {:try_start_20 .. :try_end_20} :catch_11
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_10
    .catchall {:try_start_20 .. :try_end_20} :catchall_16

    .line 119
    .end local v2    # "$i$f$withLock\\1\\77":I
    .end local v3    # "$this$withLock_u24default\\1":Lkotlinx/coroutines/sync/Mutex;
    .end local v4    # "destination":Ljava/io/File;
    .end local v11    # "owner\\1":Ljava/lang/Object;
    .restart local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .restart local v5    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v6    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$result":Ljava/lang/Object;
    :catchall_16
    move-exception v0

    move-object v2, v6

    goto/16 :goto_14

    .line 112
    :catch_10
    move-exception v0

    move-object v11, v1

    move-object v12, v6

    goto :goto_f

    .line 110
    :catch_11
    move-exception v0

    move-object v2, v6

    goto/16 :goto_13

    .line 119
    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .end local v6    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .local v2, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_17
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_14

    .line 112
    :catch_12
    move-exception v0

    move-object/from16 v11, p0

    move-object v12, v2

    goto :goto_f

    .line 110
    :catch_13
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_13

    .line 119
    .end local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .local p1, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :catchall_18
    move-exception v0

    move-object/from16 v1, p0

    move-object v2, v3

    goto/16 :goto_14

    .line 112
    :catch_14
    move-exception v0

    goto :goto_e

    .line 110
    :catch_15
    move-exception v0

    goto :goto_12

    .line 119
    :catchall_19
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v1, p0

    move-object v2, v3

    goto :goto_14

    .line 112
    :catch_16
    move-exception v0

    move-object/from16 v3, p1

    :goto_e
    move-object/from16 v11, p0

    move-object v12, v3

    .line 113
    .end local p1    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v0, "<unused var>":Ljava/lang/Exception;
    .restart local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .local v11, "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .local v12, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :goto_f
    :try_start_21
    invoke-virtual {v12}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getPages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v12}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getProcessed()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v12}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getFailed()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v12, v1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->setFailed(I)V

    .line 114
    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static/range {v11 .. v16}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->updateProgress$default(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;ZZILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1b

    move-object v2, v12

    .end local v12    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    move-object v3, v5

    move-object v1, v11

    .line 117
    .end local v0    # "<unused var>":Ljava/lang/Exception;
    .end local v5    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v11    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .restart local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .local v3, "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_10
    :try_start_22
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$0:Ljava/lang/Object;

    iput-object v3, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$1:Ljava/lang/Object;

    const/4 v12, 0x0

    iput-object v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$2:Ljava/lang/Object;

    iput-object v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$3:Ljava/lang/Object;

    iput-object v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$4:Ljava/lang/Object;

    iput-object v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$5:Ljava/lang/Object;

    iput-object v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$6:Ljava/lang/Object;

    iput-object v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$7:Ljava/lang/Object;

    iput-object v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$8:Ljava/lang/Object;

    iput-object v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$9:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->label:I

    invoke-static {v8}, Lkotlinx/coroutines/DelayKt;->awaitCancellation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_d

    .line 70
    return-object v10

    .line 117
    :cond_d
    :goto_11
    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .end local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local v3    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1a

    .line 119
    .restart local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .restart local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v3    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$result":Ljava/lang/Object;
    :catchall_1a
    move-exception v0

    move-object v5, v3

    goto :goto_14

    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .end local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local v3    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v5    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v11    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .restart local v12    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :catchall_1b
    move-exception v0

    move-object v2, v12

    move-object v1, v11

    .end local v12    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    goto :goto_14

    .line 110
    .end local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v11    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .restart local p1    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catch_17
    move-exception v0

    move-object/from16 v3, p1

    :goto_12
    move-object/from16 v1, p0

    move-object v2, v3

    .line 111
    .end local p1    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v0, "cancelled":Ljava/util/concurrent/CancellationException;
    .restart local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .restart local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v7    # "$completion":Lkotlin/coroutines/Continuation;
    :goto_13
    nop

    .end local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .end local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .end local v5    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "$result":Ljava/lang/Object;
    :try_start_23
    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1c

    .line 119
    .end local v0    # "cancelled":Ljava/util/concurrent/CancellationException;
    .restart local v1    # "this":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;
    .restart local v2    # "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .restart local v5    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$result":Ljava/lang/Object;
    :catchall_1c
    move-exception v0

    :goto_14
    sget-object v3, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/NonCancellable;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    new-instance v4, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$4;

    const/4 v12, 0x0

    invoke-direct {v4, v5, v12}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$0:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$1:Ljava/lang/Object;

    iput-object v0, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$2:Ljava/lang/Object;

    iput-object v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$3:Ljava/lang/Object;

    iput-object v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$4:Ljava/lang/Object;

    iput-object v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$5:Ljava/lang/Object;

    iput-object v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$6:Ljava/lang/Object;

    iput-object v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$7:Ljava/lang/Object;

    iput-object v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$8:Ljava/lang/Object;

    iput-object v12, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->L$9:Ljava/lang/Object;

    const/4 v6, 0x6

    iput v6, v8, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$1;->label:I

    invoke-static {v3, v4, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_e

    .line 70
    return-object v10

    .line 119
    :cond_e
    move-object v3, v2

    move-object v2, v5

    .end local v5    # "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v2, "folder":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v3, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :goto_15
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :resume_viewport
    .end packed-switch
.end method

.method private final updateProgress(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;ZZ)V
    .locals 10
    .param p1, "active"    # Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    .param p2, "preparing"    # Z
    .param p3, "modelError"    # Z

    .line 130
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->session:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

    if-eq v0, p1, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->status:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Progress;

    .line 132
    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getLanguage()Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    move-result-object v2

    .line 133
    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getProcessed()I

    move-result v3

    .line 134
    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getPages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 135
    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getResults()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    .line 136
    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getFailed()I

    move-result v6

    .line 137
    nop

    .line 138
    nop

    .line 139
    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getShowArabic()Z

    move-result v9

    .line 131
    move v7, p2

    move v8, p3

    .end local p2    # "preparing":Z
    .end local p3    # "modelError":Z
    .local v7, "preparing":Z
    .local v8, "modelError":Z
    invoke-direct/range {v1 .. v9}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Progress;-><init>(Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;IIIIZZZ)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method static synthetic updateProgress$default(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;ZZILjava/lang/Object;)V
    .locals 1

    .line 129
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->updateProgress(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;ZZ)V

    return-void
.end method


# virtual methods
.method public final cancelWhileProcessing()V
    .locals 2

    invoke-virtual {p0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->getStatus()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Progress;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Progress;->getProcessed()I

    move-result v1

    invoke-virtual {v0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Progress;->getTotal()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->close()V

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 9

    const/4 v1, 0x0

    iput-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->autoTranslationLanguage:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    .line 63
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->session:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

    if-nez v0, :cond_0

    return-void

    .line 64
    .local v0, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->lastChecked:Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

    iput-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->session:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

    .line 65
    invoke-virtual {v0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getResults()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach\\1":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 171
    .local v3, "$i$f$forEach\\1\\65":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element\\1":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    .local v6, "it\\2":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    const/4 v7, 0x0

    .line 65
    .local v7, "$i$a$-forEach-ChapterTranslation$close$1\\2\\171\\0":I
    invoke-virtual {v6}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getTranslatedImage$Komikku_app_debug()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    invoke-interface {v8, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 171
    .end local v6    # "it\\2":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .end local v7    # "$i$a$-forEach-ChapterTranslation$close$1\\2\\171\\0":I
    nop

    .end local v5    # "element\\1":Ljava/lang/Object;
    goto :goto_0

    .line 172
    :cond_1
    nop

    .line 66
    .end local v2    # "$this$forEach\\1":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach\\1\\65":I
    invoke-virtual {v0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getJob()Lkotlinx/coroutines/Job;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v1}, Lkotlinx/coroutines/Job;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 67
    :cond_2
    iget-object v2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->status:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public final getStatus()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Progress;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->status:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final onPageSelected(Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;)V
    .locals 4

    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getChapter()Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

    move-result-object v1

    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->session:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getChapter()Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

    move-result-object v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->setCurrentIndex(I)V

    return-void

    :cond_0
    iget-object v2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->autoTranslationLanguage:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    invoke-virtual {p0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->close()V

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, v2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->start(Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;)V

    return-void

    :cond_1
    iget-object v2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->lastChecked:Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

    if-eq v2, v1, :cond_2

    invoke-virtual {v1}, Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;->getPages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->lastChecked:Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

    invoke-direct {p0, v1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->chapterFolder(Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Leu/kanade/tachiyomi/ui/reader/translation/SavedChapterPages;->recentLanguage(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {v2}, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->valueOf(Ljava/lang/String;)Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->restoringOnly:Z

    :try_start_1
    invoke-virtual {p0, p1, v2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->start(Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    iput-boolean v3, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->restoringOnly:Z

    :cond_2
    return-void

    :catch_0
    move-exception v0

    return-void

    :catchall_0
    move-exception v0

    const/4 v3, 0x0

    iput-boolean v3, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->restoringOnly:Z

    throw v0
.end method

.method public runningForReader()Z
    .locals 2

    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->session:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getJob()Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final showArabic(Z)V
    .locals 13
    .param p1, "show"    # Z

    .line 56
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->session:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

    if-nez v0, :cond_0

    return-void

    .line 57
    .local v0, "active":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    :cond_0
    if-eqz p1, :show_original

    invoke-virtual {v0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getLanguage()Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    move-result-object v1

    goto :set_auto_language

    :show_original
    const/4 v1, 0x0

    :set_auto_language
    iput-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->autoTranslationLanguage:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    invoke-virtual {v0, p1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->setShowArabic(Z)V

    .line 58
    invoke-virtual {v0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getResults()Ljava/util/Map;

    move-result-object v1

    .local v1, "$this$forEach\\1":Ljava/util/Map;
    const/4 v2, 0x0

    .line 168
    .local v2, "$i$f$forEach\\1\\58":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "element\\1":Ljava/util/Map$Entry;
    const/4 v6, 0x0

    .local v6, "$i$a$-forEach-ChapterTranslation$showArabic$1\\2\\168\\0":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    .local v7, "page\\2":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 58
    .local v8, "file\\2":Ljava/io/File;
    invoke-virtual {v7}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getTranslatedImage$Komikku_app_debug()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    .line 169
    move-object v11, v8

    .local v11, "it\\3":Ljava/io/File;
    const/4 v12, 0x0

    .line 58
    .local v12, "$i$a$-takeIf-ChapterTranslation$showArabic$1$1\\3\\58\\2":I
    nop

    .end local v11    # "it\\3":Ljava/io/File;
    .end local v12    # "$i$a$-takeIf-ChapterTranslation$showArabic$1$1\\3\\58\\2":I
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v5, v8

    :cond_1
    invoke-interface {v10, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 168
    .end local v6    # "$i$a$-forEach-ChapterTranslation$showArabic$1\\2\\168\\0":I
    .end local v7    # "page\\2":Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .end local v8    # "file\\2":Ljava/io/File;
    nop

    .end local v4    # "element\\1":Ljava/util/Map$Entry;
    goto :goto_0

    .line 170
    :cond_2
    nop

    .line 59
    .end local v1    # "$this$forEach\\1":Ljava/util/Map;
    .end local v2    # "$i$f$forEach\\1\\58":I
    iget-object v12, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->status:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->status:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Progress;

    if-eqz v1, :cond_3

    const/16 v10, 0x7f

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, p1

    invoke-static/range {v1 .. v11}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Progress;->copy$default(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Progress;Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;IIIIZZZILjava/lang/Object;)Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Progress;

    move-result-object v5

    :cond_3
    invoke-interface {v12, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public final start(Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->startInternal(Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;Z)V

    return-void
.end method

.method private startInternal(Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;Z)V
    .locals 17
    .param p1, "page"    # Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .param p2, "language"    # Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    const-string v1, "page"

    move-object/from16 v7, p1

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "language"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v7}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getChapter()Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

    move-result-object v1

    invoke-virtual {v1}, Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;->getPages()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_0
    move-object v8, v1

    .line 30
    .local v8, "pages":Ljava/util/List;
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 31
    :cond_1
    move/from16 v9, p3

    if-nez v9, :cond_4

    iget-object v9, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->session:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

    .line 32
    .local v9, "existing":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    const/4 v10, 0x0

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getChapter()Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v10

    :goto_0
    invoke-virtual {v7}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getChapter()Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

    move-result-object v2

    if-ne v1, v2, :cond_4

    iget-boolean v1, v9, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->restoredOnly:Z

    if-nez v1, :cond_4

    invoke-virtual {v9}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getLanguage()Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    move-result-object v1

    if-ne v1, v6, :cond_4

    iget-object v1, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->status:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Progress;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Progress;->getFailed()I

    move-result v1

    if-nez v1, :cond_3

    move v3, v2

    :cond_3
    if-eqz v3, :cond_4

    .line 33
    invoke-virtual {v0, v2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->showArabic(Z)V

    .line 34
    return-void

    .line 37
    :cond_4
    invoke-virtual {v0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->close()V

    .line 38
    new-instance v1, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

    invoke-virtual {v7}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getChapter()Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

    move-result-object v2

    invoke-virtual {v7}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getIndex()I

    move-result v3

    invoke-direct {v1, v2, v6, v8, v3}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;-><init>(Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;Ljava/util/List;I)V

    .line 39
    .local v1, "next":Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;
    iput-object v1, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->session:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

    iget-boolean v2, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->restoringOnly:Z

    if-nez v2, :skip_auto_language

    iput-object v6, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->autoTranslationLanguage:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    :skip_auto_language
    move/from16 v2, p3

    if-eqz v2, :regular_restore

    iput-object v7, v1, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->retryPage:Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    :regular_restore
    invoke-direct {v0, v1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->restore(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;)V

    invoke-virtual {v1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getChapter()Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

    move-result-object v2

    iput-object v2, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->lastChecked:Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

    invoke-virtual {v1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getProcessed()I

    move-result v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_5

    iget-boolean v2, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->restoringOnly:Z

    if-eqz v2, :cond_6

    iput-boolean v2, v1, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->restoredOnly:Z

    :cond_5
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->updateProgress(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;ZZ)V

    return-void

    .line 40
    :cond_6
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->updateProgress$default(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;ZZILjava/lang/Object;)V

    .line 41
    iget-object v11, v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$start$1;

    invoke-direct {v2, v0, v1, v10}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$start$1;-><init>(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;Lkotlin/coroutines/Continuation;)V

    move-object v14, v2

    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v2

    invoke-virtual {v1, v2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->setJob(Lkotlinx/coroutines/Job;)V

    .line 42
    return-void
.end method

.method static closestPage(Ljava/util/List;I)Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;
    .locals 7

    const/4 v0, 0x0

    if-ltz p1, :done

    const/4 v1, 0x2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :next_page
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :done

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    invoke-virtual {v3}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getIndex()I

    move-result v4

    sub-int v5, v4, p1

    if-ltz v5, :next_page

    if-ge v5, v1, :next_page

    :select_page
    move-object v0, v3

    move v1, v5

    if-nez v5, :next_page

    :done
    return-object v0
.end method

.method public final hasPageTranslationSession()Z
    .locals 1

    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->session:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

    if-eqz v0, :absent

    const/4 v0, 0x1

    return v0

    :absent
    const/4 v0, 0x0

    return v0
.end method

.method public final retryPage(Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;)Z
    .locals 3

    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->session:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;

    if-eqz v0, :absent

    invoke-virtual {v0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getChapter()Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

    move-result-object v1

    invoke-virtual {p1}, Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;->getChapter()Leu/kanade/tachiyomi/ui/reader/model/ReaderChapter;

    move-result-object v2

    if-ne v1, v2, :absent

    invoke-virtual {v0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;->getLanguage()Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->startInternal(Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;Z)V

    return v1

    :absent
    const/4 v0, 0x0

    return v0
.end method

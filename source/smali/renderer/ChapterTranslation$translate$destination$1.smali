.class final Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChapterTranslation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->translate(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$Session;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChapterTranslation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChapterTranslation.kt\neu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,167:1\n1#2:168\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/File;",
        "kotlin.jvm.PlatformType",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x530
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "eu.kanade.tachiyomi.ui.reader.translation.ChapterTranslation$translate$destination$1"
    f = "ChapterTranslation.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $folder:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;


# direct methods
.method constructor <init>(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/io/File;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1;->this$0:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;

    iput-object p2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1;->$folder:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1;

    iget-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1;->this$0:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;

    iget-object v2, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1;->$folder:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v1, v2, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1;-><init>(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 74
    iget v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1;->this$0:Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;

    invoke-static {v0}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->access$getCache$p(Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    const-string v2, "komikku-arabic-"

    invoke-static {v0, v2, v1}, Lkotlin/io/path/PathsKt;->createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation$translate$destination$1;->$folder:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v2, v0

    .line 168
    .local v2, "it\\1":Ljava/io/File;
    const/4 v3, 0x0

    .line 75
    .local v3, "$i$a$-also-ChapterTranslation$translate$destination$1$1\\1\\75\\0":I
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .end local v2    # "it\\1":Ljava/io/File;
    .end local v3    # "$i$a$-also-ChapterTranslation$translate$destination$1$1\\1\\75\\0":I
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

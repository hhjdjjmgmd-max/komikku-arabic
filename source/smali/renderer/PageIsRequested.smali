.class final Leu/kanade/tachiyomi/ui/reader/translation/PageIsRequested;
.super Ljava/lang/Object;
.implements Lkotlin/jvm/functions/Function2;

.field private final pending:Ljava/util/List;

.method constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu/kanade/tachiyomi/ui/reader/translation/PageIsRequested;->pending:Ljava/util/List;

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/PageIsRequested;->pending:Ljava/util/List;

    invoke-static {v0, p1}, Leu/kanade/tachiyomi/ui/reader/translation/ChapterTranslation;->closestPage(Ljava/util/List;I)Leu/kanade/tachiyomi/ui/reader/model/ReaderPage;

    move-result-object v0

    if-eqz v0, :not_requested

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :not_requested
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static await(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p0, p2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class public final Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage$Companion;
.super Ljava/lang/Object;
.source "ArabicPageRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArabicPageRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArabicPageRenderer.kt\neu/kanade/tachiyomi/ui/reader/translation/PageLanguage$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,250:1\n296#2,2:251\n*S KotlinDebug\n*F\n+ 1 ArabicPageRenderer.kt\neu/kanade/tachiyomi/ui/reader/translation/PageLanguage$Companion\n*L\n51#1:251,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage$Companion;",
        "",
        "<init>",
        "()V",
        "fromSource",
        "Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;",
        "tag",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromSource(Ljava/lang/String;)Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0x2d

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2, v0}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v3, 0x5f

    invoke-static {v1, v3, v0, v2, v0}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 51
    .local v1, "base":Ljava/lang/String;
    :goto_0
    invoke-static {}, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$firstOrNull\\1":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 251
    .local v3, "$i$f$firstOrNull\\1\\51":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element\\1":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    .local v6, "it\\2":Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;
    const/4 v7, 0x0

    .line 51
    .local v7, "$i$a$-firstOrNull-PageLanguage$Companion$fromSource$1\\2\\251\\0":I
    invoke-virtual {v6}, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 251
    .end local v6    # "it\\2":Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;
    .end local v7    # "$i$a$-firstOrNull-PageLanguage$Companion$fromSource$1\\2\\251\\0":I
    if-eqz v6, :cond_1

    move-object v0, v5

    goto :goto_1

    .line 252
    .end local v5    # "element\\1":Ljava/lang/Object;
    :cond_2
    nop

    .end local v2    # "$this$firstOrNull\\1":Ljava/lang/Iterable;
    .end local v3    # "$i$f$firstOrNull\\1\\51":I
    :goto_1
    check-cast v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    .line 51
    return-object v0
.end method

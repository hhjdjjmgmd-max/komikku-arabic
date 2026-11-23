.class public final enum Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;
.super Ljava/lang/Enum;
.source "ArabicPageRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArabicPageRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArabicPageRenderer.kt\neu/kanade/tachiyomi/ui/reader/translation/PageLanguage\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,250:1\n1#2:251\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0080\u0081\u0002\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0012B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0010\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\tj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;",
        "",
        "tag",
        "",
        "recognizer",
        "Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)V",
        "getTag",
        "()Ljava/lang/String;",
        "getRecognizer",
        "()Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;",
        "English",
        "Japanese",
        "Korean",
        "Chinese",
        "displayName",
        "getDisplayName",
        "Companion",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

.field public static final enum Chinese:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

.field public static final Companion:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage$Companion;

.field public static final enum English:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

.field public static final enum Japanese:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

.field public static final enum Korean:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;


# instance fields
.field private final recognizer:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

.field private final tag:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;
    .locals 4

    sget-object v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->English:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    sget-object v1, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->Japanese:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    sget-object v2, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->Korean:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    sget-object v3, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->Chinese:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    filled-new-array {v0, v1, v2, v3}, [Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 39
    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    sget-object v1, Lcom/google/mlkit/vision/text/latin/TextRecognizerOptions;->DEFAULT_OPTIONS:Lcom/google/mlkit/vision/text/latin/TextRecognizerOptions;

    const-string v2, "DEFAULT_OPTIONS"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    const-string v2, "English"

    const/4 v3, 0x0

    const-string v4, "en"

    invoke-direct {v0, v2, v3, v4, v1}, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)V

    sput-object v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->English:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    .line 40
    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    new-instance v1, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions$Builder;

    invoke-direct {v1}, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions$Builder;->build()Lcom/google/mlkit/vision/text/japanese/JapaneseTextRecognizerOptions;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    const-string v3, "Japanese"

    const/4 v4, 0x1

    const-string v5, "ja"

    invoke-direct {v0, v3, v4, v5, v1}, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)V

    sput-object v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->Japanese:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    .line 41
    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    new-instance v1, Lcom/google/mlkit/vision/text/korean/KoreanTextRecognizerOptions$Builder;

    invoke-direct {v1}, Lcom/google/mlkit/vision/text/korean/KoreanTextRecognizerOptions$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/mlkit/vision/text/korean/KoreanTextRecognizerOptions$Builder;->build()Lcom/google/mlkit/vision/text/korean/KoreanTextRecognizerOptions;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    const-string v3, "Korean"

    const/4 v4, 0x2

    const-string v5, "ko"

    invoke-direct {v0, v3, v4, v5, v1}, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)V

    sput-object v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->Korean:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    .line 42
    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    new-instance v1, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions$Builder;

    invoke-direct {v1}, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions$Builder;->build()Lcom/google/mlkit/vision/text/chinese/ChineseTextRecognizerOptions;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    const-string v2, "Chinese"

    const/4 v3, 0x3

    const-string v4, "zh"

    invoke-direct {v0, v2, v3, v4, v1}, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)V

    sput-object v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->Chinese:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    invoke-static {}, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->$values()[Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    move-result-object v0

    sput-object v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->$VALUES:[Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    sget-object v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->$VALUES:[Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->Companion:Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "recognizer"    # Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->tag:Ljava/lang/String;

    iput-object p4, p0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->recognizer:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;",
            ">;"
        }
    .end annotation

    sget-object v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;
    .locals 1

    const-class v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    return-object v0
.end method

.method public static values()[Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;
    .locals 1

    sget-object v0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->$VALUES:[Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 2

    .line 46
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->tag:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 251
    .local v0, "it\\1":Ljava/util/Locale;
    const/4 v1, 0x0

    .line 46
    .local v1, "$i$a$-let-PageLanguage$displayName$1\\1\\46\\0":I
    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "it\\1":Ljava/util/Locale;
    .end local v1    # "$i$a$-let-PageLanguage$displayName$1\\1\\46\\0":I
    const-string v1, "let(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRecognizer()Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;
    .locals 1

    .line 38
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->recognizer:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Leu/kanade/tachiyomi/ui/reader/translation/PageLanguage;->tag:Ljava/lang/String;

    return-object v0
.end method

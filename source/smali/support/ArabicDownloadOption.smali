.class final Leu/kanade/presentation/more/settings/screen/ArabicDownloadOption;
.super Ljava/lang/Object;
.implements Lkotlin/jvm/functions/Function0;

.field private final context:Landroid/content/Context;

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu/kanade/presentation/more/settings/screen/ArabicDownloadOption;->context:Landroid/content/Context;

    return-void
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Leu/kanade/presentation/more/settings/screen/ArabicDownloadOption;->context:Landroid/content/Context;

    invoke-static {v0}, Leu/kanade/tachiyomi/ui/reader/translation/DownloadArabicTranslation;->showOptions(Landroid/content/Context;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static prepend(Ljava/util/List;Landroidx/compose/runtime/Composer;)Ljava/util/List;
    .locals 9

    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    new-instance v5, Leu/kanade/presentation/more/settings/screen/ArabicDownloadOption;

    invoke-direct {v5, v8}, Leu/kanade/presentation/more/settings/screen/ArabicDownloadOption;-><init>(Landroid/content/Context;)V

    new-instance v0, Leu/kanade/presentation/more/settings/Preference$PreferenceItem$TextPreference;

    const-string v1, "ترجمة التنزيلات للعربي"

    const-string v2, "اختار لغة الفصول الأصلية حتى تجهز الترجمة أثناء التنزيل"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Leu/kanade/presentation/more/settings/Preference$PreferenceItem$TextPreference;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

# Build notes

This is a source snapshot of the custom modifications applied to Komikku APKs through v92. It uses the custom Komikku Arabic APK as the base and Android build tools (D8, zipalign, apksigner) plus Apktool for the smali parts. Android Studio cannot open this snapshot as a standalone Gradle application.

For the v91 to v92 upgrade, compile BubbleLayout.java and PaperInk.java from source/java using the Android platform jar. ArabicPageRenderer$TextBox.java is a compile-only definition, since the base already has the class. Convert the resulting BubbleLayout and PaperInk classes (including their nested classes) with D8 for min API 26. Replace classes41.dex in the v91 APK, set manifest versionCode to 92, align for 16 KB pages, then sign. Updates over prior APKs require the same signing certificate. The APK release was signed with the existing project key.

The full snapshot records the reader hook in classes19.dex, the chapter renderer and coroutine classes in classes20.dex, the downloader and settings hook in classes26.dex, and translation cache/OCR helpers in classes40.dex. OnlinePageTranslation was added in classes42.dex. PageOcrRecovery and DownloadArabicTranslation were added in classes43.dex. Compile-only definitions must stay out of the output DEX. The feature sources in this snapshot are the editable parts; upstream Komikku remains the base application.

Verification sources use JVM fixtures and Android stand-ins. The screenshot and chapter images used as local fixtures are excluded from this repository.

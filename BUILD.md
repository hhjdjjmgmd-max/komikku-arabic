# ملاحظات بناء Komikku العربي

يحتوي المستودع على ملفات تعديل APK وليست فيه شجرة Gradle الكاملة لتطبيق Komikku. وُثّقت إعدادات التطبيق ومسارات الربط وتوقيع الإصدارات السابقة حتى يقدر المطوّر يتتبّع التعديلات.

## تغييرات v103

- `source/java/PaddlePageOcr.java` يربط مشغّل PaddleOCR بالنماذج المخصصة بحسب اللغة. `AutoPageOcr` يختار مسار الالتقاط ويستدعي المحرك المناسب. `DialogueText` و`EnglishLineWrap` يعالجان سطور الحوار قبل الترجمة.
- `OnlinePageTranslation` و`GoogleOnDeviceTranslation` يربطان مسارات الترجمة. `DownloadArabicTranslation` يجهز الصفحات المترجمة ضمن التنزيلات. الملفات تحت `source/stubs` مخصصة للتجميع فقط.
- حزمة v103 بُنيت من حزمة Komikku العربي v102 باستخدام D8 لاستبدال `classes43.dex` وإضافة نماذج قراءة اليابانية والصينية. عدّل البناء `versionCode` إلى 103، وحاذى APK بصفحات 16 كيلوبايت، ووقّعه بمفتاح المشروع نفسه. يحتاج تحديث أي تثبيت سابق إلى مطابقة شهادة توقيعه.
- ملفات `patches/` و`source/smali/` توثّق نقاط الربط الموروثة. توجد نقاط ربط القارئ في `classes19.dex`، ورسم الفقاعات في `classes20.dex`، وخيارات التنزيل في `classes26.dex`. الأجزاء الأحدث من التعرّف والترجمة موزّعة على ملفات DEX الإضافية.
- اختبارات JVM في `verification/` تستخدم تعريفات Android مساعدة. اختبارات v103 تتطلب مكتبات OCR والنماذج، واختبار الفقاعة الكورية يتوقع صورة اختبار في المسار المحدد داخل الاختبار.

يعتمد OCR على [PaddleOCR](https://github.com/PaddlePaddle/PaddleOCR)، و[ONNX Runtime](https://github.com/microsoft/onnxruntime)، و[OpenCV](https://opencv.org/)، و[ML Kit](https://developers.google.com/ml-kit). توزَّع مكوّنات الحزمة بحسب تراخيصها.

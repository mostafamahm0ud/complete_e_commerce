import 'package:complete_e_commerce/binding.dart';
import 'package:complete_e_commerce/core/localization/change_local.dart';
import 'package:complete_e_commerce/core/localization/translation.dart';
import 'package:complete_e_commerce/core/services/services.dart';
import 'package:complete_e_commerce/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController localeController = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslations(),
      locale: localeController.language,
      theme: localeController.appTheme,
      debugShowCheckedModeBanner: false,
      // initialRoute: AppRoutes.selectLanguage,
      initialBinding: MyBinding(),
      // routes: routes,
      getPages: route,
    );
  }
}

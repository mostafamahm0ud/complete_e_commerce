import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:complete_e_commerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  changeLanguage(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString("language", langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? savedLanguage = myServices.sharedPreferences.getString("language");
    if (savedLanguage != null) {
      language = Locale(savedLanguage);
      Get.updateLocale(Locale(savedLanguage));
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}

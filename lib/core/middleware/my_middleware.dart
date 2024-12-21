import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:complete_e_commerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? priority = 1;
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("onBoarding") == "1") {
      return RouteSettings(name: AppRoutes.signIn);
    }
    return null;
  }
}

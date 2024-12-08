import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController email;
  @override
  checkEmail() {
    if (formKey.currentState!.validate()) {
      print('valid');
      Get.offAllNamed(AppRoutes.verifyCode);
    } else {
      print('not valid');
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}

import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late TextEditingController password;
  late TextEditingController confirmingpassword;

  @override
  resetPassword() {
    if (formKey.currentState!.validate()) {
      print('valid');
      Get.offNamed(AppRoutes.successResetPassword);
    } else {
      print('not valid');
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    confirmingpassword = TextEditingController();
    super.onInit();
  }
}

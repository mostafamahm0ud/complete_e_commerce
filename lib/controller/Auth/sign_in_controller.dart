import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignInController extends GetxController {
  signIn();
  goToSignUp();
  goToForgetPassword();
}

class SignInControllerImp extends SignInController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  @override
  signIn() {
    if (formKey.currentState!.validate()) {
      print('Done');
    } else {
      print('Not valid');
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoutes.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.forgetPassword);
  }
}

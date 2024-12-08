import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController phoneNumber;
  late TextEditingController password;
  @override
  signUp() {
    var formdata = formKey.currentState;
    if (formdata!.validate()) {
      print('valid');
      Get.offNamed(AppRoutes.checkEmail);
    } else {
      print('not valid');
    }
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoutes.signIn);
  }

  @override
  void onInit() {
    userName = TextEditingController();
    email = TextEditingController();
    phoneNumber = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPasswordSuccess();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController confirmingpassword;

  @override
  resetPasswordSuccess() {}

  @override
  void onInit() {
    password = TextEditingController();
    confirmingpassword = TextEditingController();
    super.onInit();
  }
}

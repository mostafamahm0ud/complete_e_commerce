import 'package:complete_e_commerce/core/class/api_status_request.dart';
import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:complete_e_commerce/core/function/handling_remote_data.dart';
import 'package:complete_e_commerce/data/dataSource/remote/Auth/sign_in_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignInController extends GetxController {
  signIn();
  goToSignUp();
  goToForgetPassword();
  isShowPassword();
}

class SignInControllerImp extends SignInController {
  ApiStatusRequest apiStatusRequest = ApiStatusRequest.none;
  SignInData signUpData = SignInData(Get.find());

  bool isPassword = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  @override
  isShowPassword(){
    isPassword = !isPassword;
    update();
  }

  @override
  signIn()async {
    if (formKey.currentState!.validate()) {
      apiStatusRequest = ApiStatusRequest.loading;
      update();
      var response = await signUpData.postData(
        email.text,
        password.text,
      );
      apiStatusRequest = handlingRemoteData(response);
      if (apiStatusRequest == ApiStatusRequest.success) {
        if (response['status'] == 'success') {
          Get.offNamed(AppRoutes.home);
        } else {
          Get.defaultDialog(
              title: "warning",
              middleText: "email or password is not correct");
          apiStatusRequest = ApiStatusRequest.failure;
        }
      }
      update();
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

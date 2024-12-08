import 'package:complete_e_commerce/controller/Auth/forget_password_controller.dart';
import 'package:complete_e_commerce/controller/Auth/reset_password_controller.dart';
import 'package:complete_e_commerce/controller/Auth/sign_in_controller.dart';
import 'package:complete_e_commerce/controller/Auth/sign_up_controller.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImp(),fenix: true);
    Get.lazyPut(() => SignInControllerImp(),fenix: true);
    Get.lazyPut(() => ForgetPasswordControllerImp(),fenix: true);
    Get.lazyPut(() => ResetPasswordControllerImp(),fenix: true);
  }
}
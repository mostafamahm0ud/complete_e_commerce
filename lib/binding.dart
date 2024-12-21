import 'package:complete_e_commerce/controller/Auth/success_sign_up_controller.dart';
import 'package:complete_e_commerce/controller/Auth/veryfiy_code_signup_controller.dart';
import 'package:complete_e_commerce/controller/forgetPassword/forget_password_controller.dart';
import 'package:complete_e_commerce/controller/forgetPassword/reset_password_controller.dart';
import 'package:complete_e_commerce/controller/Auth/sign_in_controller.dart';
import 'package:complete_e_commerce/controller/Auth/sign_up_controller.dart';
import 'package:complete_e_commerce/controller/forgetPassword/success_reset_password_controller.dart';
import 'package:complete_e_commerce/controller/forgetPassword/verify_code_reset_controller.dart';
import 'package:complete_e_commerce/core/class/api_crud_operations.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiCrudOperationsModel(), fenix: true);
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    Get.lazyPut(() => SignInControllerImp(), fenix: true);
    Get.lazyPut(() => ForgetPasswordControllerImp(), fenix: true);
    Get.lazyPut(() => ResetPasswordControllerImp(), fenix: true);
    Get.lazyPut(() => VerifyCodeControllerImp(), fenix: true);
    Get.lazyPut(() => VeryfiyCodeSignUpControllerImp(), fenix: true);
    Get.lazyPut(() => SuccessSignUpControllerImp(), fenix: true);
    Get.lazyPut(() => SuccessResetPasswordControllerImp(), fenix: true);
  }
}

import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goToSignIn() {}
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToSignIn() {
    Get.offNamed(AppRoutes.signIn);
  }
}
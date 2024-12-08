import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  void goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifyCode;
  @override
  void goToResetPassword() {
    Get.offNamed(AppRoutes.resetPassword);
  }

 
}

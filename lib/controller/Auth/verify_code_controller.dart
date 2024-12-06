import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  void verifyCode();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  @override
  void verifyCode() {
    Get.toNamed(AppRoutes.resetPassword);
  }
}

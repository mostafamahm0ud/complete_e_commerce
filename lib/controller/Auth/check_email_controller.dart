import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  void goToSuccessSignUp();
}

class CheckEmailControllerImp extends CheckEmailController {
  late String verifyCode;
  @override
  void goToSuccessSignUp() {
    Get.offNamed(AppRoutes.successSignUpScreen);
  }
}

import 'package:complete_e_commerce/core/class/api_status_request.dart';
import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:complete_e_commerce/core/function/handling_remote_data.dart';
import 'package:complete_e_commerce/data/dataSource/remote/Auth/signup_verfiycode_data.dart';
import 'package:get/get.dart';

abstract class VeryfiyCodeSignUpController extends GetxController {
  void goToSuccessSignUp(String verifyCode);
}

class VeryfiyCodeSignUpControllerImp extends VeryfiyCodeSignUpController {
  SignupVerfiycodeData signupVerfiycodeData = SignupVerfiycodeData(Get.find());
  ApiStatusRequest apiStatusRequest=ApiStatusRequest.none;
  String? email;
  @override
  void goToSuccessSignUp(String verifyCode) async {
    apiStatusRequest = ApiStatusRequest.loading;
    update();
    var response = await signupVerfiycodeData.postData(verifyCode, email!);
    apiStatusRequest = handlingRemoteData(response);
    if (apiStatusRequest == ApiStatusRequest.success) {
      if (response['status'] == 'success') {
        Get.offNamed(AppRoutes.successSignUpScreen);
      } else {
        Get.defaultDialog(
            title: "warning", middleText: "Verify code is not correct");
        apiStatusRequest = ApiStatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}

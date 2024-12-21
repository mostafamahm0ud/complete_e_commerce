import 'package:complete_e_commerce/core/class/api_status_request.dart';
import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:complete_e_commerce/core/function/handling_remote_data.dart';
import 'package:complete_e_commerce/data/dataSource/remote/ForgetPassword/veryfiy_code_data.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  goToResetPassword(String verifyCode);
}

class VerifyCodeControllerImp extends VerifyCodeController {
  VeryfiyForgetPasswordCodeData veryfiyForgetPasswordCodeData =
      VeryfiyForgetPasswordCodeData(Get.find());
  ApiStatusRequest apiStatusRequest = ApiStatusRequest.none;
  String? email;
  @override
  void goToResetPassword(String verifyCode) async {
    apiStatusRequest = ApiStatusRequest.loading;
    update();
    var response =
        await veryfiyForgetPasswordCodeData.postData(verifyCode, email!);
    apiStatusRequest = handlingRemoteData(response);
    if (apiStatusRequest == ApiStatusRequest.success) {
      if (response['status'] == 'success') {
        Get.offNamed(AppRoutes.resetPassword, arguments: {'email': email});
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

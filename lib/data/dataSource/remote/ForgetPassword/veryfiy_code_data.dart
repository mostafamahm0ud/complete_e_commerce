import 'package:complete_e_commerce/api_links.dart';
import 'package:complete_e_commerce/core/class/api_crud_operations.dart';

class VeryfiyForgetPasswordCodeData {
  ApiCrudOperationsModel apiCrudOperationsModel;

  VeryfiyForgetPasswordCodeData(this.apiCrudOperationsModel);
  postData(String email, String veryfiyCode) async {
    var response =
        await apiCrudOperationsModel.postData(ApiLinks.veryfiyForgetPasswordCodeEndpoint, {
      "email": email,
      "veryfiycode": veryfiyCode,
    });
    return response.fold((l) => l, (r) => r);
  }
}

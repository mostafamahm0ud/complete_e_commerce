import 'package:complete_e_commerce/api_links.dart';
import 'package:complete_e_commerce/core/class/api_crud_operations.dart';

class ResetPasswordData {
  ApiCrudOperationsModel apiCrudOperationsModel;

  ResetPasswordData(this.apiCrudOperationsModel);
  postData(String email, String password) async {
    var response =
        await apiCrudOperationsModel.postData(ApiLinks.resetPasswordEndpoint, {
      "email": email,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}

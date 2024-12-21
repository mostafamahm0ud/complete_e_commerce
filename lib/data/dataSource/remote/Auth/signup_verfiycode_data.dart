import 'package:complete_e_commerce/api_links.dart';
import 'package:complete_e_commerce/core/class/api_crud_operations.dart';

class SignupVerfiycodeData {
  ApiCrudOperationsModel apiCrudOperationsModel;
  SignupVerfiycodeData(this.apiCrudOperationsModel);
  postData(String veryfiycode, String email) async {
    var response =
        await apiCrudOperationsModel.postData(ApiLinks.veryfiycodeEndpoint,{
          "veryfiycode": veryfiycode,
          "email": email,
        });
    return response.fold((l) => l, (r) => r);
  }
}
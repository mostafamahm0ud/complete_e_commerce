import 'package:complete_e_commerce/core/class/api_status_request.dart';

handlingRemoteData(response) {
  if (response is ApiStatusRequest) {
    return response;
  } else {
    return ApiStatusRequest.success;
  }
}
import 'dart:convert';

import 'package:complete_e_commerce/core/class/api_status_request.dart';
import 'package:complete_e_commerce/core/function/check_internet_conection.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class ApiCrudOperationsModel {
  Future<Either<ApiStatusRequest, Map<String, dynamic>>> postData(
      String linkURL, Map<String, dynamic> data) async {
    if (await checkInternetConnection()) {
      var response = await http.post(Uri.parse(linkURL), body: data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        Map<String, dynamic> responseDate = jsonDecode(response.body);
        return Right(responseDate);
      } else {
        return Left(ApiStatusRequest.serverFailure);
      }
    } else {
      return Left(ApiStatusRequest.offLinefailure);
    }
  }
}

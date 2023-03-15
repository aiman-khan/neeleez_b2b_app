import 'package:get/get_core/src/get_main.dart';

import 'api_endpoint.dart';
import 'common/api_providers.dart';
import 'common/api_resource.dart';

class ApiServices extends ApiProvider {
  static ApiServices instance = ApiServices._();

  ApiServices._();

  factory ApiServices() {
    Get.log("Create Api Services Instance.......");
    return instance;
  }
  Future<ApiResource> authenticateUser(Map<String, dynamic> jsonMap,
      {Map<String, String>? header}) async {
    String url = ApiEndPoint.authenticateUser;
    return await postApi(url, jsonMap, header);
  }
}
//
  // SignUP
  //
  // Future<ApiResource> signUp(Map<String, dynamic> jsonMap,
  //     {Map<String, String>? header}) async {
  //   String url = ApiEndPoint.userSignUp;
  //   return await multipartApi(url, jsonMap, header);
  // }

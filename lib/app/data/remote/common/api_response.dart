import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

class ApiResponse {
  ApiResponse(Response response) {
    code = response.statusCode;

    if (isSuccessful()) {
      body = response.data;
      errorMessage = '';
    } else {
      body = null;
      // final dynamic hashMap = json.decode(response.data);
      // log("message from server---- ${hashMap['message']}");
      //  errorMessage = hashMap['message'];
      switch (response.statusCode) {
        case 200:
          return;
        case 400:
          errorMessage = "Invalid Request";
          break;
        case 401:
        case 403:
          errorMessage = "Unauthorised";
          break;
        case 404:
          errorMessage = "Not found";
          break;
        case 500:
          errorMessage = "Internal Server Error";
          break;
        default:
          errorMessage =
              'Error occured while Communication with Server with StatusCode : ${response.statusCode}';
      }
    }
  }
  int? code;
  Map<String, dynamic>? body;
  String? errorMessage;

  bool isSuccessful() {
    return code! >= 200 && code! < 300;
  }
}

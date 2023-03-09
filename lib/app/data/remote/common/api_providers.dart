import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

import 'api_resource.dart';
import 'api_response.dart';
import 'api_status.dart';

class ApiProvider {
  static const requestTimeOut = Duration(seconds: 25);
  final Dio _client = Dio(BaseOptions(
    receiveDataWhenStatusError: true,
    // connectTimeout: 60 * 1000,
    // receiveTimeout: 60 * 1000
  ));

  static final _singleton = ApiProvider();

  static ApiProvider get instance => _singleton;
  Future<List<dynamic>> getList(String url) async {
    try {
      final Response response = await _client.get(url);

      if (response.statusCode == 200 &&
          response.data != null &&
          response.data != '') {
        final List<dynamic> parsed = json.decode(response.data);

        return parsed;
      } else {
        throw Exception('Error in loading...');
      }
    } finally {
      _client.close();
    }
  }

  Future<ApiResource> getServerCall(
      String url, Map<String, String>? header) async {
    try {
      final Response response = await _client.get(url,
          options: Options(
              headers: header ??
                  <String, String>{
                    'content-type': 'application/json',
                  }));

      final ApiResponse psApiResponse = ApiResponse(response);

      if (psApiResponse.isSuccessful()) {
        final dynamic hashMap = json.decode(response.data);

        return ApiResource(PsStatus.SUCCESS, '', hashMap);
      } else {
        return ApiResource(PsStatus.ERROR, psApiResponse.errorMessage!, null);
      }
    } on TimeoutException catch (_) {
      return ApiResource(PsStatus.ERROR, "Request TimeOut", null);
    } on SocketException {
      return ApiResource(PsStatus.ERROR, 'No Internet connection', null);
    } on DioError catch (e) {
      return ApiResource(PsStatus.ERROR, "${e.message}", null);
    } catch (e) {
      return ApiResource(PsStatus.ERROR, e.toString(), null);
    } finally {
      _client.close();
    }
  }

  Future<ApiResource> postApi(String url, Map<String, dynamic> jsonMap,
      Map<String, String>? header) async {
    print(jsonMap);
    print(url);

    try {
      Response response = await _client.post(url,
          options: Options(headers: <String, String>{
            'content-type': 'application/json',
          }),
          data: jsonMap);
      log("Api Response Code --- ${response.statusCode.toString()}");
      log("Api Response Data --- ${response.data.toString()}");
      final ApiResponse psApiResponse = ApiResponse(response);

      if (psApiResponse.isSuccessful()) {
        final dynamic hashMap = psApiResponse.body;

        return ApiResource(
            PsStatus.SUCCESS, "${psApiResponse.body?["message"]}", hashMap);
      } else {
        return ApiResource(
            PsStatus.ERROR, psApiResponse.errorMessage.toString(), null);
      }
    } on TimeoutException catch (_) {
      return ApiResource(PsStatus.ERROR, "Request TimeOut", null);
    } on SocketException catch (e) {
      return ApiResource(PsStatus.ERROR, 'No Internet connection', null);
    } on DioError catch (e) {
      return ApiResource(PsStatus.ERROR, "No Internet connection", null);
    } catch (e) {
      print("Error ${e.toString()}");
      return ApiResource(PsStatus.ERROR, "Connection Error", null);
    } finally {
      _client.close();
    }
  }

  Future<ApiResource> patchApi(String url, Map<dynamic, dynamic> jsonMap,
      Map<String, String>? header) async {
    print(jsonMap);
    try {
      final Response response = await _client.patch(url,
          options: Options(
              headers: header ??
                  <String, String>{
                    'content-type': 'application/json',
                  }),
          data: json.encode(jsonMap));

      final ApiResponse psApiResponse = ApiResponse(json.decode(response.data));

      if (psApiResponse.isSuccessful()) {
        final dynamic hashMap = psApiResponse.body;

        return ApiResource(
            PsStatus.SUCCESS, "${psApiResponse.body?["message"]}", hashMap);
      } else {
        return ApiResource(
            PsStatus.ERROR, psApiResponse.errorMessage.toString(), null);
      }
    } on TimeoutException catch (_) {
      return ApiResource(PsStatus.ERROR, "Request TimeOut", null);
    } on SocketException {
      return ApiResource(PsStatus.ERROR, 'No Internet connection', null);
    } on DioError catch (e) {
      return ApiResource(PsStatus.ERROR, "${e.response?.data}", null);
    } catch (e) {
      print(" Error post data${e.toString()}");
      return ApiResource(PsStatus.ERROR, "Connection Error", null);
    } finally {
      _client.close();
    }
  }

  Future<ApiResource> multipartApi(String url, Map<String, dynamic> jsonMap,
      Map<String, dynamic>? header) async {
    log(jsonMap.toString());
    log(url.toString());
    try {
      FormData formData = FormData.fromMap(jsonMap);
      Response response = await _client.post(url,
          data: formData,
          options: Options(
            headers: header ??
                <String, String>{
                  'content-type': 'application/json',
                },
          ));
      ApiResponse apiResponse = ApiResponse(response);

      log("Api Response Code --- ${response.statusCode.toString()}");
      log("Api Response Data --- ${response.data.toString()}");

      if (apiResponse.isSuccessful()) {
        final dynamic hashMap = apiResponse.body;

        log("Api has Data --- ${hashMap.toString()}");

        return ApiResource(
            PsStatus.SUCCESS, "${apiResponse.body?["message"]}", hashMap);
      } else {
        return ApiResource(
            PsStatus.ERROR, apiResponse.errorMessage.toString(), null);
      }
    } on TimeoutException catch (_) {
      return ApiResource(PsStatus.ERROR, "Request TimeOut", null);
    } on SocketException {
      return ApiResource(PsStatus.ERROR, 'No Internet connection', null);
    } on DioError catch (e) {
      return ApiResource(PsStatus.ERROR, "No Internet connection", null);
    } catch (e) {
      return ApiResource(PsStatus.ERROR, e.toString(), null);
    } finally {}
  }
}

//   dynamic _returnResponse(Response<dynamic> response) {
//     print("exxception");
//     switch (response.statusCode) {
//       case 200:
//         print("200");

//         return response.data;
//       case 400:
//         throw BadRequestException(response.data.toString());
//       case 401:
//       case 403:
//         throw UnauthorisedException(response.data.toString());
//       case 404:
//         throw BadRequestException('Not found');
//       case 500:
//         throw FetchDataException('Internal Server Error');
//       default:
//         print("default");
//         throw FetchDataException(
//             'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
//     }
//   }
// }

// class AppException implements Exception {
//   final code;
//   final message;
//   final details;

//   AppException({this.code, this.message, this.details});

//   String toString() {
//     return "[$code]: $message \n $details";
//   }
// }

// class FetchDataException extends AppException {
//   FetchDataException(String? details)
//       : super(
//           code: "fetch-data",
//           message: "Error During Communication",
//           details: details,
//         );
// }

// class BadRequestException extends AppException {
//   BadRequestException(String? details)
//       : super(
//           code: "invalid-request",
//           message: "Invalid Request",
//           details: details,
//         );
// }

// class UnauthorisedException extends AppException {
//   UnauthorisedException(String? details)
//       : super(
//           code: "unauthorised",
//           message: "Unauthorised",
//           details: details,
//         );
// }

// class InvalidInputException extends AppException {
//   InvalidInputException(String? details)
//       : super(
//           code: "invalid-input",
//           message: "Invalid Input",
//           details: details,
//         );
// }

// class AuthenticationException extends AppException {
//   AuthenticationException(String? details)
//       : super(
//           code: "authentication-failed",
//           message: "Authentication Failed",
//           details: details,
//         );
// }

// class TimeOutException extends AppException {
//   TimeOutException(String? details)
//       : super(
//           code: "request-timeout",
//           message: "Request TimeOut",
//           details: details,
//         );
//}

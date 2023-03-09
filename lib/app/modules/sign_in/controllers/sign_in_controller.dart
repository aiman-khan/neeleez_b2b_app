import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neeleez_b2b/app/data/remote/api_endpoint.dart';
import 'package:http/http.dart' as http;
import '../../../data/remote/api_services.dart';
import '../../../data/remote/common/api_resource.dart';
import '../../../data/remote/common/api_status.dart';
import '../../../utils/app_popups.dart';
import '../../../utils/colors.dart';

class SignInController extends GetxController {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  Dio dio = Dio();

  // Future<void> signin(String userName, String password) async {
  //   ApiResource? resource;
  //   Map<String, dynamic> body = {
  //     "UserName": "zbr",
  //     "Password": "123456Aa1@",
  //   };

  //   AppPopUps().showProgressDialog(
  //       color: AppColors.fontColorBlack, context: Get.context);
  //   resource = await ApiServices.instance.authenticateUser(body);
  //   AppPopUps().dismissDialog(Get.context);

  //   Get.log(resource.data.toString());

  //   if (resource.status == PsStatus.SUCCESS) {
  //     if (resource.data['status'] == true) {
  //       Get.snackbar(
  //         "Attention!",
  //         resource.message,
  //         snackPosition: SnackPosition.TOP,
  //         backgroundColor: AppColors.fontColorBlack,
  //         colorText: AppColors.fontColorWhite,
  //       );
  //       update();
  //     } else {
  //       Get.snackbar(
  //         "Attention!",
  //         resource.message,
  //         snackPosition: SnackPosition.TOP,
  //         backgroundColor: AppColors.fontColorBlack,
  //         colorText: AppColors.fontColorWhite,
  //       );
  //     }
  //   } else {
  //     Get.snackbar(
  //       "Error!",
  //       resource.message,
  //       snackPosition: SnackPosition.TOP,
  //       backgroundColor: AppColors.fontColorBlack,
  //       colorText: AppColors.darkRed,
  //     );
  //   }
  // }

  Future<void> login(String userName, String password) async {
    AppPopUps()
        .showProgressDialog(color: AppColors.darkRed, context: Get.context);
    try {
      var response = await dio.post(
        ApiEndPoint.authenticateUser,
        data: {
          "UserName": userName,
          "Password": password,
        },
        queryParameters: {
          "UserName": userName,
          "Password": password,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer {{bearerToken}}'
          },
        ),
      );

      if (response.data['success']) {
        Get.snackbar(
          "Success!",
          response.data['message'],
          snackPosition: SnackPosition.TOP,
          backgroundColor: AppColors.darkRed,
          colorText: AppColors.fontColorWhite,
        );
      } else {
        AppPopUps().dismissDialog(Get.context);

        Get.snackbar(
          "Success!",
          response.data['message'],
          snackPosition: SnackPosition.TOP,
          backgroundColor: AppColors.darkRed,
          colorText: AppColors.fontColorWhite,
        );
      }
    } on DioError catch (error) {
      if (error.response?.statusCode == 400) {
        if (error.response?.data['errorCode'] == 3) {
          try {
            await sendVerificationEmail(userName, 1);
          } catch (e) {
            print('Failed to send verification email: $e');

            // final emailResponse = await dio.post(
            //   ApiEndPoint.sendEmailVerification,
            //   data: {
            //     'username': "zbr",
            //     'verificationType': 1,
            //   },
            // );

            // if (emailResponse.data["success"]) {
            //   Get.snackbar(
            //     "Success!",
            //     error.response?.data['message'] ,
            //     snackPosition: SnackPosition.TOP,
            //     backgroundColor: AppColors.darkRed,
            //     colorText: AppColors.fontColorWhite.withOpacity(0.6),
            //   );
            // }
          } on Exception catch (e) {
            print('Exceptionbad request: ${error.response?.data}');
          }
        } else {
          Get.snackbar(
            "Error!",
            error.response?.data['message'] ?? "Invalid username or password",
            snackPosition: SnackPosition.TOP,
            backgroundColor: AppColors.darkRed,
            colorText: AppColors.fontColorWhite.withOpacity(0.6),
          );
        }
        print('Bad request: ${error.response?.data}');
      } else {
        Get.snackbar(
          "Error!",
          "",
          snackPosition: SnackPosition.TOP,
          backgroundColor: AppColors.darkRed,
          colorText: AppColors.fontColorWhite,
        );
        print('Error: ${error.message}');
      }
    }

    AppPopUps().dismissDialog(Get.context);
  }

  Future<void> loginUser(String userName, String password) async {
    // try {
    Map<String, dynamic> data = {"userName": userName, "password": password};

    final response = await dio.post(
      ApiEndPoint.authenticateUser,
      data: data,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    print('${response.data}');

    if (!response.data['success']) {
      print('Success');
    }

    if (response.statusCode == 200) {
      Map<String, dynamic> responseData = response.data;
      if (responseData['success']) {
        print('Success');

        // Login successful
        String token = responseData['token'];
      } else {
        String errorMessage = responseData['message'];
        print('errorMessage: $errorMessage');
      }
    } else {
      print('error');
    }
    // } catch (e) {
    //   print('error: $e');
    // }
  }

  Future<void> sendVerificationEmail(
      String username, int verificationType) async {
    try {
      final response = await dio.post(
        ApiEndPoint.sendEmailVerification,
        queryParameters: {
          'username': username,
          'verificationType': verificationType
        },
        options: Options(headers: {'Content-Type': 'application/json'}),
        data: {'username': username, 'verificationType': verificationType},
      );
      if (response.data['success']) {
        Get.snackbar(
          "Success!",
          response.data['message'],
          snackPosition: SnackPosition.TOP,
          backgroundColor: AppColors.darkRed,
          colorText: AppColors.fontColorWhite,
        );
        print('Verification email has been sent.');
      } else {
        print('Failed to send verification email: ${response.data['message']}');
      }
    } catch (e) {
      print('Failed to send verification email: $e');
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}

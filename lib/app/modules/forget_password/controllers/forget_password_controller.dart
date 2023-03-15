import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neeleez_b2b/app/routes/app_pages.dart';

import '../../../data/remote/api_endpoint.dart';
import '../../../utils/app_popups.dart';
import '../../../utils/colors.dart';

class ForgetPasswordController extends GetxController {
  Dio dio = Dio();

  final count = 0.obs;
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();

  Future<void> sendOTP(String userName) async {
    try {
      Map<String, dynamic> data = {"username": userName, "verificationType": 2};
      AppPopUps()
          .showProgressDialog(color: AppColors.darkRed, context: Get.context);
      final response = await dio.post(
        ApiEndPoint.sendEmailVerification,
        data: data,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      AppPopUps().dismissDialog(Get.context);

      if (response.statusCode == 200) {
        if(response.data['success'] == true)
          {
            Get.snackbar(
              response.data['message'],
              "",
              snackPosition: SnackPosition.TOP,
              backgroundColor: AppColors.darkGreen,
              colorText: AppColors.fontColorWhite,
            );
            Get.toNamed(
              Routes.OTP_VERIFICATION,
              arguments: {"username": userName},
            );
          }
        else
          {
            Get.snackbar(
              response.data['message'],
              "",
              snackPosition: SnackPosition.TOP,
              backgroundColor: AppColors.darkRed,
              colorText: AppColors.fontColorWhite,
            );

          }


        // request was successful
      } else if (response.statusCode == 400) {
        // handle the 400 error response
        print('400');

        final errorMessage = response.data['message'];
        print('Error: $errorMessage');
      } else {
        // handle other error responses
      }
    } on DioError catch (e) {
      if (e.response != null && e.response?.statusCode == 400) {
        final errorMessage = e.response!.data['message'];
        print('Error: $errorMessage');
        AppPopUps().dismissDialog(Get.context);
      } else {
        // handle other error responses
        AppPopUps().dismissDialog(Get.context);
      }
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
  void increment() => count.value++;
}

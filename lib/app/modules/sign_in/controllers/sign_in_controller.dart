import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neeleez_b2b/app/data/remote/api_endpoint.dart';
import 'package:neeleez_b2b/app/routes/app_pages.dart';
import 'package:neeleez_b2b/core/custom_dialog.dart';
import 'package:neeleez_b2b/gen/assets.gen.dart';
import '../../../utils/app_popups.dart';
import '../../../utils/colors.dart';

class SignInController extends GetxController {
  GlobalKey<FormState> signInKey = GlobalKey<FormState>();

  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  final isPasswordVisible = false.obs;

  Dio dio = Dio();

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

  Future<void> logiiiin(String userName, String password) async {
    AppPopUps()
        .showProgressDialog(color: AppColors.darkRed, context: Get.context);
    try {
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

      if (response.statusCode == 200) {
        print('200');
        // request was successful
      } else if (response.statusCode == 400) {
        // handle the 400 error response
        print('400');

        showAlert(
            Get.context,
            "Email Not Verified",
            "Please verify your email first.",
            "Verify",
            Assets.pngs.verify.path,
            () => Get.toNamed(Routes.OTP_VERIFICATION));

        await sendVerificationEmail(userName, 1);
        final errorMessage = response.data['message'];
        print('Error: $errorMessage');
      } else {
        // handle other error responses
      }
      AppPopUps().dismissDialog(Get.context);
    } on DioError catch (e) {
      if (e.response != null && e.response?.statusCode == 400) {
        AppPopUps().dismissDialog(Get.context);

        showAlert(
            Get.context,
            "Email Not Verified",
            "Please verify your email first.",
            "Verify",
            Assets.pngs.verify.path, () async {
          AppPopUps().showProgressDialog(
              color: AppColors.darkRed, context: Get.context);
          await sendVerificationEmail(userName, 1);
          AppPopUps().dismissDialog(Get.context);

          return Get.toNamed(Routes.OTP_VERIFICATION);
        });

        // Get.snackbar(
        //   "Error!",
        //   e.response?.data['message'],
        //   snackPosition: SnackPosition.BOTTOM,
        //   backgroundColor: AppColors.darkRed,
        //   colorText: AppColors.fontColorWhite,
        // );
        final errorMessage = e.response!.data['message'];
        print('Error: $errorMessage');
      } else {
        // handle other error responses
      }
    }

    // print('print data');
    //
    // print('${response.data}');
    // print(response.statusCode);
    //
    // if (!response.data['success']) {
    //   print('Success');
    // }
    //
    // if (response.statusCode == 200) {
    //   Map<String, dynamic> responseData = response.data;
    //   if (responseData['success']) {
    //     print('Success');
    //
    //     // Login successful
    //     String token = responseData['token'];
    //   } else {
    //     String errorMessage = responseData['message'];
    //     print('errorMessage: $errorMessage');
    //   }
    // } else {
    //   print('error');
    // }
    // } catch (e) {
    //   print('error: $e');
    // }
  }
}

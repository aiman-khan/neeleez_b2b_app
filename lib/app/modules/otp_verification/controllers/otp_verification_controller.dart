import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neeleez_b2b/app/utils/app_popups.dart';

import '../../../data/remote/api_endpoint.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/colors.dart';

class OtpVerificationController extends GetxController {
  Dio dio = Dio();

  final count = 0.obs;
  GlobalKey<FormState> verifyOtpFormKey = GlobalKey<FormState>();
  TextEditingController otpController = TextEditingController();

  RxBool autofocus = true.obs;

  List<FocusNode> nodes = [FocusNode(), FocusNode(), FocusNode(), FocusNode()];

  String? validateOTP(String? value) {
    print("empty");

    if (value!.isEmpty) {
      print("empty");
      return 'Please enter 4 digit OTP validation';
    }
    if (value.length != 4) {
      return 'Please enter 4 digit OTP validation';
    }
    return null;
  }

  verifyOTP(String username) async {
    try {
      if (verifyOtpFormKey.currentState!.validate()) {
        verifyOtpFormKey.currentState!.save();
        print("-yy------$username");

        final code = otpControllers
            .map((e) => e.text)
            .reduce((value, element) => "$value$element");

        AppPopUps().showProgressDialog(context: Get.context);
        print("-------$username ----- $code");

        await verifyCode(username, int.parse(code));

        AppPopUps().dismissDialog(Get.context);
      }
    } catch (e) {
      print("error");
      // Get.showSnackbar(GetSnackBar(
      //   title: 'Error',
      //   message: "",
      // ));
    }
  }

  Future<void> verifyCode(String username, int code) async {
    try {
      final response = await dio.post(
        ApiEndPoint.verifyEmail,
        queryParameters: {
          "code": code,
          "username": username,
          "verificationType": 2
        },
        options: Options(headers: {'Content-Type': 'application/json'}),
        data: {"code": code, "username": username, "verificationType": 2},
      );
      if (response.data['success']) {
        Get.snackbar(
          "Success!",
          response.data['message'],
          snackPosition: SnackPosition.TOP,
          backgroundColor: AppColors.darkRed,
          colorText: AppColors.fontColorWhite,
        );
        print('${response.data['message']}');
        Get.toNamed(Routes.PAGE3_JOB_NOTIFICATION);
      } else {
        Get.snackbar(
          "Error!",
          response.data['message'],
          snackPosition: SnackPosition.TOP,
          backgroundColor: AppColors.darkRed,
          colorText: AppColors.fontColorWhite,
        );
      }
    } catch (e) {
      print('Failed to send verification email: $e');
    }
  }

  List<TextEditingController> otpControllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  void onPinChanged(String pin, int index) {
    if (pin.isNotEmpty) {
      if (index < nodes.length - 1) {
        nodes[index].unfocus();
        nodes[index + 1].requestFocus();
      } else {
        //submit
      }
    } else {
      if (index > 0) {
        nodes[index].unfocus();
        nodes[index - 1].requestFocus();
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
  void onClose() {
    for (final node in nodes) {
      node.dispose();
    }
  }

  void increment() => count.value++;
}

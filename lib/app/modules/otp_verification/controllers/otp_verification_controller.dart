import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class OtpVerificationController extends GetxController {
  //TODO: Implement OtpVerificationController

  final count = 0.obs;
  GlobalKey<FormState> verifyOtpFormKey = GlobalKey<FormState>();
  TextEditingController otpController = TextEditingController();

  RxBool autofocus = true.obs;

  List<FocusNode> nodes = [FocusNode(), FocusNode(), FocusNode(), FocusNode()];
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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

  verifyOTP() {
    try {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();
      }
    } catch (e) {
      print("error");
      // Get.showSnackbar(GetSnackBar(
      //   title: 'Error',
      //   message: "",
      // ));
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
  void onClose() {}
  void increment() => count.value++;
}

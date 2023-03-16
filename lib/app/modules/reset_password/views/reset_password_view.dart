import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';

import '../../../../core/custom_elevated_button.dart';
import '../../../../core/custom_textfield.dart';
import '../../../../gen/assets.gen.dart';
import '../../../utils/colors.dart';
import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              AppColors.lightRed,
              AppColors.darkRed,
            ],
          ),
        ),
        child: Container(
          width: 390.w,
          height: 630.h,
          padding: EdgeInsets.symmetric(horizontal: 37.w, vertical: 33.h),
          decoration: BoxDecoration(
            color: AppColors.fontColorWhite,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(33.r),
              topLeft: Radius.circular(33.r),
            ),
          ),
          child: Form(
            key: controller.resetPasswordFormKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  18.hb,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Assets.pngs.back.image(
                          height: 18.r,
                        ),
                      ),
                      Assets.pngs.logo.image(
                        width: 92.w,
                        height: 141.h,
                      ),
                      Assets.pngs.back
                          .image(height: 18.r, color: Colors.transparent),
                    ],
                  ),
                  40.hb,
                  Text(
                    "Forget Password?",
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.fontColorGrey),
                  ),
                  10.hb,
                  Text(
                    "Enter your username to receive OTP verification.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.fontColorGrey),
                  ),
                  80.hb,
                  CustomTextFormField(
                      labelText: "New Password",
                      controller: controller.newPasswordController,
                      keyboardType: TextInputType.text,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return "Password is required";
                        }
                        if (v.length < 8) {
                          return "Password must be at least 8 characters";
                        }
                      }),
                  12.hb,
                  CustomTextFormField(
                      labelText: "Confirm Password",
                      controller: controller.confirmPasswordController,
                      keyboardType: TextInputType.text,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return "Password is required";
                        }
                        if (v != controller.newPasswordController.text) {
                          return "Password does not match";
                        }
                      }),
                  120.hb,
                  CustomElevatedButton(
                      width: 360,
                      height: 52,
                      title: "Send OTP",
                      fontSize: 14,
                      onTap: () async {
                        if (controller.resetPasswordFormKey.currentState!
                            .validate()) {
                          try {
                            await controller.resetPassword();
                          } catch (e) {
                            print("$e");
                          }
                        }
                      },
                      backgroundColor1: AppColors.lightRed,
                      backgroundColor2: AppColors.lightRed)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

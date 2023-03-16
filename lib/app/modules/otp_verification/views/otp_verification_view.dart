import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/core/custom_text_field.dart';

import '../../../../core/custom_elevated_button.dart';
import '../../../../core/custom_textfield.dart';
import '../../../../gen/assets.gen.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/colors.dart';
import '../controllers/otp_verification_controller.dart';

class OtpVerificationView extends GetView<OtpVerificationController> {
  @override
  Widget build(BuildContext context) {
    dynamic username = Get.arguments;

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
          key: controller.verifyOtpFormKey,
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
                  "Verify OTP?",
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.fontColorGrey),
                ),
                10.hb,
                Text(
                  "Enter 6-digit OTP sent to your email address.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.fontColorGrey),
                ),
                80.hb,
                //Place 4 digit OTP TextField Here

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var index = 0;
                        index < controller.nodes.length;
                        index++)
                      OTPTextField(
                        node: controller.nodes[index],
                        index: index,
                        textEditingController: controller.otpControllers[index],
                        onChanged: controller.onPinChanged,
                      ),
                  ],
                ),
                36.hb,
                CustomTextFormField(
                    labelText: "New Password",
                    controller: controller.newPassword,
                    keyboardType: TextInputType.text,
                    validator: (v) {
                      if (v!.isEmpty) {
                        return "Password is required";
                      }
                    }),
                12.hb,
                CustomTextFormField(
                    labelText: "Confirm Password",
                    controller: controller.confirmPassword,
                    keyboardType: TextInputType.text,
                    validator: (v) {
                      if (v!.isEmpty) {
                        return "Password is required";
                      }
                      if (v != controller.newPassword.text) {
                        return "Password does not match";
                      }
                    }),
                120.hb,
                CustomElevatedButton(
                    width: 360,
                    height: 52,
                    title: "Verify OTP",
                    fontSize: 14,
                    onTap: () {
                      print("-------$username ");

                      controller.verifyOTP(username);
                    },
                    backgroundColor1: AppColors.lightRed,
                    backgroundColor2: AppColors.lightRed)
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class OTPTextField extends StatelessWidget {
  const OTPTextField({
    Key? key,
    this.onChanged,
    required this.node,
    required this.index,
    required this.textEditingController,
  }) : super(key: key);

  final int index;
  final FocusNode node;
  final void Function(String, int)? onChanged;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          child: AspectRatio(
            aspectRatio: 1.0,
            child: TextFormField(
              autofocus: true,
              controller: textEditingController,
              focusNode: node,
              onChanged: (value) {
                if (onChanged != null) {
                  onChanged!(value, index);
                }
              },
              style: TextStyle(
                fontSize: 35.sp,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return '';
                }
                return null;
              },
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^[0-9]'),
                )
              ],
              showCursor: false,
              readOnly: false,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              maxLength: 1,
              decoration: InputDecoration(
                focusColor: Color(0xffE607A),
                counter: Offstage(),
                border: UnderlineInputBorder(),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide:
                      const BorderSide(color: AppColors.darkRed, width: 2.0),
                ),
                hintText: "0",
                hintStyle: TextStyle(
                    fontSize: 35.sp,
                    color: Color(0xffBFBFBF),
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
        5.wb
      ],
    );
  }
}

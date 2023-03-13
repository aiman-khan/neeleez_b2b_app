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
                  ],
                ),
                120.hb,
                CustomElevatedButton(
                    width: 360,
                    height: 52,
                    title: "Verify OTP",
                    fontSize: 14,
                    onTap: () {
                      Get.toNamed(Routes.PAGE3_JOB_NOTIFICATION);
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
  }) : super(key: key);

  final int index;
  final FocusNode node;
  final void Function(String, int)? onChanged;

  @override
  Widget build(BuildContext context) {
    final OtpVerificationController controller =
        Get.put(OtpVerificationController());
    return Row(
      children: [
        Form(
          //   key: controller.formKey,
          child: Container(
            height: 65,
            child: AspectRatio(
              aspectRatio: 1.0,
              child: TextFormField(
                autofocus: true,
                focusNode: node,
                style: TextStyle(
                  fontSize: 35.sp,
                ),
                validator: controller.validateOTP,
                onChanged: (value) {
                  if (onChanged != null) {
                    onChanged!(value, index);
                  }
                },
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
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
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
        ),
        5.wb
      ],
    );
  }
}

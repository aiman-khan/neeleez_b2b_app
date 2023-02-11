import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/app/routes/app_pages.dart';
import 'package:neeleez_b2b/app/utils/assets_paths.dart';
import 'package:neeleez_b2b/core/custom_elevated_button.dart';
import 'package:neeleez_b2b/core/custom_textfield.dart';

import '../../../../core/custom_text_field.dart';
import '../../../utils/colors.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkRed,
      body: Container(
        width: 1.sw,
        height: 1.sh,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.darkRed,
              AppColors.lightRed,
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              AssetsPaths.LOGO,
              width: 92.w,
              height: 141.h,
            ),
            Image.asset(
              AssetsPaths.LOGIN_BG,
              width: 350.w,
              height: 260.h,
            ),
            12.hb,
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.fontColorWhite,
              ),
              textAlign: TextAlign.center,
            ),
            18.hb,
            Text(
              'Sign in to start receiving jobs\nnearby you',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.fontColorWhite),
              textAlign: TextAlign.center,
            ),
            12.hb,
            Container(
              decoration: BoxDecoration(
                color: AppColors.fontColorWhite,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(33.r),
                    topLeft: Radius.circular(33.r)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 45.h),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomTextField(
                      // prefixIcon: Image.asset(AssetsPaths.PHONE_ICON),
                      hintText: "Phone Number",
                      keyboardType: TextInputType.phone,
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 2.w),
                        child: CircleAvatar(
                          child: Image.asset(AssetsPaths.PHONE_ICON),
                          backgroundColor:
                              AppColors.fontColorGrey.withOpacity(0.2),
                        ),
                      ),
                      validator: (v) {
                        if (v!.isEmpty) {
                          return "";
                        }
                        return null;
                      },
                    ),
                    16.hb,
                    CustomTextField(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: CircleAvatar(
                            backgroundColor:
                                AppColors.fontColorGrey.withOpacity(0.2),
                            child: Image.asset(AssetsPaths.PASSWORD_ICON),
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 15.w),
                          child: Image.asset(AssetsPaths.VIEW_PASSWORD_ICON),
                        ),
                        hintText: "Password",
                        keyboardType: TextInputType.visiblePassword,
                        validator: (v) {
                          if (v!.isEmpty) {
                            return "";
                          }
                          return null;
                        }),
                    20.hb,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 18.r,
                              width: 18.r,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.lightRed,
                              ),
                              child: Icon(
                                Icons.check,
                                color: AppColors.fontColorWhite,
                                size: 14.r,
                              ),
                            ),
                            5.wb,
                            Text(
                              'Remember me',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.fontColorGrey),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.fontColorGrey),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    45.hb,
                    CustomElevatedButton(
                        width: 360,
                        height: 52,
                        title: "Login",
                        fontSize: 14,
                        onTap: () {
                          Get.toNamed(Routes.PAGE3_JOB_NOTIFICATION);
                        },
                        backgroundColor1: AppColors.lightRed,
                        backgroundColor2: AppColors.lightRed)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

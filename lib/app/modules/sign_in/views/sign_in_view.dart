import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/app/utils/assets_paths.dart';
import 'package:neeleez_b2b/core/custom_textfield.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
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
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.fontColorWhite,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(33.r),
                      topLeft: Radius.circular(33.r)),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomTextFormField(
                          prefixIcon: Image.asset(AssetsPaths.PHONE_ICON),
                          hintText: "Phone Number",
                          keyboardType: TextInputType.phone,
                          validator: (v) {
                            if (v!.isEmpty) {
                              return "";
                            }
                            return null;
                          })
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

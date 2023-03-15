import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/app/data/remote/api_services.dart';
import 'package:neeleez_b2b/app/routes/app_pages.dart';
import 'package:neeleez_b2b/core/custom_elevated_button.dart';
import 'package:neeleez_b2b/gen/assets.gen.dart';

import '../../../../core/custom_dialog.dart';
import '../../../../core/custom_text_field.dart';
import '../../../utils/colors.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        showAlert(context, "Exit?", "Do you want to exit?", "Yes",
            Assets.pngs.close.path, () {
          SystemNavigator.pop();
        });

        return false;
      },
      child: Scaffold(
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
              Assets.pngs.logo.image(
                width: 92.w,
                height: 141.h,
              ),
              Assets.pngs.loginVector.image(
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
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 45.h),
                  child: Form(
                    key: controller.signInKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomTextField(
                          // prefixIcon: Image.asset(AssetsPaths.PHONE_ICON),
                          hintText: "Username",
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                          controller: controller.emailTextController,
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 2.w),
                            child: CircleAvatar(
                              child: Assets.pngs.phoneIconRed.image(),
                              backgroundColor:
                                  AppColors.fontColorGrey.withOpacity(0.2),
                            ),
                          ),
                          validator: (v) {
                            if (v!.isEmpty) {
                              return "Username is required";
                            }
                            return null;
                          },
                        ),
                        16.hb,
                        Obx(
                          () => CustomTextField(
                              obscureText: !controller.isPasswordVisible.value,
                              textInputAction: TextInputAction.done,
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(left: 2.w),
                                child: CircleAvatar(
                                  backgroundColor:
                                      AppColors.fontColorGrey.withOpacity(0.2),
                                  child: Assets.pngs.passwordGrey.image(),
                                ),
                              ),
                              suffixIcon: Padding(
                                  padding: EdgeInsets.only(right: 15.w),
                                  child: InkWell(
                                      onTap: () {
                                        controller.isPasswordVisible.value =
                                            !controller.isPasswordVisible.value;
                                      },
                                      child: controller.isPasswordVisible.value
                                          ? Icon(
                                              Icons.visibility_outlined,
                                              size: 22.h,
                                              color: Colors.black,
                                            )
                                          : Icon(Icons.visibility_off_outlined,
                                              size: 22.h,
                                              color: Colors.black))),
                              hintText: "Password",
                              keyboardType: TextInputType.visiblePassword,
                              controller: controller.passwordTextController,
                              validator: (v) {
                                if (v!.isEmpty) {
                                  return "Password is required";
                                }
                                return null;
                              }),
                        ),
                        20.hb,
                        Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      controller.rememberMe.toggle();
                                    },
                                    child: Container(
                                      height: 18.r,
                                      width: 18.r,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: AppColors.lightRed,
                                      ),
                                      child: Icon(
                                        Icons.check,
                                        color: controller.rememberMe.value
                                            ? AppColors.fontColorWhite
                                            : AppColors.lightRed,
                                        size: 14.r,
                                      ),
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
                              InkWell(
                                onTap: () {
                                  Get.toNamed(Routes.FORGET_PASSWORD);
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.fontColorGrey),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        45.hb,
                        CustomElevatedButton(
                            width: 360,
                            height: 52,
                            title: "Login",
                            fontSize: 14,
                            onTap: () async {
                              if (controller.signInKey.currentState!
                                  .validate()) {
                                await controller.login(
                                    controller.emailTextController.text,
                                    controller.passwordTextController.text);
                              }
                              // await controller.logiiiin('zbr', '123456Aa1@');

                              // Get.toNamed(Routes.PAGE3_JOB_NOTIFICATION);
                            },
                            backgroundColor1: AppColors.lightRed,
                            backgroundColor2: AppColors.lightRed)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

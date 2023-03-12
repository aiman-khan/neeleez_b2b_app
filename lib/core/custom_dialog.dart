import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/core/custom_outlined_button.dart';
import 'package:neeleez_b2b/gen/assets.gen.dart';

import '../app/utils/colors.dart';

void showAlert(context, String title, String description, String buttonText,
    String icon, Function()? onPressed) {
  showDialog(
      context: context,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Dialog(
            elevation: 56,
            backgroundColor: AppColors.darkRed,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                        height: 25.r,
                        width: 25.r,
                        decoration: BoxDecoration(
                            color: AppColors.fontColorWhite,
                            borderRadius: BorderRadius.circular(50)),
                        child: Assets.pngs.close.image(
                          height: 35.r,
                          width: 35.r,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      Image.asset(
                        icon,
                        height: 50.r,
                        width: 50.r,
                      ),
                      5.hb,
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16.sp, color: AppColors.fontColorWhite),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.fontColorWhite,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  child: Column(mainAxisSize: MainAxisSize.max, children: [
                    20.hb,
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.sp, color: AppColors.fontColorGrey),
                    ),
                    20.hb,
                    Divider(
                      indent: 30.w,
                      endIndent: 30.w,
                      color: AppColors.fontColorGrey,
                    ),
                    20.hb,
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomOutlinedButton(
                            width: 110.w,
                            height: 40.h,
                            text: buttonText,
                            fontSize: 14,
                            onPressed: onPressed!,
                          ),
                          // 5.wb,
                          // CustomElevatedButton(
                          //   width: 110.w,
                          //   height: 40.h,
                          //   fontSize: 14,
                          //   title: "YES",
                          //   onTap: () {},
                          //   backgroundColor2: AppColors.darkRed,
                          //   backgroundColor1: AppColors.darkRed,
                          // ),
                        ],
                      ),
                    ),
                    10.hb,
                  ]),
                ),
              ],
            ),
          ),
        );
      });
}

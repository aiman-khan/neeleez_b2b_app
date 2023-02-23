import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/core/custom_outlined_button.dart';
import 'package:neeleez_b2b/gen/assets.gen.dart';

import '../app/utils/colors.dart';
import 'custom_elevated_button.dart';

void showSummaryDialog(
    context, String title, String description, String buttonText, String icon) {
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
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: AppColors.fontColorWhite),
                      ),
                      14.hb,
                      Text(
                        description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14.sp, color: AppColors.fontColorWhite),
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
                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        20.hb,
                        Assets.pngs.pointSummary.image(
                          height: 180.h,
                          width: 170.w,
                        ),
                        15.hb,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.fontColorYellow,
                              radius: 5.r,
                            ),
                            8.wb,
                            Text(
                              "20",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.fontColorGrey,
                                  fontWeight: FontWeight.bold),
                            ),
                            18.wb,
                            CircleAvatar(
                              backgroundColor: AppColors.darkRed,
                              radius: 5.r,
                            ),
                            8.wb,
                            Text(
                              "20",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.fontColorGrey,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        20.hb,

                        /// [Remove Button]
                        SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomOutlinedButton(
                                width: 165.w,
                                height: 40.h,
                                text: "GO TO POINTS",
                                fontSize: 14,
                              ),
                              5.wb,
                              CustomElevatedButton(
                                width: 110.w,
                                height: 40.h,
                                fontSize: 14,
                                title: "YES",
                                onTap: () {},
                                backgroundColor2: AppColors.darkRed,
                                backgroundColor1: AppColors.darkRed,
                              ),
                            ],
                          ),
                        ),
                        20.hb,
                      ]),
                ),
              ],
            ),
          ),
        );
      });
}

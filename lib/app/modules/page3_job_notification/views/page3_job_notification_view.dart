import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/core/custom_elevated_button.dart';
import 'package:neeleez_b2b/core/custom_outlined_button.dart';

import '../../../utils/assets_paths.dart';
import '../../../utils/colors.dart';
import '../controllers/page3_job_notification_controller.dart';

class Page3JobNotificationView extends GetView<Page3JobNotificationController> {
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
        child: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              70.hb,
              Text(
                '2 Jobs Available Nearby You',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.fontColorYellow,
                ),
                textAlign: TextAlign.center,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    AssetsPaths.WORLD_ICON,
                    width: 290.r,
                    height: 290.r,
                  ),
                  Image.asset(
                    AssetsPaths.NOTIFICATION_ICON,
                    width: 85.w,
                    height: 90.h,
                  ),
                ],
              ),
              90.hb,
              Container(
                width: 346.w,
                alignment: Alignment.bottomCenter,
                child: Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.fontColorWhite,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 4.h),
                        child: Column(
                          children: [
                            50.hb,
                            Column(
                              children: [
                                Text(
                                  'Mr. Ahmad Zulifiqar',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.fontColorBlack,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    for (int i = 0; i <= 3; i++)
                                      Icon(Icons.star,
                                          size: 25.r,
                                          color:
                                              Color.fromARGB(255, 255, 238, 0))
                                  ],
                                )
                              ],
                            ),
                            10.hb,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Job Id',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.fontColorBlack,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '#9098090',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.fontColorBlack,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            5.hb,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Electrician',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.fontColorBlack,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '20th Feb',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.lightRed,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      '12:00 PM',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        color: AppColors.lightRed,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            12.hb,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Customer Name',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.fontColorBlack,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'Mr Ahmad',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.fontColorBlack,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            5.hb,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Location',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.fontColorBlack,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'AL Habibi, Dubai, UAE',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.fontColorBlack,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            5.hb,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Job',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.fontColorBlack,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Container(
                                  width: 260.w,
                                  child: Text(
                                    'Lorem ipsum dolor sit amet, consectetur,',
                                    style: TextStyle(
                                      fontSize: 13.sp,
                                      color: AppColors.fontColorBlack,
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                            5.hb,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Description',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.fontColorBlack,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Container(
                                  width: 230.w,
                                  child: Text(
                                    'eiusmod labore et dolore magna.',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColors.fontColorBlack,
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                            20.hb,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomOutlinedButton(
                                    width: 150,
                                    height: 40,
                                    fontSize: 12,
                                    widget: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset(
                                          AssetsPaths.NOT_INTERESTED_ICON,
                                          height: 32.r,
                                          width: 32.r,
                                          color: Color.fromARGB(
                                              255, 234, 165, 188),
                                        ),
                                        Icon(
                                          Icons.close,
                                          color: AppColors.darkRed,
                                          size: 20.r,
                                        )
                                      ],
                                    ),
                                    text: "Not Interested"),
                                CustomElevatedButton(
                                  width: 150,
                                  height: 40,
                                  title: "Continue",
                                  onTap: () {},
                                  backgroundColor1: AppColors.darkRed,
                                  backgroundColor2: AppColors.lightRed,
                                  widget: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.asset(
                                        AssetsPaths.CONTINUE_ICON,
                                        height: 32.r,
                                        width: 32.r,
                                      ),
                                      Icon(
                                        Icons.navigate_next,
                                        size: 20.r,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -25.h,
                      child: Container(
                        width: 70.r,
                        height: 70.r,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(width: 5.w, color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        child: Image.asset(AssetsPaths.AVATAR),
                      ),
                    ),
                  ],
                ),
              ),
              18.hb,
            ],
          ),
        ),
      ),
    );
  }
}

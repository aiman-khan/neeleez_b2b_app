import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/core/custom_elevated_button.dart';
import 'package:neeleez_b2b/core/custom_outlined_button.dart';
import 'package:neeleez_b2b/gen/assets.gen.dart';

import '../../../../core/job_card_widget.dart';
import '../../../utils/colors.dart';
import '../controllers/job_notification_controller.dart';

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
          child: SingleChildScrollView(
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
                30.hb,
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Assets.pngs.worldIcon.image(
                      width: 290.r,
                      height: 290.r,
                    ),
                    Assets.pngs.notificationIcon.image(
                      width: 85.w,
                      height: 90.h,
                    ),
                  ],
                ),
                90.hb,
                JobCardWidget(
                  button: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomOutlinedButton(
                          width: 150,
                          height: 40,
                          fontSize: 12,
                          widget: Stack(
                            alignment: Alignment.center,
                            children: [
                              Assets.pngs.notInterestedCircle.image(
                                height: 32.r,
                                width: 32.r,
                                color: Color.fromARGB(255, 234, 165, 188),
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
                            Assets.pngs.continueCircle.image(
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

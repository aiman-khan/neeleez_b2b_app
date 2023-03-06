import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';

import '../../../../core/custom_elevated_button.dart';
import '../../../../core/custom_outlined_button.dart';
import '../../../../gen/assets.gen.dart';
import '../../../utils/colors.dart';
import '../controllers/task_details_controller.dart';

class TaskDetailsView extends GetView<TaskDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                title: Row(children: [
                  Assets.pngs.back.image(
                    height: 18.r,
                  ),
                  30.wb,
                  Text(
                    'Project Details',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.lightRed,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
                centerTitle: true,
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              Container(
                height: 62.h,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.darkRed, AppColors.lightRed],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Job ID # 989898',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.fontColorWhite,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '20-18-2021 | 10:00 AM',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.fontColorWhite,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ]),
              ),
              12.hb,
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    border: Border.all(color: AppColors.darkRed),
                    color: Colors.white),
                width: 380.w,
                padding: EdgeInsets.only(
                    left: 6.w, top: 8.h, bottom: 8.h, right: 6.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: 42.r,
                        width: 42.r,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.lightRed,
                          borderRadius: BorderRadius.circular(55),
                        ),
                        child: Text(
                          "2",
                          style: TextStyle(
                              color: AppColors.fontColorWhite,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold),
                        )),
                    10.wb,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Update Status',
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.fontColorBlack,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.lightRed,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 14.w, vertical: 10.h),
                        child: Row(
                          children: [
                            Text(
                              "Project\nDuration:",
                              style: TextStyle(
                                color: AppColors.fontColorBlack,
                                fontSize: 8.sp,
                              ),
                            ),
                            16.wb,
                            Row(
                              children: [
                                Text(
                                  "20",
                                  style: TextStyle(
                                      color: AppColors.fontColorBlack,
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Days",
                                  style: TextStyle(
                                      color: AppColors.fontColorBlack,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              22.hb,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int i = 1; i < 4; i++)
                            GreenCircleStepper(
                              step: i,
                            ),
                          for (int i = 4; i < 6; i++)
                            GreyCircleStepper(
                              step: i,
                            ),
                        ],
                      ),
                    ),
                    58.hb,
                    Divider(
                      thickness: 1,
                    ),
                    16.hb,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.lightRed.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 14.w, vertical: 10.h),
                          child: Text(
                            "Phase 2",
                            style: TextStyle(
                                color: AppColors.darkRed,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          "Full Material Delivery and checking\nsales documents",
                          style: TextStyle(
                              color: AppColors.fontColorBlack,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    16.hb,
                    Divider(
                      thickness: 1,
                    ),
                    24.hb,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          clipBehavior: Clip.none,
                          children: [
                            Assets.pngs.path.image(
                              width: 50.w,
                              height: 280.r,
                            ),
                            Positioned(
                              top: -12.h,
                              child: CircleAvatar(
                                radius: 30.r,
                                backgroundColor: AppColors.fontColorWhite,
                                child: CircleAvatar(
                                  radius: 20.r,
                                  backgroundColor: AppColors.fontColorGreen,
                                  child:
                                      Assets.pngs.shuttle.image(height: 22.h),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 105.h,
                              child: CircleAvatar(
                                radius: 30.r,
                                backgroundColor: AppColors.fontColorWhite,
                                child: CircleAvatar(
                                  radius: 22.r,
                                  backgroundColor: AppColors.lightRed,
                                  child: CircleAvatar(
                                    radius: 20.r,
                                    backgroundColor: AppColors.fontColorWhite,
                                    child:
                                        Assets.pngs.arrived.image(height: 22.h),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: -12.h,
                              child: CircleAvatar(
                                radius: 30.r,
                                backgroundColor: AppColors.fontColorWhite,
                                child: CircleAvatar(
                                  radius: 22.r,
                                  backgroundColor: AppColors.fontColorGrey,
                                  child: CircleAvatar(
                                    radius: 20.r,
                                    backgroundColor: AppColors.fontColorWhite,
                                    child: Assets.pngs.fixing
                                        .image(height: 20.r, width: 25.r),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        14.wb,
                        SizedBox(
                          height: 260.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Lorem Ipsum',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.fontColorGreen,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'Lorem Ipsum',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.lightRed,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'Lorem Ipsum',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.fontColorGrey,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          height: 260.h,
                          child: Column(
                            children: [
                              Text(
                                '20-18-21 | 10:00 AM',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.fontColorGrey,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Spacer(),
                              Text(
                                '20-18-21 | 10:00 AM',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.fontColorGrey,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Spacer(),
                              Text(
                                '20-18-21 | 10:00 AM',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.fontColorGrey,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    20.hb,
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Assets.pngs.containerupsidedown.image(),
                  Positioned(
                    bottom: 24.h,
                    child: Text(
                      'Customer Details',
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColors.fontColorWhite,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GreenCircleStepper extends StatelessWidget {
  const GreenCircleStepper({
    Key? key,
    required this.step,
  }) : super(key: key);

  final int step;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 100.h,
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.fontColorGreen,
                radius: 31.r,
                child: CircleAvatar(
                  backgroundColor: AppColors.fontColorWhite,
                  radius: 29.r,
                  child: CircleAvatar(
                    backgroundColor: AppColors.fontColorGreen,
                    radius: 28.r,
                    child: Text(
                      "$step",
                      style: TextStyle(
                          color: AppColors.fontColorWhite,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              18.hb,
              Text(
                "Phase $step",
                style: TextStyle(
                    color: AppColors.fontColorGreen,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 60.h,
          child: Row(
            children: [
              Container(
                height: 2.h,
                width: 4.w,
                color: AppColors.fontColorGreen,
              ),
              2.wb,
              Container(
                height: 2.h,
                width: 4.w,
                color: AppColors.fontColorGreen,
              ),
              2.wb,
              Container(
                height: 2.h,
                width: 4.w,
                color: AppColors.fontColorGreen,
              )
            ],
          ),
        )
      ],
    );
  }
}

class GreyCircleStepper extends StatelessWidget {
  const GreyCircleStepper({
    Key? key,
    required this.step,
  }) : super(key: key);

  final int step;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 100.h,
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.fontColorGrey.withOpacity(0.3),
                radius: 31.r,
                child: Text(
                  "$step",
                  style: TextStyle(
                      color: AppColors.fontColorGrey,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              18.hb,
              Text(
                "Phase $step",
                style: TextStyle(
                    color: AppColors.fontColorGrey,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 60.h,
          child: Row(
            children: [
              Container(
                height: 2.h,
                width: 4.w,
                color: AppColors.fontColorGrey,
              ),
              2.wb,
              Container(
                height: 2.h,
                width: 4.w,
                color: AppColors.fontColorGrey,
              ),
              2.wb,
              Container(
                height: 2.h,
                width: 4.w,
                color: AppColors.fontColorGrey,
              )
            ],
          ),
        )
      ],
    );
  }
}

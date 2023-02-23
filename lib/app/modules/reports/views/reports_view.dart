import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:neeleez_b2b/app/constants/sized_box.dart';

import '../../../../core/custom_elevated_button.dart';
import '../../../../core/custom_outlined_button.dart';
import '../../../../core/job_card_widget.dart';
import '../../../../gen/assets.gen.dart';
import '../../../utils/colors.dart';
import '../controllers/reports_controller.dart';

class ReportsView extends GetView<ReportsController> {
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
                    'Job Details',
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
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColors.darkRed),
                    color: Colors.white),
                height: 50.h,
                width: 380.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: AppColors.lightGrey,
                      height: double.infinity,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Assets.pngs.reports
                              .image(height: 25.r, width: 25.r)),
                    ),
                    10.wb,
                    Text(
                      'Reports',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.vividOrange,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 35.r,
                      color: AppColors.fontColorGrey,
                    )
                  ],
                ),
              ),
              22.hb,
              SizedBox(
                width: 180.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Service Duration',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.fontColorGrey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '01:00:09',
                      style: TextStyle(
                          fontSize: 40.sp,
                          color: AppColors.fontColorBlack,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'hr',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.fontColorGrey,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'min',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.fontColorGrey,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'sec',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.fontColorGrey,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              25.hb,
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      clipBehavior: Clip.none,
                      children: [
                        Assets.pngs.path.image(
                          width: 120.w,
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
                              child: Assets.pngs.shuttle.image(height: 22.h),
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
                                child: Assets.pngs.arrived.image(height: 22.h),
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
                    SizedBox(
                      height: 260.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Started',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.fontColorGreen,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Arrived',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.lightRed,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Fixing',
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
              ),
              20.hb,
              Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color: AppColors.fontColorWhite,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 4,
                          blurRadius: 5,
                          color: AppColors.fontColorGrey.withOpacity(0.5))
                    ]),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.fontColorWhite,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        30.hb,
                        Text(
                          'Status History',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.fontColorBlack,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        20.hb,
                        Container(
                            height: 180.h,
                            decoration: BoxDecoration(
                                color: AppColors.fontColorGrey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(15))),
                        35.hb,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.topCenter,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: 500.h,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          AppColors.lightGreen,
                                          AppColors.darkGreen,
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter),
                                  ),
                                  child: Container(),
                                ),
                                Positioned(
                                  top: -12.h,
                                  child: CircleAvatar(
                                    radius: 30.r,
                                    backgroundColor: AppColors.fontColorWhite,
                                    child: CircleAvatar(
                                      radius: 20.r,
                                      backgroundColor: AppColors.fontColorGreen,
                                      child: Assets.pngs.shuttle
                                          .image(height: 22.h),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 105.h,
                                  child: CircleAvatar(
                                    radius: 30.r,
                                    backgroundColor: AppColors.fontColorWhite,
                                    child: CircleAvatar(
                                      radius: 20.r,
                                      backgroundColor: AppColors.fontColorGreen,
                                      child: Assets.pngs.arrived.image(
                                          height: 22.h,
                                          color: AppColors.fontColorWhite),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 225.h,
                                  child: CircleAvatar(
                                    radius: 30.r,
                                    backgroundColor: AppColors.fontColorWhite,
                                    child: CircleAvatar(
                                      radius: 20.r,
                                      backgroundColor: AppColors.fontColorGreen,
                                      child: Assets.pngs.fixing.image(
                                          height: 15.h,
                                          color: AppColors.fontColorWhite),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 345.h,
                                  child: CircleAvatar(
                                    radius: 30.r,
                                    backgroundColor: AppColors.fontColorWhite,
                                    child: CircleAvatar(
                                      radius: 20.r,
                                      backgroundColor: AppColors.fontColorGreen,
                                      child: Assets.pngs.test.image(
                                          height: 22.h,
                                          color: AppColors.fontColorWhite),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 465.h,
                                  child: CircleAvatar(
                                    radius: 30.r,
                                    backgroundColor: AppColors.fontColorWhite,
                                    child: CircleAvatar(
                                      radius: 20.r,
                                      backgroundColor: AppColors.fontColorGreen,
                                      child: Assets.pngs.penant.image(
                                          height: 22.h,
                                          color: AppColors.fontColorWhite),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            20.wb,
                            SizedBox(
                              height: 500.h,
                              child: Padding(
                                padding: EdgeInsets.only(top: 8.h),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Started',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: AppColors.darkGreen,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'Arrived',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: AppColors.darkGreen,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'Fixing',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: AppColors.darkGreen,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'Completed',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: AppColors.darkGreen,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'Finished',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: AppColors.darkGreen,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            SizedBox(
                              height: 500.h,
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '20-18-21',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: AppColors.fontColorGrey,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        '09:45 - 10:00 AM',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: AppColors.fontColorGrey,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '20-18-21',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: AppColors.fontColorGrey,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        '09:45 - 10:00 AM',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: AppColors.fontColorGrey,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '20-18-21',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: AppColors.fontColorGrey,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        '09:45 - 10:00 AM',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: AppColors.fontColorGrey,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '20-18-21',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: AppColors.fontColorGrey,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        '09:45 - 10:00 AM',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: AppColors.fontColorGrey,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '20-18-21',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: AppColors.fontColorGrey,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        '09:45 - 10:00 AM',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: AppColors.fontColorGrey,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';

import '../../../../core/custom_elevated_button.dart';
import '../../../../core/custom_outlined_button.dart';
import '../../../../core/job_card_widget.dart';
import '../../../../gen/assets.gen.dart';
import '../../../utils/colors.dart';
import '../controllers/job_details_controller.dart';

class JobDetailsView extends GetView<JobDetailsController> {
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
                        child: Icon(
                          Icons.list,
                          color: AppColors.fontColorGreen,
                          size: 35.r,
                        ),
                      ),
                    ),
                    10.wb,
                    Text(
                      'Job Details',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.fontColorGreen,
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
                child: Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.fontColorWhite,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
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
                                  'Electrician',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColors.darkRed,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                Container(
                                  height: 1.r,
                                  width: 160.w,
                                  color: Colors.grey,
                                ),
                                Text(
                                  'Fixing',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.lightRed,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            12.hb,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Type',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.fontColorBlack,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'Hourly',
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
                            10.hb,
                            Divider(
                              thickness: 2,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    /// 'Images:'
                                    Text(
                                      'Attachments:',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: AppColors.fontColorBlack,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    for (int i = 0; i < 3; i++)
                                      Icon(
                                        Icons.image,
                                        size: 80,
                                        color: Colors.grey,
                                      ),
                                  ],
                                ),
                              ],
                            ),
                            5.hb,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Notes:',
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
                            20.hb,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Additional Information:',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.fontColorBlack,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Container(
                                  width: 210.w,
                                  child: Text(
                                    '',
                                    style: TextStyle(
                                      fontSize: 13.sp,
                                      color: AppColors.fontColorBlack,
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                            40.hb,
                            SizedBox(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomElevatedButton(
                                    width: 190.w,
                                    height: 40.h,
                                    fontSize: 14,
                                    title: "Message",
                                    onTap: () {},
                                    widget: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Assets.pngs.continueCircle.image(
                                          height: 32.r,
                                          width: 32.r,
                                          color: Color.fromARGB(
                                              255, 234, 165, 188),
                                        ),
                                        Assets.pngs.chat.image(
                                          height: 15.r,
                                          width: 15.r,
                                          color: Color.fromARGB(
                                              255, 234, 165, 188),
                                        ),
                                      ],
                                    ),
                                    backgroundColor2: AppColors.darkRed,
                                    backgroundColor1: AppColors.darkRed,
                                  ),
                                  CustomOutlinedButton(
                                    width: 190.w,
                                    height: 40.h,
                                    text: "Call",
                                    fontSize: 14,
                                    widget: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Assets.pngs.continueCircle.image(
                                          height: 32.r,
                                          width: 32.r,
                                          color: Color.fromARGB(
                                              255, 234, 165, 188),
                                        ),
                                        Assets.pngs.phoneCall.image(
                                          height: 15.r,
                                          width: 15.r,
                                          color: Color.fromARGB(
                                              255, 234, 165, 188),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            10.hb,
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
                        child: Assets.pngs.avatar.image(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';

import '../../../../core/custom_elevated_button.dart';
import '../../../../core/drawer.dart';
import '../../../../core/job_card_widget.dart';
import '../../../../gen/assets.gen.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/colors.dart';
import '../controllers/jobs_history_controller.dart';

class JobsHistoryView extends GetView<JobsHistoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      key: controller.scaffoldKey,
      body: Container(
        width: 1.sw,
        height: 1.sh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          controller.scaffoldKey.currentState!.openDrawer();
                        },
                        child: Assets.pngs.menu.image(
                          height: 15.r,
                        ),
                      ),
                      Row(children: [
                        Assets.pngs.flag.image(
                          height: 30.r,
                          width: 30.r,
                        ),
                        5.wb,
                        Assets.pngs.menuNotification.image(
                          height: 28.r,
                          width: 28.r,
                        ),
                        5.wb,
                        Assets.pngs.profile.image(
                          height: 30.r,
                          width: 30.r,
                        )
                      ]),
                    ]),
                centerTitle: true,
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Assets.pngs.scheduledJobsHeading.image(),
                  Positioned(
                    top: 18.h,
                    left: 20.w,
                    child: Text(
                      'Job Status:',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.fontColorWhite,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Positioned(
                    top: 12.h,
                    right: 20.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Completed',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.fontColorWhite,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 30.r,
                          color: AppColors.fontColorWhite,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -10,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: AppColors.darkRed),
                          color: Colors.white),
                      height: 50.h,
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      width: 380.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'From Date',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.darkRed,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "12-Sep-2021",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.fontColorBlack,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              10.wb,
                              Icon(
                                Icons.unfold_more,
                                size: 25.r,
                                color: AppColors.fontColorGrey.withOpacity(0.5),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'To Date',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.fontColorGrey,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "14-Sep-2021",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.fontColorBlack,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              10.wb,
                              Icon(
                                Icons.unfold_more_sharp,
                                size: 25.r,
                                color: AppColors.fontColorGrey.withOpacity(0.5),
                              )
                            ],
                          ),
                          Assets.pngs.calendar.image(height: 25.r)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              40.hb,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border:
                                      Border.all(color: AppColors.lightGrey),
                                  color: Colors.white),
                              height: 33.h,
                              width: 180.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: double.infinity,
                                    width: 44.w,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.5),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5),
                                            bottomRight: Radius.circular(5))),
                                    child: Icon(
                                      Icons.person,
                                      color: AppColors.fontColorGrey,
                                      size: 20.r,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 26.w),
                                    child: Text(
                                      'Filter by Staff',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: AppColors.fontColorGrey,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border:
                                      Border.all(color: AppColors.lightGrey),
                                  color: Colors.white),
                              height: 33.h,
                              width: 180.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: double.infinity,
                                    width: 44.w,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.5),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5),
                                            bottomRight: Radius.circular(5))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Assets.pngs.filterByService
                                          .image(height: 10.r),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 26.w),
                                    child: Text(
                                      'Filter by Service',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: AppColors.fontColorGrey,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    40.hb,
                    for (int i = 0; i < 5; i++) ...[
                      JobsHistoryWidget(button: Container()),
                      20.hb,
                    ]
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

class JobsHistoryWidget extends StatelessWidget {
  JobsHistoryWidget({
    required this.button,
  });
  final Widget button;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.fontColorWhite,
          borderRadius: BorderRadius.circular(25)),
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.fontColorWhite,
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 2),
                ],
                borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
              child: Column(
                children: [
                  50.hb,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50.r,
                        height: 50.r,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(width: 5.w, color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        child: Assets.pngs.avatar.image(),
                      ),
                      5.wb,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                    color: Color.fromARGB(255, 255, 238, 0))
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: 85.r,
                        height: 30.r,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.lightGrey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "Completed",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.fontColorGreen,
                          ),
                        ),
                      ),
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
                            color: AppColors.darkRed,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        height: 1.r,
                        width: 160.w,
                        color: Colors.grey,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

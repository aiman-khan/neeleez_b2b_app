import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/modules/points/views/widgets/bar_chart.dart';

import '../controllers/points_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/app/modules/wallet/graph.dart';
import 'package:neeleez_b2b/app/utils/colors.dart';

import '../../../../gen/assets.gen.dart';

class PointsView extends GetView<PointsController> {
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
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Assets.pngs.menu.image(
                            height: 15.r,
                          ),
                          28.wb,
                          Text(
                            'Points',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.lightRed,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
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
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 36.h,
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.darkRed, AppColors.lightRed],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12))),
                child: Column(
                  children: [
                    Text(
                      'Total Points',
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColors.fontColorWhite,
                          fontWeight: FontWeight.w500),
                    ),
                    24.hb,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 65.w,
                              height: 65.h,
                              child: Assets.pngs.goldPoint.image(),
                            ),
                            8.hb,
                            Text(
                              'Gold Points',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.fontColorWhite,
                                  fontWeight: FontWeight.w500),
                            ),
                            4.hb,
                            Text(
                              '50',
                              style: TextStyle(
                                  fontSize: 24.sp,
                                  color: AppColors.fontColorWhite,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Container(
                          height: 36.h,
                          width: 1.w,
                          color: Colors.white54,
                          child: Container(),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: 65.w,
                              height: 65.h,
                              child: Assets.pngs.redPoints.image(),
                            ),
                            8.hb,
                            Text(
                              'Red Points',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.fontColorWhite,
                                  fontWeight: FontWeight.w500),
                            ),
                            4.hb,
                            Text(
                              '50',
                              style: TextStyle(
                                  fontSize: 24.sp,
                                  color: AppColors.fontColorWhite,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              32.hb,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Points Statistics",
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: AppColors.fontColorBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            4.hb,
                            Text(
                              "Tue, 19 Jan’21",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.lightRed,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(6.r),
                          height: 32.r,
                          width: 32.r,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      AppColors.fontColorGrey.withOpacity(0.4)),
                              borderRadius: BorderRadius.circular(55)),
                          child: Assets.pngs.filter.image(
                            height: 24.r,
                          ),
                        ),
                        6.wb,
                        Container(
                          height: 32.r,
                          width: 32.r,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      AppColors.fontColorGrey.withOpacity(0.4)),
                              borderRadius: BorderRadius.circular(55)),
                          child: Assets.pngs.search.image(
                            height: 32.r,
                          ),
                        )
                      ],
                    ),
                    28.hb,
                    SizedBox(height: 320.h, child: PointsBarChart()),
                    16.hb,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 6.r,
                          backgroundColor: AppColors.vividOrange,
                        ),
                        8.wb,
                        Text(
                          "Gold Points",
                          style: TextStyle(
                              color: AppColors.fontColorGrey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        24.wb,
                        CircleAvatar(
                          radius: 6.r,
                          backgroundColor: AppColors.lightRed,
                        ),
                        8.wb,
                        Text(
                          "Red Points",
                          style: TextStyle(
                              color: AppColors.fontColorGrey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
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

class TransactionHistoryWidget extends StatelessWidget {
  const TransactionHistoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 28.r,
          backgroundColor: AppColors.fontColorGrey.withOpacity(0.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "4:52",
                style: TextStyle(
                    color: AppColors.fontColorBlack,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "AM",
                style: TextStyle(
                    color: AppColors.fontColorGrey,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        14.wb,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "#898983",
              style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.fontColorBlack,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "Mr Zulfiqar Ahmed",
              style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.fontColorBlack,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Spacer(),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "+100 AED",
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.lightRed,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "100 AED",
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.fontColorGrey,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            4.wb,
            Icon(
              Icons.navigate_next,
              size: 24.r,
            )
          ],
        ),
      ],
    );
  }
}

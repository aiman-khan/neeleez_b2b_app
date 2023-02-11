import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/core/custom_dialog.dart';
import 'package:neeleez_b2b/core/summary_dialog.dart';

import '../../../utils/assets_paths.dart';
import '../../../utils/colors.dart';
import '../controllers/page9_accept_scheduled_job_controller.dart';

class Page9AcceptScheduledJobView
    extends GetView<Page9AcceptScheduledJobController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        width: 1.sw,
        height: 1.sh,
        child: Column(
          children: [
            AppBar(
              title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Image.asset(
                  AssetsPaths.BACK_ICON,
                  height: 15.r,
                ),
                30.wb,
                Text(
                  'Job Detail',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.lightRed,
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 0,
              leadingWidth: 0,
            ),
            Container(
              height: 35.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  colors: [AppColors.darkRed, AppColors.lightRed],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Current Location',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.fontColorWhite,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '6 min / 2.5 km',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.fontColorWhite,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ]),
              ),
            ),
            Spacer(),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    // showAlert(
                    //     context,
                    //     "Verify",
                    //     "Are you sure you want to\naccept this job?",
                    //     "Accept",
                    //     AssetsPaths.VERIFY_ICON);
                    // showAlert(
                    //     context,
                    //     "Awesome",
                    //     "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit",
                    //     "OK",
                    //     AssetsPaths.AWESOME);
                    // showAlert(
                    //     context,
                    //     "Sorry",
                    //     "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit",
                    //     "OK",
                    //     AssetsPaths.SORRY);
                    // showAlert(
                    //     context,
                    //     "Success",
                    //     "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit",
                    //     "OK",
                    //     AssetsPaths.SUCCESS);
                    // showAlert(
                    //     context,
                    //     "Cancel",
                    //     "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit",
                    //     "OK",
                    //     AssetsPaths.CANCEL);
                    // showAlert(
                    //     context,
                    //     "Something Went Wrong!",
                    //     "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit",
                    //     "OK",
                    //     AssetsPaths.ERROR);
                    // showAlert(
                    //     context,
                    //     "Checkout",
                    //     "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit",
                    //     "OK",
                    //     AssetsPaths.CHECKOUT);
                    showSummaryDialog(
                        context,
                        "Points Summary",
                        "Save your Accounts, increase your\ngolden points to avoid suspension",
                        "OK",
                        AssetsPaths.POINT_SUMMARY);
                  },
                  child: Container(
                    height: 55.h,
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(
                        colors: [AppColors.darkRed, AppColors.lightRed],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Current Location',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.fontColorWhite,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '6 min / 2.5 km',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.fontColorWhite,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ]),
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      20.hb,

                      /// 'Customer Name:',
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Customer Name:',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.darkRed,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Mr Ahmed',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.fontColorBlack,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      20.hb,

                      /// 'Sub Category:'
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sub Category:',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.darkRed,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Wall Split',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.fontColorBlack,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      20.hb,

                      /// 'Images:'
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Images:',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.darkRed,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

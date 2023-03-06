import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/app/modules/rating/views/widgets/rating_bar.dart';
import 'package:neeleez_b2b/core/custom_elevated_button.dart';
import 'package:neeleez_b2b/core/custom_text_field.dart';

import '../../../../gen/assets.gen.dart';
import '../../../utils/colors.dart';
import '../controllers/rating_controller.dart';

class RatingView extends GetView<RatingController> {
  double rating = 0;
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
                automaticallyImplyLeading: false,
                title: Row(children: [
                  Assets.pngs.back.image(
                    height: 18.r,
                  ),
                  30.wb,
                  Text(
                    'Rate Your Client',
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
                width: double.infinity,
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
                child: Column(
                  children: [
                    Text(
                      'GOOD WORK!',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.fontColorWhite,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    10.hb,
                    Text(
                      "You have marked your Job as Finished.\nIt's time to give us feedback about the client.",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.fontColorWhite,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    12.hb,
                    Assets.pngs.workDone.image(
                      height: 280.h,
                      width: 280.w,
                    ),
                    12.hb,
                    SizedBox(
                      width: 180.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Total Duration',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.fontColorWhite,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '01:00:09',
                            style: TextStyle(
                                fontSize: 40.sp,
                                color: AppColors.fontColorWhite,
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
                                      color: AppColors.fontColorWhite,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'min',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColors.fontColorWhite,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'sec',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColors.fontColorWhite,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    12.hb,
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 75.r,
                              width: 75.r,
                              child: Assets.pngs.worst.image(),
                            ),
                            4.hb,
                            Text(
                              'Worst',
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.fontColorWhite,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        4.wb,
                        Column(
                          children: [
                            SizedBox(
                              height: 75.r,
                              width: 75.r,
                              child: Assets.pngs.bad.image(),
                            ),
                            4.hb,
                            Text(
                              'Bad',
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.fontColorWhite,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        4.wb,
                        Column(
                          children: [
                            SizedBox(
                              height: 75.r,
                              width: 75.r,
                              child: Assets.pngs.average.image(),
                            ),
                            4.hb,
                            Text(
                              'Average',
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.fontColorWhite,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        4.wb,
                        Column(
                          children: [
                            SizedBox(
                              height: 75.r,
                              width: 75.r,
                              child: Assets.pngs.good.image(),
                            ),
                            4.hb,
                            Text(
                              'Good',
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.fontColorWhite,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        4.wb,
                        Column(
                          children: [
                            SizedBox(
                              height: 75.r,
                              width: 75.r,
                              child: Assets.pngs.best.image(),
                            ),
                            4.hb,
                            Text(
                              'Best',
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.fontColorWhite,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              35.hb,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: TextFormField(
                  validator: (v) {},
                  cursorColor: AppColors.fontColorBlack,
                  maxLines: 5,
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsets.all(2),
                    contentPadding: EdgeInsets.all(8),
                    labelText: "Write your reviews",

                    labelStyle: TextStyle(
                        fontSize: 12.sp, color: AppColors.fontColorBlack),
                    suffixIconConstraints: BoxConstraints(maxHeight: 18.r),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              18.hb,
              CustomElevatedButton(
                  width: 220,
                  height: 46,
                  title: "Submit Rating",
                  onTap: () {},
                  backgroundColor1: AppColors.darkRed,
                  backgroundColor2: AppColors.lightRed),
              10.hb,
            ],
          ),
        ),
      ),
    );
  }
}

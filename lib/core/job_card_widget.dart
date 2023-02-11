import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';

import '../app/utils/assets_paths.dart';
import '../app/utils/colors.dart';
import 'custom_elevated_button.dart';
import 'custom_outlined_button.dart';

class JobCardWidget extends StatelessWidget {
  JobCardWidget({
    required this.button,
  });
  final Widget button;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
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
                                color: Color.fromARGB(255, 255, 238, 0))
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
                  button,
                  10.hb
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
    );
  }
}

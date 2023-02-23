import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';

import '../../../../utils/colors.dart';

class ItemSummaryWidget extends StatelessWidget {
  const ItemSummaryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.lightGrey, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Item Name:',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.fontColorGrey,
                              fontWeight: FontWeight.w400),
                        ),
                        4.hb,
                        Text(
                          'Lorem ipsum dolor sit amet',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.fontColorDarkGrey,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(8.r),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.fontColorGrey.withOpacity(0.4)),
                      child: Text(
                        "01",
                        style: TextStyle(
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                12.hb,
                Divider(
                  thickness: 1,
                ),
                12.hb,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Rate (AED):',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.fontColorGrey,
                              fontWeight: FontWeight.bold),
                        ),
                        4.hb,
                        Text(
                          '125,00',
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.fontColorDarkGrey,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Unit:',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.fontColorGrey,
                              fontWeight: FontWeight.bold),
                        ),
                        4.hb,
                        Text(
                          'KG',
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.fontColorDarkGrey,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Quantity:',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.fontColorGrey,
                              fontWeight: FontWeight.bold),
                        ),
                        4.hb,
                        Text(
                          '50',
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.fontColorDarkGrey,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
                12.hb,
                Divider(
                  thickness: 1,
                ),
                12.hb,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tax(%):',
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.fontColorGrey,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '125,000',
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.fontColorGrey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                4.hb,
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Discount(%):',
                style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.fontColorGrey,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '125,000',
                style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.fontColorGrey,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          12.hb,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.fontColorGrey.withOpacity(0.3),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total:',
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.fontColorDarkGrey,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "125,000",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: AppColors.fontColorDarkGrey,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: " AED",
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.fontColorDarkGrey,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}

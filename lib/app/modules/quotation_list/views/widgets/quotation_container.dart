import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';

import '../../../../utils/colors.dart';

class QuotationContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String status;
  final String title;
  final String id;
  final int amount;
  final String time;
  final String date;
  const QuotationContainer({
    Key? key,
    required this.color1,
    required this.color2,
    required this.status,
    required this.title,
    required this.id,
    required this.amount,
    required this.time,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: AppColors.lightGrey,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 0.8,
                      color: color1,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10.r),
                  gradient: LinearGradient(
                      colors: [color1, color2], begin: Alignment.topCenter),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      time,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "PM",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      date,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              12.wb,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 18.h,
                    width: 55.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: color1),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        status,
                        style: TextStyle(color: color1, fontSize: 8.sp),
                      ),
                    ),
                  ),
                  4.hb,
                  Text(
                    title,
                    style: TextStyle(
                        color: AppColors.fontColorBlack,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  4.hb,
                  Text(
                    id,
                    style: TextStyle(
                        color: AppColors.fontColorGrey,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "$amount AED",
                    style: TextStyle(
                        color: AppColors.fontColorBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.fontColorGrey.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(55.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(4.r),
                          child: Icon(
                            Icons.edit,
                            size: 20.r,
                            color: AppColors.lightRed,
                          ),
                        ),
                      ),
                      8.wb,
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.fontColorGrey.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(55.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(4.r),
                          child: Icon(
                            Icons.visibility,
                            size: 20.r,
                            color: AppColors.quotationYellowDark,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        8.hb,
        Divider(
          thickness: 2,
        ),
        8.hb,
      ],
    );
  }
}

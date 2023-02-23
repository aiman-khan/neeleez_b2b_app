import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';

import '../../../../core/custom_elevated_button.dart';
import '../../../../core/custom_outlined_button.dart';
import '../../../../gen/assets.gen.dart';
import '../../../utils/colors.dart';
import '../../view_quotation/views/widgets/item_summary.dart';
import '../controllers/view_invoice_controller.dart';

class ViewInvoiceView extends GetView<ViewInvoiceController> {
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
                  Row(children: [
                    Assets.pngs.back.image(
                      height: 15.r,
                    ),
                    30.wb,
                    Text(
                      'INV # 989898',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.lightRed,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ]),
                centerTitle: true,
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              Container(
                width: double.infinity,
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
                    Container(
                      color: AppColors.quotationLightRed,
                      padding: EdgeInsets.symmetric(
                          horizontal: 32.w, vertical: 14.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Job ID # 989898',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.fontColorWhite,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '20-18-2021 | 10:00 AM',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: AppColors.fontColorWhite,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    20.hb,
                    Text(
                      'Amount Charged (AED)',
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.fontColorWhite,
                          fontWeight: FontWeight.w500),
                    ),
                    6.hb,
                    Text(
                      '50,000.00',
                      style: TextStyle(
                          fontSize: 32.sp,
                          color: AppColors.fontColorYellow,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.all(24.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 4.h),
                            decoration: BoxDecoration(
                                color: AppColors.quotationLightRed,
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              'Due Date: 12-02-2022',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.fontColorWhite,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 4.h),
                            decoration: BoxDecoration(
                                color: AppColors.quotationLightRed,
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              'Status: Paid',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.fontColorWhite,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
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
                    Text(
                      "Invoice to:",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.fontColorBlack,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    16.hb,
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 12.h),
                      decoration: BoxDecoration(
                          color: AppColors.lightGrey,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.fontColorGrey,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    16.hb,
                    Divider(
                      thickness: 1,
                    ),
                    16.hb,
                    Text(
                      "Item Summary:",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.fontColorBlack,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    16.hb,
                    ItemSummaryWidget(),
                    16.hb,
                    ItemSummaryWidget(),
                    16.hb,
                    Divider(
                      thickness: 1,
                    ),
                    16.hb,
                    Text(
                      "Payment Summary:",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.fontColorBlack,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    16.hb,
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.w, vertical: 10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.fontColorGrey.withOpacity(0.3),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Subtotal:',
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
                    16.hb,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Payment Method:",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.fontColorDarkGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          // width: 64.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xff18E126),
                                  Color(0xff05AC10),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 12.r,
                                  backgroundColor: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Assets.pngs.money.image(),
                                  ),
                                ),
                                6.wb,
                                Padding(
                                  padding: EdgeInsets.only(right: 16.w),
                                  child: Text(
                                    "Cash",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: AppColors.fontColorWhite,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    24.hb,
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomOutlinedButton(
                            width: 190.w,
                            height: 45.h,
                            text: "Go Back",
                            fontSize: 14,
                            widget: Stack(
                              alignment: Alignment.center,
                              children: [
                                Assets.pngs.continueCircle.image(
                                  height: 32.r,
                                  width: 32.r,
                                  color: Color.fromARGB(255, 234, 165, 188),
                                ),
                                Icon(
                                  Icons.navigate_before,
                                  color: AppColors.lightRed,
                                  size: 30.r,
                                )
                              ],
                            ),
                          ),
                          CustomElevatedButton(
                            width: 190.w,
                            height: 45.h,
                            fontSize: 14,
                            title: "Export to",
                            onTap: () {},
                            widget: Stack(
                              alignment: Alignment.center,
                              children: [
                                Assets.pngs.continueCircle.image(
                                  height: 32.r,
                                  width: 32.r,
                                  color: Color.fromARGB(255, 234, 165, 188),
                                ),
                                Assets.pngs.export.image(
                                  height: 16.r,
                                  width: 16.r,
                                  color: Color.fromARGB(255, 234, 165, 188),
                                ),
                              ],
                            ),
                            backgroundColor2: AppColors.darkRed,
                            backgroundColor1: AppColors.darkRed,
                          ),
                        ],
                      ),
                    ),
                    16.hb,
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

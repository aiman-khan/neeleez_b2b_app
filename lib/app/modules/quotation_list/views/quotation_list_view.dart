import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/app/modules/quotation_list/views/widgets/quotation_container.dart';
import 'package:neeleez_b2b/app/routes/app_pages.dart';

import '../../../../core/custom_elevated_button.dart';
import '../../../../core/custom_outlined_button.dart';
import '../../../../gen/assets.gen.dart';
import '../../../utils/colors.dart';
import '../controllers/quotation_list_controller.dart';

class QuotationListView extends GetView<QuotationListController> {
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
                          child: Assets.pngs.quotationList
                              .image(height: 16.r, width: 16.r)),
                    ),
                    10.wb,
                    Text(
                      'Quotation List',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.purple,
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
                        Row(
                          children: [
                            Text(
                              'Quotation list',
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.fontColorBlack,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                filterDialog(context);
                              },
                              child: Assets.pngs.filter.image(height: 20.r),
                            ),
                            8.wb,
                            Assets.pngs.search.image(height: 35.r),
                            8.wb,
                            InkWell(
                              onTap: () {
                                Get.toNamed(Routes.ADD_QUOTATION);
                              },
                              child: Assets.pngs.add.image(height: 35.r),
                            )
                          ],
                        ),
                        20.hb,
                        QuotationContainer(
                            color1: AppColors.quotationGreen,
                            color2: AppColors.darkGreen,
                            status: "Paid",
                            title: "Lorem Ipsum",
                            amount: 125000,
                            id: "QTE-232",
                            time: "10:00",
                            date: "12-02-2023"),
                        QuotationContainer(
                            color1: AppColors.quotationYellowDark,
                            color2: AppColors.vividOrange,
                            status: "Partial",
                            title: "Lorem Ipsum",
                            amount: 125000,
                            id: "QTE-232",
                            time: "10:00",
                            date: "12-02-2023"),
                        QuotationContainer(
                            color1: AppColors.quotationBlueDark,
                            color2: AppColors.quotationBlueLight,
                            status: "Due",
                            title: "Lorem Ipsum",
                            amount: 125000,
                            id: "QTE-232",
                            time: "10:00",
                            date: "12-02-2023"),
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

  Future<dynamic> filterDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Dialog(
              elevation: 56,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                          height: 30.r,
                          width: 30.r,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.fontColorGrey,
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                )
                              ],
                              color: AppColors.fontColorWhite,
                              borderRadius: BorderRadius.circular(50)),
                          child: Assets.pngs.close.image(
                            height: 35.r,
                            width: 35.r,
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Filter',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.fontColorBlack,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        20.hb,
                        Divider(
                          thickness: 2,
                          indent: 70.w,
                          endIndent: 70.w,
                        ),
                        20.hb,
                        Text(
                          "Select Price Range (AED):",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.fontColorGrey,
                              fontWeight: FontWeight.w500),
                        ),
                        24.hb,
                        Slider(
                            inactiveColor: AppColors.lightGrey,
                            thumbColor: AppColors.darkGreen,
                            value: 0,
                            onChanged: (value) {}),
                        24.hb,
                        Divider(
                          thickness: 2,
                        ),
                        16.hb,
                        Text(
                          "Date Range:",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.fontColorGrey,
                              fontWeight: FontWeight.w500),
                        ),
                        16.hb,
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: AppColors.fontColorGrey),
                              color: Colors.white),
                          height: 50.h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: AppColors.lightGrey,
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Assets.pngs.calendar.image(
                                        height: 25.r,
                                        width: 25.r,
                                        color: AppColors.fontColorGrey)),
                              ),
                              10.wb,
                              Text(
                                'From Date:',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.fontColorGrey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Spacer(),
                              Container(
                                height: double.infinity,
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: AppColors.lightGrey,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      '14-09-2022',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.fontColorGrey,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    12.wb,
                                    Icon(
                                      Icons.more_vert,
                                      size: 18.r,
                                      color: AppColors.fontColorGrey,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        12.hb,
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: AppColors.fontColorGrey),
                              color: Colors.white),
                          height: 50.h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: AppColors.lightGrey,
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Assets.pngs.calendar.image(
                                        height: 25.r,
                                        width: 25.r,
                                        color: AppColors.fontColorGrey)),
                              ),
                              10.wb,
                              Text(
                                'To Date:',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.fontColorGrey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Spacer(),
                              Container(
                                height: double.infinity,
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: AppColors.lightGrey,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      '14-09-2022',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.fontColorGrey,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    12.wb,
                                    Icon(
                                      Icons.more_vert,
                                      size: 18.r,
                                      color: AppColors.fontColorGrey,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        16.hb,
                        Divider(
                          thickness: 2,
                        ),
                        16.hb,
                        Text(
                          "Payment Status::",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.fontColorGrey,
                              fontWeight: FontWeight.w500),
                        ),
                        14.hb,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Paid",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.fontColorBlack,
                                  fontWeight: FontWeight.bold),
                            ),
                            CircleAvatar(
                              backgroundColor: AppColors.lightRed,
                              radius: 10.r,
                              child: CircleAvatar(
                                backgroundColor: AppColors.fontColorWhite,
                                radius: 9.r,
                                child: CircleAvatar(
                                    radius: 6.r,
                                    backgroundColor: AppColors.lightRed),
                              ),
                            )
                          ],
                        ),
                        14.hb,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Partial Paid",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.fontColorBlack,
                                  fontWeight: FontWeight.bold),
                            ),
                            CircleAvatar(
                              backgroundColor: AppColors.lightRed,
                              radius: 10.r,
                              child: CircleAvatar(
                                backgroundColor: AppColors.fontColorWhite,
                                radius: 9.r,
                                child: CircleAvatar(
                                    radius: 6.r,
                                    backgroundColor: AppColors.lightRed),
                              ),
                            )
                          ],
                        ),
                        14.hb,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Unpaid",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.fontColorBlack,
                                  fontWeight: FontWeight.bold),
                            ),
                            CircleAvatar(
                              backgroundColor: AppColors.lightRed,
                              radius: 10.r,
                              child: CircleAvatar(
                                backgroundColor: AppColors.fontColorWhite,
                                radius: 9.r,
                                child: CircleAvatar(
                                    radius: 6.r,
                                    backgroundColor: AppColors.lightRed),
                              ),
                            )
                          ],
                        ),
                        14.hb,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Overpaid",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.fontColorBlack,
                                  fontWeight: FontWeight.bold),
                            ),
                            CircleAvatar(
                              backgroundColor: AppColors.fontColorGrey,
                              radius: 10.r,
                              child: CircleAvatar(
                                backgroundColor: AppColors.fontColorWhite,
                                radius: 9.r,
                                child: CircleAvatar(
                                    radius: 6.r,
                                    backgroundColor: AppColors.fontColorGrey),
                              ),
                            )
                          ],
                        ),
                        14.hb,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Draft",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.fontColorBlack,
                                  fontWeight: FontWeight.bold),
                            ),
                            CircleAvatar(
                              backgroundColor: AppColors.lightRed,
                              radius: 10.r,
                              child: CircleAvatar(
                                backgroundColor: AppColors.fontColorWhite,
                                radius: 9.r,
                                child: CircleAvatar(
                                    radius: 6.r,
                                    backgroundColor: AppColors.lightRed),
                              ),
                            )
                          ],
                        ),
                        14.hb,
                        SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomOutlinedButton(
                                width: 145.w,
                                height: 40.h,
                                text: "Reset",
                                fontSize: 14,
                                widget: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Assets.pngs.continueCircle.image(
                                      height: 32.r,
                                      width: 32.r,
                                      color: Color.fromARGB(255, 234, 165, 188),
                                    ),
                                    Assets.pngs.reset.image(
                                      height: 15.r,
                                      width: 15.r,
                                      color: Color.fromARGB(255, 234, 165, 188),
                                    ),
                                  ],
                                ),
                              ),
                              CustomElevatedButton(
                                width: 145.w,
                                height: 40.h,
                                fontSize: 14,
                                title: "Apply",
                                onTap: () {},
                                widget: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Assets.pngs.continueCircle.image(
                                      height: 32.r,
                                      width: 32.r,
                                      color: Color.fromARGB(255, 234, 165, 188),
                                    ),
                                    Icon(
                                      Icons.check,
                                      size: 24.r,
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
                        24.hb
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}

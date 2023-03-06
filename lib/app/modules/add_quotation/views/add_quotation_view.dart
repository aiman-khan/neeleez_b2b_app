import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';
import 'package:neeleez_b2b/app/routes/app_pages.dart';
import '../../../../core/custom_elevated_button.dart';
import '../../../../core/custom_outlined_button.dart';
import '../../../../gen/assets.gen.dart';
import '../../../utils/colors.dart';
import '../controllers/add_quotation_controller.dart';

class AddQuotationView extends GetView<AddQuotationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        child: Column(
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              title: Row(children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Assets.pngs.back.image(
                    height: 18.r,
                  ),
                ),
                30.wb,
                Text(
                  'Add Quotation',
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
                      'QTE # 989898',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.fontColorWhite,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Mr. Zulfiqar Ahmed',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.fontColorWhite,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      20.hb,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Add More Items',
                            style: TextStyle(
                                fontSize: 22.sp,
                                color: AppColors.fontColorBlack,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Assets.pngs.add.image(height: 30.r, width: 30.r)
                        ],
                      ),
                      16.hb,
                      Divider(
                        thickness: 2,
                      ),
                      18.hb,
                      TextFormField(
                        validator: (v) {},
                        cursorColor: Colors.black,
                        cursorHeight: 20,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                        ),
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          hintText: "Item 1",
                          hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 14.sp),
                          // contentPadding: EdgeInsets.all(2),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AppColors.lightGrey,
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Assets.pngs.item.image(
                                      height: 17.r,
                                      width: 16.r,
                                      color: AppColors.fontColorGrey)),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(8),

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
                      24.hb,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rate (AED)',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: AppColors.fontColorDarkGrey,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            height: 40.h,
                            width: 160.w,
                            color: AppColors.lightGrey,
                            child: TextFormField(
                              validator: (v) {},
                              cursorColor: Colors.black,
                              cursorHeight: 12,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                              ),
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: "245,000",
                                hintStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 12,
                                ),
                                // contentPadding: EdgeInsets.all(2),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Assets.pngs.upAndDownArrows.image(
                                    color: AppColors.fontColorGrey,
                                    height: 12.r,
                                    width: 12.r,
                                  ),
                                ),
                                contentPadding: EdgeInsets.all(8),

                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.red),
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
                        ],
                      ),
                      30.hb,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Unit',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: AppColors.fontColorDarkGrey,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 130.w,
                                child: DropdownButton(
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem(
                                        child: Text(
                                      'KG',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: AppColors.fontColorGrey,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.center,
                                    ))
                                  ],
                                  onChanged: (v) {},
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Qty:',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: AppColors.fontColorDarkGrey,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 130.w,
                                child: DropdownButton(
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem(
                                        child: Text(
                                      '1-1000',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: AppColors.fontColorGrey,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.center,
                                    ))
                                  ],
                                  onChanged: (v) {},
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      20.hb,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Tax(%)',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: AppColors.fontColorDarkGrey,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            height: 40.h,
                            width: 160.w,
                            child: TextFormField(
                              validator: (v) {},
                              cursorColor: Colors.black,
                              cursorHeight: 18.h,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                              ),
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: Assets.pngs.upAndDownArrows.image(
                                    color: AppColors.fontColorGrey,
                                    height: 12.r,
                                    width: 12.r,
                                  ),
                                ),
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                      20.hb,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Discount(%)',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: AppColors.fontColorDarkGrey,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            height: 40.h,
                            width: 160.w,
                            child: TextFormField(
                              validator: (v) {},
                              cursorColor: Colors.black,
                              cursorHeight: 18.h,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                              ),
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: Assets.pngs.upAndDownArrows.image(
                                    color: AppColors.fontColorGrey,
                                    height: 12.r,
                                    width: 12.r,
                                  ),
                                ),
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                      20.hb,
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 13.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.fontColorGrey.withOpacity(0.3),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total:',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.fontColorBlack,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "125,000",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: AppColors.fontColorBlack,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: " AED",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: AppColors.fontColorBlack,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                      16.hb,
                      Divider(
                        thickness: 2,
                      ),
                      16.hb,
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.lightGrey,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 13.h),
                              child: Column(
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Total Tax:',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: AppColors.fontColorGrey,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: "125,000",
                                                  style: TextStyle(
                                                      fontSize: 14.sp,
                                                      color: AppColors
                                                          .fontColorGrey,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(
                                                  text: " AED",
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      color: AppColors
                                                          .fontColorGrey,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                        ),
                                      ]),
                                  10.hb,
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Total Discount:',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: AppColors.fontColorGrey,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: "125,000",
                                                  style: TextStyle(
                                                      fontSize: 14.sp,
                                                      color: AppColors
                                                          .fontColorGrey,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(
                                                  text: " AED",
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      color: AppColors
                                                          .fontColorGrey,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                        ),
                                      ]),
                                ],
                              ),
                            ),
                            20.hb,
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 13.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.fontColorGrey.withOpacity(0.3),
                              ),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total:',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: AppColors.fontColorBlack,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: "125,000",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color:
                                                      AppColors.fontColorBlack,
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                              text: " AED",
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  color:
                                                      AppColors.fontColorBlack,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      20.hb,
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomOutlinedButton(
                              width: 160.w,
                              height: 40.h,
                              text: "Cancel",
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
                                    Icons.close,
                                    size: 20.r,
                                    color: AppColors.lightRed,
                                  )
                                ],
                              ),
                            ),
                            CustomElevatedButton(
                              width: 160.w,
                              height: 40.h,
                              fontSize: 14,
                              title: "Save",
                              onTap: () {
                                Get.toNamed(Routes.VIEW_QUOTATION);
                              },
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
                                    size: 20.r,
                                    color: AppColors.fontColorWhite,
                                  )
                                ],
                              ),
                              backgroundColor2: AppColors.darkRed,
                              backgroundColor1: AppColors.darkRed,
                            ),
                          ],
                        ),
                      ),
                      20.hb,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

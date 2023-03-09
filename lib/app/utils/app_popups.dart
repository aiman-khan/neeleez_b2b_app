import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:neeleez_b2b/app/constants/sized_box.dart';

import '../../core/custom_elevated_button.dart';
import 'colors.dart';

class AppPopUps {
  bool isDialogShowing = true;

  showProgressDialog(
      {BuildContext? context, bool? barrierDismissal, Color? color}) {
    isDialogShowing = true;
    showDialog(
        useRootNavigator: false,
        useSafeArea: false,
        barrierDismissible: barrierDismissal ?? false,
        context: context!,
        builder: (context) => Center(
              child: Container(
                decoration: BoxDecoration(
                  //color: AppColors(..blackcardsBackground,
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(25.r)),
                  boxShadow: [
                    BoxShadow(
                      //  color: AppColors().shadowColor,
                      color: Colors.transparent,
                      spreadRadius: 5.r,
                      blurRadius: 5.r,
                      offset: const Offset(3, 5), // changes position of shadow
                    ),
                  ],
                ),
                height: 120.h,
                width: 120.h,
                //  child: Lottie.asset(AssetsNames().loader),
                child: spinner(color: color),
              ),
            )).then((value) {
      isDialogShowing = false;
    });
  }

  Center spinner({Color? color}) {
    return Center(
      child: SpinKitCircle(
        color: color ?? AppColors.darkRed,
        size: 50.0,
      ),
    );
  }

  showButtonDialog({
    required BuildContext context,
    required String title,
    required String description,
    required String image,
    required String buttonTitle,
    VoidCallback? buttonTap,
    VoidCallback? cancelTap,
    Color? buttonColor,
    bool? barrierDismissal,
  }) {
    isDialogShowing = true;
    return showDialog(
        useRootNavigator: false,
        useSafeArea: false,
        barrierDismissible: barrierDismissal ?? false,
        context: context,
        builder: (context) => Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: EdgeInsets.all(25.r),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 25.r,
                            width: 25.r,
                            decoration: BoxDecoration(
                                color: AppColors.lightGrey,
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.close_rounded,
                              size: 20.r,
                              color: AppColors.fontColorWhite,
                            ),
                          ),
                        ),
                      ),
                      10.hb,
                      Image.asset(
                        image,
                        height: 150.h,
                        width: 170.w,
                      ),
                      10.hb,
                      title.isNotEmpty
                          ? Text(
                              title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColors.fontColorBlack,
                              ),
                            )
                          : Container(),
                      title.isNotEmpty ? 10.hb : 0.hb,
                      Text(
                        description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.fontColorBlack,
                        ),
                      ),
                      20.hb,
                      CustomElevatedButton(
                        width: 250,
                        height: 55,
                        title: buttonTitle,
                        onTap: () {
                          buttonTap!();
                        },
                        backgroundColor1: AppColors.darkRed,
                        backgroundColor2: AppColors.lightRed,
                      )
                    ]),
              ),
            )).then((value) {
      isDialogShowing = false;
    });
  }

  dismissDialog(context) {
    if (isDialogShowing) {
      // navigatorKey.currentState!.pop();
      Navigator.pop(context);
    }
  }
}

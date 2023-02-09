import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app/utils/colors.dart';

class CustomOutlinedButton extends StatelessWidget {
  CustomOutlinedButton(
      {super.key,
      required this.text,
      required this.width,
      required this.fontSize,
      this.widget,
      required this.height});
  final String text;
  final double width;
  final double height;
  final double fontSize;
  Widget? widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(55.0),
          ),
          side: BorderSide(width: 2, color: AppColors.darkRed),
        ),
        onPressed: () {
          // if (!controller.isMembersSelected.value) {
          //   controller.toggle();
          // }
        },
        child: Row(
          mainAxisAlignment: widget != null
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: fontSize.sp,
                color: AppColors.darkRed,
                fontWeight: FontWeight.bold,
              ),
            ),
            widget ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}

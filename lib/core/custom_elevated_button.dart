import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {super.key,
      this.fontColor = Colors.white,
      this.fontWeight = FontWeight.bold,
      this.fontSize = 16,
      required this.width,
      required this.height,
      required this.title,
      required this.onTap,
      required this.backgroundColor1,
      required this.backgroundColor2,
      this.widget,
      this.suffixIcon});

  final String title;
  final VoidCallback onTap;
  Color backgroundColor1;
  Color backgroundColor2;
  Widget? suffixIcon;

  FontWeight fontWeight;
  Color fontColor;
  double width;
  double height;
  Widget? widget;
  int fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(55.r),
        gradient: LinearGradient(colors: [
          backgroundColor2,
          backgroundColor1,
        ], begin: Alignment.centerLeft, end: Alignment.centerRight),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(5.r),
          backgroundColor: MaterialStateProperty.all<Color>(
            Colors.transparent,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(55.r),
          )),
          fixedSize: MaterialStateProperty.all<Size>(Size(width.w, height.h)),
        ),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: widget != null
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: fontSize.sp,
                color: fontColor,
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

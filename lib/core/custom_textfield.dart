import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app/utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.keyboardType,
      required this.validator,
      this.hintText,
      this.obscureText = false,
      this.suffixIcon,
      this.focusNode,
      this.onSaved,
      this.onEditingComplete,
      this.controller,
      this.autofocus = false,
      this.enabled = true,
      this.onChanged,
      this.prefixIcon,
      this.onTap,
      this.minLine = 1,
      this.maxLines = 1,
      this.radius = 56,
      this.inputFormatters,
      this.fillColor = Colors.white,
      this.textInputAction = TextInputAction.next,
      this.borderColor = AppColors.fontColorGrey});

  Widget? suffixIcon;
  Widget? prefixIcon;
  String? hintText;
  bool obscureText;
  TextInputType keyboardType;
  FocusNode? focusNode;
  Color? fillColor;
  TextInputAction textInputAction;
  String? Function(String?)? validator;
  void Function(String?)? onSaved;
  Color borderColor;
  List<TextInputFormatter>? inputFormatters;
  void Function()? onEditingComplete;
  VoidCallback? onTap;
  void Function(String?)? onChanged;

  TextEditingController? controller;
  bool autofocus = false;
  bool enabled = true;
  int maxLines;
  int minLine;
  double radius;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      onChanged: onChanged,
      autofocus: autofocus,
      enabled: enabled,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      minLines: minLine,
      validator: validator,
      onSaved: onSaved,
      onEditingComplete: onEditingComplete,
      textInputAction: textInputAction,
      inputFormatters: inputFormatters,
      focusNode: focusNode,
      style: TextStyle(
        color: AppColors.fontColorGrey,
        fontSize: 16.sp,
      ),
      cursorColor: AppColors.fontColorGrey,
      cursorHeight: 20.sp,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 18.h),
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.fontColorGrey.withOpacity(0.5),
          fontSize: 16.sp,
        ),
        errorStyle: TextStyle(
          fontSize: 12.sp,
        ),
        errorMaxLines: 2,
        filled: true,
        fillColor: fillColor,
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkRed),
          borderRadius: BorderRadius.circular(radius.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkRed),
          borderRadius: BorderRadius.circular(radius.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(radius.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius.r),
          borderSide: BorderSide(color: borderColor),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}

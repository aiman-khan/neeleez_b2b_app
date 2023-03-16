import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app/utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    required this.labelText,
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
  });

  Widget? suffixIcon;
  Widget? prefixIcon;
  String labelText;
  String? hintText;
  bool obscureText;
  TextInputType keyboardType;
  FocusNode? focusNode;
  String? Function(String?)? validator;
  void Function(String?)? onSaved;

  void Function()? onEditingComplete;
  void Function(String?)? onChanged;

  TextEditingController? controller;
  bool autofocus = false;
  bool enabled = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.h,
      child: TextFormField(
        onChanged: onChanged,
        autofocus: autofocus,
        enabled: enabled,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        validator: validator,
        onSaved: onSaved,
        onEditingComplete: onEditingComplete,
        focusNode: focusNode,
        style: TextStyle(
          color: AppColors.fontColorBlack,
          fontSize: 16.sp,
        ),
        cursorColor: AppColors.fontColorBlack,
        cursorHeight: 16.sp,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColors.fontColorBlack,
            fontSize: 16.sp,
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            color: AppColors.fontColorBlack,
            fontSize: 16.sp,
          ),
          filled: true,
          fillColor: Colors.white,
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightRed),
            borderRadius: BorderRadius.circular(56.r),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightRed),
            borderRadius: BorderRadius.circular(56.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(56.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(56.r),
            borderSide: BorderSide(color: Colors.grey),
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}

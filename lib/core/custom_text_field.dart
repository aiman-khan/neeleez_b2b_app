import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neeleez_b2b/app/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.validator,
      this.keyboardType = TextInputType.text,
      this.textInputAction = TextInputAction.next,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false,
      required this.controller,
      required this.hintText});

  TextInputType keyboardType;
  TextInputAction textInputAction;
  String? Function(String?)? validator;
  String hintText;
  Widget? prefixIcon;
  Widget? suffixIcon;
  TextEditingController controller;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      cursorColor: Colors.black,
      cursorHeight: 20,
      obscureText: obscureText,
      textInputAction: textInputAction,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontSize: 16,
        ),
        // contentPadding: EdgeInsets.all(2),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.all(8),
        suffixIconConstraints: BoxConstraints(maxHeight: 18.r),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(50),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(50),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(50),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}

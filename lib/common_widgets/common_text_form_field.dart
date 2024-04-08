import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTextFormField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final bool isPassword;
  final TextEditingController? controller;


  const CommonTextFormField({super.key,
    this.hintText,
    this.suffixIcon,
    this.isPassword = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: TextFormField(
        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w300),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}

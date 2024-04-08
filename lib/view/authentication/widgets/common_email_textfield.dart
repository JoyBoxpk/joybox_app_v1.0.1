import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/res/color.dart';
import '../../../core/utils/field_validator.dart';

class CommonEmailTextField extends StatelessWidget {
  const CommonEmailTextField({
    super.key,
    required this.emailController,
    required this.emailHintText,
    this.suffixIcon,
  });

  final TextEditingController emailController;
  final String emailHintText;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.none,
      validator: FieldValidator.validateEmail,
      controller: emailController,
      decoration: InputDecoration(
        errorStyle: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
        contentPadding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 12.w),
        fillColor: Colors.white,
        filled: true,
        hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w300),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: emailHintText,
        suffixIcon: Icon(suffixIcon),
        suffixIconColor: AppColor.red1,
      ),
    );
  }
}

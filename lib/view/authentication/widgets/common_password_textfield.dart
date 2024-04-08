import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonPasswordTextField extends StatefulWidget {
  final TextEditingController passController;
  final String? Function(String?)? validator;
  final String passwordHintText;

  const CommonPasswordTextField({
    super.key,
    required this.passController,
    required this.validator,
    required this.passwordHintText,
  });

  @override
  CommonPassTextFieldState createState() => CommonPassTextFieldState();
}

class CommonPassTextFieldState extends State<CommonPasswordTextField> {
  bool isPassVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
      validator: widget.validator,
      obscureText: !isPassVisible,
      controller: widget.passController,
      decoration: InputDecoration(
        errorStyle: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
        contentPadding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 12.w),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w300),
        hintText: widget.passwordHintText,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isPassVisible = !isPassVisible;
            });
          },
          icon: isPassVisible
              ? const Icon(Icons.visibility_outlined)
              : const Icon(Icons.visibility_off_outlined),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/color.dart';

class CommonElevatedButton extends StatelessWidget {
  const CommonElevatedButton({
    super.key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    this.margin,
    required this.onPressed,
    this.buttonStyle,
    this.alignment,
    this.buttonTextStyle,
    this.isDisabled,
    this.height,
    this.width,
    required this.text,
  });

  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final EdgeInsets? margin;
  final VoidCallback onPressed;
  final ButtonStyle? buttonStyle;
  final Alignment? alignment;
  final TextStyle? buttonTextStyle;
  final bool? isDisabled;
  final double? height;
  final double? width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width?? 105.w,
      height:height?? 48.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          textStyle: buttonTextStyle?? Theme.of(context).textTheme.displaySmall!.copyWith(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
          backgroundColor: AppColor.red1,
          foregroundColor: AppColor.white,
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../res/color.dart';

class CommonElevatedButton extends StatelessWidget {
  const CommonElevatedButton({
    super.key,
    required this.onPressed,
    this.height,
    this.width,
    required this.text,
    this.textColor,
    this.buttonColor,
    this.fontSize,
    this.borderRadius,
  });

  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final String text;
  final Color? buttonColor;
  final Color? textColor;
  final double? fontSize;
  final double? borderRadius; // Nullable border radius property

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height ?? 20.h,
        width: width ?? 50.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 6.0),
          color: buttonColor ?? AppColor.red2,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: fontSize ?? 15.sp,
                color: textColor ?? AppColor.white,
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
    );
  }
}

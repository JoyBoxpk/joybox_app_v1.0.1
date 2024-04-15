import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/res/color.dart';

class CommonIconButton extends StatelessWidget {
  final Color? buttonColor;
  final EdgeInsetsGeometry? padding;
  final VoidCallback onPressed;
  final Color? iconColor;
  final Color? textColor;

  const CommonIconButton({
    super.key,
    this.buttonColor,
    this.padding,
    required this.onPressed,
    this.iconColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? AppColor.red1,
          padding: padding ??
              EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 5.h,
              ),
        ),
        onPressed: onPressed,
        icon: Icon(
          Icons.arrow_back_ios,
          size: 16.sp,
          color: iconColor ?? AppColor.white,
        ),
        label: Text(
          "Grab Offer",
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: textColor ?? AppColor.white,
          ),
        ),
      ),
    );
  }
}

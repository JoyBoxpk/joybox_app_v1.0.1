import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/color.dart';

// class CommonElevatedButton extends StatelessWidget {
//   const CommonElevatedButton({
//     super.key,
//     this.decoration,
//     this.leftIcon,
//     this.rightIcon,
//     this.margin,
//     required this.onPressed,
//     this.buttonStyle,
//     this.alignment,
//     this.buttonTextStyle,
//     this.isDisabled,
//     this.height,
//     this.width,
//     this.color,
//     this.textColor,
//     required this.text,
//   });

//   final BoxDecoration? decoration;
//   final Widget? leftIcon;
//   final Widget? rightIcon;
//   final EdgeInsets? margin;
//   final VoidCallback onPressed;
//   final ButtonStyle? buttonStyle;
//   final Alignment? alignment;
//   final TextStyle? buttonTextStyle;
//   final bool? isDisabled;
//   final double? height;
//   final double? width;
//   final String text;
//   final Color? color;
//   final Color? textColor;

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         padding: EdgeInsets.symmetric(horizontal: width ?? 8.w, vertical: height ?? 8.h),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//         textStyle: buttonTextStyle ??
//             Theme.of(context).textTheme.displaySmall!.copyWith(
//                   fontSize: 16.sp,
//                   fontWeight: FontWeight.w600,
//                 ),
//         backgroundColor: color ?? AppColor.red1,
//         foregroundColor: textColor ?? AppColor.white,
//       ),
//       onPressed: onPressed,
//       child: Text(text),
//     );
//   }
// }

class CommonElevatedButton extends StatelessWidget {
  const CommonElevatedButton(
      {super.key,
      required this.onPressed,
      this.height,
      this.width,
      required this.text,
      this.textColor,
      this.buttonColor,
      this.fontsize});

  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final String text;
  final Color? buttonColor;
  final Color? textColor;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height ?? 20.h,
        width: width ?? 50.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: buttonColor ?? AppColor.red2,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: fontsize ?? 15.sp,
              color: textColor ?? AppColor.white,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/common_elevated_button.dart';

class SectionTwoWidgetOne extends StatelessWidget {
  final Color containerColor;
  final Color iconColor;
  final IconData iconData;
  final String amountText;
  final String labelText;
  final Color buttonColor;
  final VoidCallback onPressed;
  final String buttonText;

  const SectionTwoWidgetOne({
    Key? key,
    required this.containerColor,
    required this.iconColor,
    required this.iconData,
    required this.amountText,
    required this.labelText,
    required this.buttonColor,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                color: containerColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Icon(
                iconData,
                size: 15.sp,
                color: iconColor,
              ),
            ),
            SizedBox(width: 15.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  amountText,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  labelText,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 25.h),
        CommonElevatedButton(
          buttonColor: buttonColor,
          borderRadius: 8.0,
          height: 35.h,
          width: 80.w,
          fontSize: 11.sp,
          onPressed: onPressed,
          text: buttonText,
        ),
      ],
    );
  }
}

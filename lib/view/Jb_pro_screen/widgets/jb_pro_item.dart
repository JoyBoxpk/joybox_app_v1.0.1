import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/common_elevated_button.dart';
import '../../../res/color.dart';

class JbProItem extends StatelessWidget {
  const JbProItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.duration,
    required this.price,
  });

  final String title;
  final String subTitle;
  final String duration;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 340.w,
      height: 200.h,
      decoration: BoxDecoration(
        color: AppColor.amber3,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(height: 10.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Rs.${price.toStringAsFixed(2)}",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                TextSpan(
                  text: "/$subTitle",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            "Rs.${price.toStringAsFixed(2)} billed $duration",
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(height: 10.h),
          CommonElevatedButton(
            onPressed: () {},
            text: "Subscribe Now",
            width: 150.w,
            height: 40.h,
          ),
        ],
      ),
    );
  }
}

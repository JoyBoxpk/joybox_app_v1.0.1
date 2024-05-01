import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/color.dart';

class WYWSectionOne extends StatelessWidget {
  const WYWSectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Withdraw your Wallet",
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontSize: 22.sp, fontWeight: FontWeight.w500)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 65.w,
              height: 65.h,
              decoration: BoxDecoration(
                color: AppColor.blueGrey,
                borderRadius: BorderRadius.circular(7.0),
              ),
            ),
            SizedBox(height: 5.h),
            Text("Haris Ahmed",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontSize: 15.sp)),
          ],
        ),
      ],
    );
  }
}

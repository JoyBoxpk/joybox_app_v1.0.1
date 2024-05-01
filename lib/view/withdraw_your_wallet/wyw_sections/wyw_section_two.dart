import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/color.dart';

class WYWSectionTwo extends StatelessWidget {
  const WYWSectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.0,
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        padding: EdgeInsets.only(top: 15.h, bottom: 15.h, left: 10.w),
        alignment: Alignment.topLeft,
        height: 110.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Total Balance",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.grey5)),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "PKR",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.black)),
                  TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                      text: "56,000.00",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.black)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

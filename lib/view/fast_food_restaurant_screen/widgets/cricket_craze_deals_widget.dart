import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/res/color.dart';

class CricketCrazeDealWidget extends StatelessWidget {
  const CricketCrazeDealWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Cricket Craze Deals",
        style: Theme.of(context).textTheme.displaySmall!.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
      ),
      SizedBox(height: 30.h),
      Stack(clipBehavior: Clip.none, children: [
        Row(
          children: [
            Image.asset(
              "assets/images/img17_fast_food_restaurant.png",
              width: 145.w,
              height: 145.h,
              fit: BoxFit.contain,
            ),
            Container(
              alignment: Alignment.center,
              height: 145.h,
              width: 195.w,
              decoration: const BoxDecoration(
                  color: AppColor.amber,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Cricket Craze Deal 1",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  // SizedBox(height: 10.v),
                  Text(
                    "1 Firebird burgery with\n1 soft drink",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                  ),

                  CommonElevatedButton(
                    onPressed: () {},
                    text: "Rs. 699",
                    width: 100.w,
                    height: 40.h,
                  ),
                  // SizedBox(height: 10.v),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: -20.h,
          left: 110.w,
          child: Container(
            alignment: Alignment.center,
            width: 55.w,
            height: 55.h,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.red2,
            ),
            child: Text(
              "25% OFF",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.white,
                  ),
            ),
          ),
        ),
      ]),
    ]);
  }
}

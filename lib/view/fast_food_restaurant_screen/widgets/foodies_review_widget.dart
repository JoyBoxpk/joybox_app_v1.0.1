import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/res/color.dart';

class FoodiesReviewWidget extends StatelessWidget {
  const FoodiesReviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240.h,
      color: AppColor.red2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // SizedBox(height: 25.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "What our foodies say",
                style:
                    Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.white,
                        ),
              ),
              SizedBox(height: 15.h),
              Text(
                "See all",
                style:
                    Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.white,
                        ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/images/img13_fast_food_restaurant.png",
                  height: 155.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10.w),
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/img14_fast_food_restaurant.png",
                      height: 150.h,
                      // width: 310.w,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 10.h,
                      right: 10.w,
                      child: Image.asset(
                        "assets/images/img16_fast_food_restaurant.png",
                        width: 35.w,
                        height: 35.h,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10.w),
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/img14_fast_food_restaurant.png",
                      height: 150.h,
                      // width: 310.w,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 10.h,
                      right: 10.w,
                      child: Image.asset(
                        "assets/images/img16_fast_food_restaurant.png",
                        width: 35.w,
                        height: 35.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

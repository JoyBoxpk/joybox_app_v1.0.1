import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';

class MostOrderedFoodWidget extends StatelessWidget {
  const MostOrderedFoodWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.h),
        Text(
          "Most ordered right now",
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
        ),
        SizedBox(height: 15.h),
        Stack(
          children: [
            Image.asset("assets/images/img2_fast_food_restaurant.png"),
            Positioned.fill(
              child: Center(
                child: CommonElevatedButton(
                  width: 180.w,
                  height: 52.h,
                  onPressed: () {},
                  text: 'Rs. 699',
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 35.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  "assets/images/img3_fast_food_restaurant.png",
                  width: 200.w,
                  height: 310.h,
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: Center(
                    child: Image.asset(
                      "assets/images/img4_fast_food_restaurant.png",
                      width: 200.w,
                      height: 230.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -12.h,
                  right: -25.w,
                  child: Image.asset(
                    "assets/images/img5_fast_food_restaurant.png",
                    width: 240.w,
                    height: 240.h,
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: CommonElevatedButton(
                      onPressed: () {},
                      text: "Rs. 799",
                      height: 35.h,
                      width: 100.w,
                    ),
                  ),
                ),
                Positioned(
                  top: 10.h,
                  left: 16.w,
                  child: Text(
                    "Deal 1",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 5.w),
            Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      "assets/images/img6_fast_food_restaurant.png",
                      width: 130.w,
                      height: 140.h,
                      fit: BoxFit.cover,
                    ),
                    Positioned.fill(
                      child: Center(
                        child: Image.asset(
                          "assets/images/img7_fast_food_restaurant.png",
                          width: 135.w,
                          height: 145.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -40.h,
                      child: Image.asset(
                        "assets/images/img8_fast_food_restaurant.png",
                        width: 135.w,
                        height: 135.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      top: 40.h,
                      left: 20.w,
                      child: CommonElevatedButton(
                        onPressed: () {},
                        text: "Rs. 1599",
                        height: 34.h,
                        width: 90.w,
                      ),
                    ),
                    Positioned(
                      top: 10.h,
                      left: 16.w,
                      child: Text(
                        "Deal 2",
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 22.h),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      "assets/images/img6_fast_food_restaurant.png",
                      width: 130.w,
                      height: 140.h,
                      fit: BoxFit.cover,
                    ),
                    Positioned.fill(
                      child: Center(
                        child: Image.asset(
                          "assets/images/img7_fast_food_restaurant.png",
                          width: 135.w,
                          height: 145.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -40.h,
                      child: Image.asset(
                        "assets/images/img9_fast_food_restaurant.png",
                        width: 135.w,
                        height: 135.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      top: 40.h,
                      left: 20.w,
                      child: CommonElevatedButton(
                        onPressed: () {},
                        text: "Rs. 1199",
                        height: 34.h,
                        width: 90.w,
                      ),
                    ),
                    Positioned(
                      top: 10.h,
                      left: 16.w,
                      child: Text(
                        "Deal 3",
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 30.h),
      ],
    );
  }
}

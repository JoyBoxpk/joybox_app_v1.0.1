import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/Fast%20food/inner_fast_food_res_screen/inner_fastfood_res.dart';
import 'package:joy_box_app/view/fast_food_restaurant_screen/model/fast_food_rest_tab_model.dart';
import 'package:joy_box_app/view/fast_food_restaurant_screen/widgets/fast_food_restaurant_tab.dart';

import '../../common_widgets/common_elevated_button.dart';
import '../Fast food/fast_food/fast_food_main/fast_food_main.dart';

class FastFoodRestaurantScreen extends StatefulWidget {
  const FastFoodRestaurantScreen({super.key});

  static const String routeName = "Restaurant-Screen";

  @override
  State<FastFoodRestaurantScreen> createState() =>
      _FastFoodRestaurantScreenState();
}

class _FastFoodRestaurantScreenState extends State<FastFoodRestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15.h),
            Image.asset(
              "assets/images/img1_fast_food_restaurant.png",
              width: 806.w,
              height: 126.h,
            ),
            SizedBox(height: 22.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.w),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFirstRow(context),
                  SizedBox(height: 20.h),
                  _buildSecondRow(context),
                  SizedBox(height: 20.h),
                  _buildTabs(),
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
                      Image.asset(
                          "assets/images/img2_fast_food_restaurant.png"),
                      Positioned.fill(
                        child: Center(
                          child: CommonElevatedButton(
                            width: 180.w,
                            height: 52.h,
                            onPressed: () {},
                            text: 'Rs. 699',
                            decoration: BoxDecoration(
                              color: const Color(0xFFF14530),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
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
                                buttonTextStyle: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
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
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
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
                                  buttonTextStyle: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  height: 34.h,
                                  width: 90.w,
                                ),
                              ),
                              Positioned(
                                top: 10.h,
                                left: 16.w,
                                child: Text(
                                  "Deal 2",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
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
                                  buttonTextStyle: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  height: 34.h,
                                  width: 90.w,
                                ),
                              ),
                              Positioned(
                                top: 10.h,
                                left: 16.w,
                                child: Text(
                                  "Deal 3",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
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
                  Text(
                    "Super Saver Deals",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(height: 30.h),
                  SingleChildScrollView(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Stack(clipBehavior: Clip.none, children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/img10_fast_food_restaurant.png",
                                width: 140.w,
                                height: 140.h,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 140.h,
                                width: 200.w,
                                decoration: const BoxDecoration(
                                    color: Color(0XFFFFD726),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0),
                                    )),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Super Saver Deal 1",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    // SizedBox(height: 10.v),
                                    Text(
                                      "Any One Wrap from creamy,\nfiery, and smokey with 1 drink",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    // SizedBox(height: 10.v),
                                    CommonElevatedButton(
                                      onPressed: () {},
                                      text: "Rs. 559",
                                      buttonTextStyle: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      height: 34.h,
                                      width: 95.w,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: -20.h,
                            left: 120.w,
                            child: Container(
                              alignment: Alignment.center,
                              width: 50.w,
                              height: 50.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF14530),
                              ),
                              child: Text(
                                "18% OFF",
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.white,
                                ),
                              ),
                            ),
                          ),
                        ]),
                        SizedBox(width: 15.w),
                        Stack(clipBehavior: Clip.none, children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/img10_fast_food_restaurant.png",
                                width: 140.w,
                                height: 140.h,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 140.h,
                                width: 200.w,
                                decoration: const BoxDecoration(
                                    color: Color(0XFFFFD726),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0),
                                    )),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Super Saver Deal 2",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    // SizedBox(height: 10.v),
                                    Text(
                                      "Any One Burger from creamy,\nzinger, and smokey with 1 drink",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    // SizedBox(height: 10.v),
                                    CommonElevatedButton(
                                      onPressed: () {},
                                      text: "Rs. 789",
                                      buttonTextStyle: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      height: 34.h,
                                      width: 95.w,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: -20.h,
                            left: 120.w,
                            child: Container(
                              alignment: Alignment.center,
                              width: 50.w,
                              height: 50.h,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF14530),
                              ),
                              child: Text(
                                "25% OFF",
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.white,
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                        "assets/images/img12_fast_food_restaurant.png"),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
            Container(
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
            ),
            SizedBox(height: 30.h),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              // SizedBox(height: 10.v),
                              Text(
                                "1 Firebird burgery with\n1 soft drink",
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),

                              CommonElevatedButton(
                                onPressed: () {},
                                text: "Rs. 699",
                                width: 100.w,
                                height: 40.h,
                                buttonTextStyle: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
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
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColor.white,
                              ),
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sliders Party in the Box",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Chicken Sliders",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            "Any 4 chicken sliders with 1\ngourmet fries from mayo garlic or\nwild fries and 2 soft drinks",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                          SizedBox(height: 25.h),
                          Text(
                            "Rs. 1599.00",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset(
                            "assets/images/img18_fast_food_restaurant.png",
                            width: 135.w,
                            height: 142.h,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            top: -18.h,
                            right: -2.w,
                            child: Image.asset(
                              "assets/images/img19_fast_food_restaurant.png",
                              width: 40.w,
                              height: 40.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            bottom: 5.h,
                            right: 3.w,
                            child: Image.asset(
                              "assets/images/img20_fast_food_restaurant.png",
                              width: 40.w,
                              height: 40.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            bottom: 5.h,
                            right: 3.w,
                            child: Image.asset(
                              "assets/images/img20_fast_food_restaurant.png",
                              width: 40.w,
                              height: 40.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                   Divider(
                    color: AppColor.amber,
                    thickness: 1.2.h,
                  ),
                  SizedBox(height: 35.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sliders Party in the Box",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Chicken Sliders",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            "Any 4 chicken sliders with 1\ngourmet fries from mayo garlic or\nwild fries and 2 soft drinks",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 25.h),
                          Text(
                            "Rs. 1599.00",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset(
                            "assets/images/img18_fast_food_restaurant.png",
                            width: 135.w,
                            height: 142.h,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            top: -18.h,
                            right: -2.w,
                            child: Image.asset(
                              "assets/images/img19_fast_food_restaurant.png",
                              width: 40.w,
                              height: 40.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            bottom: 5.h,
                            right: 3.w,
                            child: Image.asset(
                              "assets/images/img20_fast_food_restaurant.png",
                              width: 40.w,
                              height: 40.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  const Divider(
                    color: AppColor.amber,
                    thickness: 1.2,
                  ),
                  SizedBox(height: 35.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sliders Party in the Box",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Chicken Sliders",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            "Any 4 chicken sliders with 1\ngourmet fries from mayo garlic or\nwild fries and 2 soft drinks",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 25.h),
                          Text(
                            "Rs. 1599.00",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset(
                            "assets/images/img18_fast_food_restaurant.png",
                            width: 135.w,
                            height: 142.h,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            top: -18.h,
                            right: -2.w,
                            child: Image.asset(
                              "assets/images/img19_fast_food_restaurant.png",
                              width: 40.w,
                              height: 40.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            bottom: 5.h,
                            right: 3.w,
                            child: Image.asset(
                              "assets/images/img20_fast_food_restaurant.png",
                              width: 40.w,
                              height: 40.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.w),
                ],
              ),
            ),
            InkWell(
                onTap: () => context.goNamed(InnerFastFoodResScreen.routeName),
                child: Image.asset(
                    "assets/images/img21_fast_food_restaurant.png")),
          ],
        ),
      ),
    );
  }

  Widget _buildSecondRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.star_border_outlined,
                  color: AppColor.red2,
                  size: 25.sp,
                ),
                SizedBox(width: 5.w),
                Text(
                  "4.1 \t15000+ rating",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 14.sp,
                      ),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            SizedBox(
              width: 140.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.timer,
                    color: AppColor.red2,
                    size: 25.sp,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Delivery: 35 min",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Text(
          "See reviews",
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.red2,
              ),
        ),
      ],
    );
  }

  Widget _buildFirstRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "0.9km away | Free delivery",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 14.sp),
            ),
            SizedBox(height: 5.w),
            Text(
              "Rs.249.00 Minimum",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 14.sp),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Opening 12pm - 2am",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Text(
              "More info",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.red2,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}

PreferredSizeWidget? CustomAppBar() {
  return AppBar(
    backgroundColor: const Color((0xFFFFD726)),
    elevation: 0,
    toolbarHeight: 60,
    automaticallyImplyLeading: false,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
    title: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 38.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                // Add your navigation logic here
              },
            ),
          ),
          const SizedBox(width: 20),
          const Text(
            "Restaurant",
            style: TextStyle(fontSize: 20.0),
          )
        ],
      ),
    ),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.share,
          color: Color(0xFFF14530),
        ),
        onPressed: () {
          // Add your navigation logic here
        },
      ),
      IconButton(
        icon: const Icon(
          Icons.search,
          color: Color(0xFFF14530),
        ),
        onPressed: () {
          // Add your navigation logic here
        },
      ),
    ],
  );
}

Widget _buildTabs() {
  return SizedBox(
    height: 50.h,
    width: double.infinity,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: FastFoodRestaurantTabModel.fastFoodItemList.length,
      separatorBuilder: (context, index) {
        return SizedBox(width: 5.h);
      },
      itemBuilder: (context, index) {
        final tab = FastFoodRestaurantTabModel.fastFoodItemList[index];
        return FastFoodRestaurantTab(
          index: index,
          tab: tab,
        );
      },
    ),
  );
}
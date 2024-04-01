import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/Fast%20food/inner_fast_food_res_screen/inner_fastfood_res.dart';

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
            SizedBox(height: 15.w),
            Image.asset(
              "assets/images/img1_fast_food_restaurant.png",
              width: 806.w,
              height: 126.h,
            ),
            SizedBox(height: 22.w),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFirstRow(context),
                  SizedBox(height: 20.h),
                  _buildSecondRow(context),
                  SizedBox(height: 20.h),
                  _buildTabs(),
                  SizedBox(height: 20.w),
                  Text(
                    "Most ordered right now",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(height: 8.h),
                  Stack(
                    children: [
                      Image.asset(
                          "assets/images/img2_fast_food_restaurant.png"),
                      Positioned.fill(
                        child: Center(
                          child: SizedBox(
                            height: 70.w,
                            width: 180.h,
                            child: CommonElevatedButton(
                              onPressed: () {},
                              text: 'Rs. 699',
                              decoration: BoxDecoration(
                                color: const Color(0xFFF14530),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset(
                              "assets/images/img3_fast_food_restaurant.png"),
                          Positioned.fill(
                            child: Center(
                              child: Image.asset(
                                  "assets/images/img4_fast_food_restaurant.png"),
                            ),
                          ),
                          Positioned(
                            bottom: -16,
                            right: -30,
                            child: Image.asset(
                                "assets/images/img5_fast_food_restaurant.png"),
                          ),
                          Positioned.fill(
                            child: Center(
                              child: SizedBox(
                                height: 35.w,
                                width: 85.h,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: const Color(0xFFF14530),
                                      textStyle: const TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500,
                                      )),
                                  onPressed: () {},
                                  child: const Text("Rs. 799"),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 8,
                            left: 14,
                            child: Text(
                              "Deal 1",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Image.asset(
                                  "assets/images/img6_fast_food_restaurant.png"),
                              Image.asset(
                                  "assets/images/img7_fast_food_restaurant.png"),
                              Positioned(
                                bottom: -18,
                                child: Image.asset(
                                    "assets/images/img8_fast_food_restaurant.png"),
                              ),
                              Positioned(
                                top: 32,
                                left: 15,
                                child: SizedBox(
                                  height: 35.w,
                                  width: 100.h,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor:
                                            const Color(0xFFF14530),
                                        textStyle: const TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    onPressed: () {},
                                    child: const Text("Rs. 1599"),
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 8,
                                left: 14,
                                child: Text(
                                  "Deal 2",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 22.w),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Image.asset(
                                  "assets/images/img6_fast_food_restaurant.png"),
                              Image.asset(
                                  "assets/images/img7_fast_food_restaurant.png"),
                              Positioned(
                                bottom: -18,
                                child: Image.asset(
                                    "assets/images/img9_fast_food_restaurant.png"),
                              ),
                              Positioned(
                                top: 32,
                                left: 15,
                                child: SizedBox(
                                  height: 35.w,
                                  width: 100.h,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor:
                                            const Color(0xFFF14530),
                                        textStyle: const TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    onPressed: () {},
                                    child: const Text("Rs. 1199"),
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 8,
                                left: 14,
                                child: Text(
                                  "Deal 3",
                                  style: TextStyle(
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
                  SizedBox(height: 32.w),
                  const Text(
                    "Super Saver Deals",
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 15.0),
                  ),
                  SizedBox(height: 32.w),
                  Stack(clipBehavior: Clip.none, children: [
                    Row(
                      children: [
                        Image.asset(
                            "assets/images/img10_fast_food_restaurant.png"),
                        Container(
                          alignment: Alignment.center,
                          height: 145,
                          width: 220,
                          decoration: const BoxDecoration(
                              color: Color(0XFFFFD726),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Super Saver Deal 1",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.0),
                              ),
                              // SizedBox(height: 10.v),
                              const Text(
                                "Any One Wrap from creamy,\nfiery, and smokey with 1 drink",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0),
                              ),
                              // SizedBox(height: 10.v),
                              SizedBox(
                                width: 100.0,
                                height: 30.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14.0)),
                                      foregroundColor: Colors.white,
                                      backgroundColor: const Color(0xFFF14530),
                                      textStyle: const TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500,
                                      )),
                                  onPressed: () {},
                                  child: const Text("Rs. 559"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: -20,
                      left: 125,
                      child: Container(
                        alignment: Alignment.center,
                        width: 52,
                        height: 52,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFF14530),
                        ),
                        child: const Text(
                          "18% OFF",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(height: 40.w),
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                          "assets/images/img12_fast_food_restaurant.png")),
                  SizedBox(height: 10.w),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 240,
              color: const Color(0XFFF14530),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // SizedBox(height: 25.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "What our foodies say",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 15.h),
                      const Text(
                        "See all",
                        style: TextStyle(
                            color: Color(0xFFFFD726),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                          "assets/images/img13_fast_food_restaurant.png"),
                      Stack(
                        children: [
                          Image.asset(
                              "assets/images/img14_fast_food_restaurant.png"),
                          Positioned(
                              top: 10,
                              right: 10,
                              child: Image.asset(
                                  "assets/images/img16_fast_food_restaurant.png")),
                        ],
                      ),
                      Image.asset(
                          "assets/images/img15_fast_food_restaurant.png"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.w),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Cricket Craze Deals",
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 30.w),
                  Stack(clipBehavior: Clip.none, children: [
                    Row(
                      children: [
                        Image.asset(
                            "assets/images/img17_fast_food_restaurant.png"),
                        Container(
                          alignment: Alignment.center,
                          height: 145,
                          width: 220,
                          decoration: const BoxDecoration(
                              color: Color(0XFFFFD726),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Cricket Craze Deal 1",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.0),
                              ),
                              // SizedBox(height: 10.v),
                              const Text(
                                "1 Firebird burgery with\n1 soft drink",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0),
                              ),
                              // SizedBox(height: 10.v),
                              SizedBox(
                                width: 100.0,
                                height: 30.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14.0)),
                                      foregroundColor: Colors.white,
                                      backgroundColor: const Color(0xFFF14530),
                                      textStyle: const TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500,
                                      )),
                                  onPressed: () {},
                                  child: const Text("Rs. 699"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: -20,
                      left: 125,
                      child: Container(
                        alignment: Alignment.center,
                        width: 58,
                        height: 55,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFF14530),
                        ),
                        child: const Text(
                          "25% OFF",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(height: 30.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Sliders Party in the Box",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14.0),
                          ),
                          SizedBox(height: 10.w),
                          const Text(
                            "Chicken Sliders",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14.0),
                          ),
                          SizedBox(height: 8.w),
                          const Text(
                              "Any 4 chicken sliders with 1\ngourmet fries from mayo garlic or\nwild fries and 2 soft drinks"),
                          SizedBox(height: 25.w),
                          const Text(
                            "Rs. 1599.00",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14.0),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset(
                              "assets/images/img18_fast_food_restaurant.png"),
                          Positioned(
                              top: -18,
                              right: -2,
                              child: Image.asset(
                                  "assets/images/img19_fast_food_restaurant.png")),
                          Positioned(
                              bottom: 5,
                              right: 2,
                              child: Image.asset(
                                  "assets/images/img20_fast_food_restaurant.png")),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.w),
                  const Divider(
                    color: Color(0xFFFFD726),
                    thickness: 1.2,
                  ),
                  SizedBox(height: 35.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Sliders Party in the Box",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14.0),
                          ),
                          SizedBox(height: 10.w),
                          const Text(
                            "Chicken Sliders",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14.0),
                          ),
                          SizedBox(height: 8.w),
                          const Text(
                              "Any 4 chicken sliders with 1\ngourmet fries from mayo garlic or\nwild fries and 2 soft drinks"),
                          SizedBox(height: 25.w),
                          const Text(
                            "Rs. 1599.00",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14.0),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset(
                              "assets/images/img18_fast_food_restaurant.png"),
                          Positioned(
                              top: -18,
                              right: -2,
                              child: Image.asset(
                                  "assets/images/img19_fast_food_restaurant.png")),
                          Positioned(
                            bottom: 5,
                            right: 2,
                            child: Image.asset(
                                "assets/images/img20_fast_food_restaurant.png"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.w),
                  const Divider(
                    color: Color(0xFFFFD726),
                    thickness: 1.2,
                  ),
                  SizedBox(height: 35.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Sliders Party in the Box",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14.0),
                          ),
                          SizedBox(height: 10.w),
                          const Text(
                            "Chicken Sliders",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14.0),
                          ),
                          SizedBox(height: 8.w),
                          const Text(
                              "Any 4 chicken sliders with 1\ngourmet fries from mayo garlic or\nwild fries and 2 soft drinks"),
                          SizedBox(height: 25.w),
                          const Text(
                            "Rs. 1599.00",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14.0),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset(
                              "assets/images/img18_fast_food_restaurant.png"),
                          Positioned(
                              top: -18,
                              right: -2,
                              child: Image.asset(
                                  "assets/images/img19_fast_food_restaurant.png")),
                          Positioned(
                              bottom: 5,
                              right: 2,
                              child: Image.asset(
                                  "assets/images/img20_fast_food_restaurant.png")),
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

  Row _buildSecondRow(BuildContext context) {
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
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: buildTabItem("Popular")),
        const SizedBox(width: 10), // Add space between tabs
        buildTabItem("Pizza"),
        const SizedBox(width: 10), // Add space between tabs
        buildTabItem("Wings"),
        const SizedBox(width: 10), // Add space between tabs
        buildTabItem("Rolls"),
        const SizedBox(width: 10), // Add space between tabs
        buildTabItem("Sandwich"),
        const SizedBox(width: 10), // Add space between tabs
        buildTabItem("Nuggets"),
      ],
    ),
  );
}

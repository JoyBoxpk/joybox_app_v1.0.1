import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/fast_food_restaurant_screen/fast_food_restaurant_screen.dart';

import '../../../../common_widgets/common_elevated_button.dart';
import '../../../../common_widgets/custom_image_view.dart';
import '../../../../core/utils/image_constant.dart';

class FastFoodMainScreen extends StatelessWidget {
  const FastFoodMainScreen({super.key});

  static const String routeName = 'fastfoodmain';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BuildTabs(),
            BuildTabWithIcon(context),
            BuildRestContainer(context),
            BuildRestContainer2(context),
            BuildRestContainer(context),
            BuildRestContainer2(context)
          ],
        ),
      ),
    );
  }
}

Widget BuildRestContainer(BuildContext context) {
  final textstyle = Theme.of(context).textTheme;

  return Column(
    children: [
      Stack(
        alignment: Alignment.topRight, // Align the outer Stack to top right
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                child: CustomImageView(
                  fit: BoxFit.contain,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  imagePath: 'assets/images/hotel_img.png',
                ),
              ),
              // Removed Align widget from here
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13.h,
                            vertical: 5.w,
                          ),
                          // decoration: AppDecoration.fillAmber.copyWith(
                          //   borderRadius: BorderRadiusStyle.customBorderLR5,
                          // ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColor.amber),
                          child: Text(
                            "Red Apple",
                            style: textstyle.bodySmall!.copyWith(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment
                          .start, // Ensure text is aligned to the top left
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13.h,
                            vertical: 5.w,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColor.amber),
                          child: Text("20% Off ",
                              style:
                                  textstyle.bodySmall!.copyWith(fontSize: 15)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment
                          .start, // Ensure text is aligned to the top left
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13.h,
                            vertical: 5.w,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColor.amber),
                          child: Text("Welcome Gift : Free delivery",
                              style:
                                  textstyle.bodySmall!.copyWith(fontSize: 13)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Align(
                  alignment: Alignment.center,
                  child: CommonElevatedButton(
                    onPressed: () =>
                        context.goNamed(FastFoodRestaurantScreen.routeName),
                    alignment: Alignment.center,
                    //width: 200.w,
                    text: "Order Now",
                  ),
                ),
              ),
            ],
          ),
          // Move the Align widget here to align the image to the top right
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(34.w),
              child: CustomImageView(
                imagePath: ImageConstant.imgMdiFavouriteBorder,
                height: 30.h,
                width: 24.w,
                radius: BorderRadius.circular(
                  12.h,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20.h,
            left: 100.h,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  padding: EdgeInsets.all(34.h),
                  child: Text(
                    "Burgers, Wraps and Rolls",
                    style: textstyle.bodyMedium!.copyWith(color: Colors.white),
                  )),
            ),
          ),

          Positioned(
            bottom: 20.w,
            right: -14.h,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.all(34.w),
                child: Container(
                  // height: 31.v,
                  // width: 69.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 10.w,
                  ),
                  // decoration: AppDecoration.fillWhiteA.copyWith(
                  //   borderRadius: BorderRadiusStyle.customBorderLR5,
                  // ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColor.white),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSettingsBlack900,
                    height: 21.h,
                    width: 34.h,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Red Apple - Lucky One Mall",
                  style: textstyle.bodySmall!.copyWith(fontSize: 15)),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xFFFFD726),
                  ),
                  Text(
                    "3.9 ",
                    style: textstyle.bodyMedium,
                  ),
                  Text(
                    "(3000+)",
                    style: textstyle.bodyMedium,
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSettingsAmber400,
                      color: Colors.red,
                      margin: EdgeInsets.only(
                        left: 18.h,
                        //top: 11.v,
                        //bottom: 9.h,
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text("Free Delivery",
                        style: textstyle.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600, color: Colors.red)),
                  ],
                ),
                Text("Opening 12pm - 2am",
                    style: textstyle.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w600))
              ],
            ),
          )
        ],
      ),
    ],
  );
}

// ignore: non_constant_identifier_names
Widget BuildRestContainer2(BuildContext context) {
  final textstyle = Theme.of(context).textTheme;

  return Column(
    children: [
      Stack(
        alignment: Alignment.topRight, // Align the outer Stack to top right
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                fit: BoxFit.contain,
                radius: BorderRadius.circular(
                  10.h,
                ),
                imagePath: 'assets/images/hotel_img.png',
              ),
              // Removed Align widget from here
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13.h,
                            vertical: 5.w,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColor.amber),
                          child: Text("Burger O’Clock",
                              style:
                                  textstyle.bodySmall!.copyWith(fontSize: 15)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Align(
                  alignment: Alignment.center,
                  child: CommonElevatedButton(
                    onPressed: () =>
                        context.goNamed(FastFoodRestaurantScreen.routeName),
                    alignment: Alignment.center,
                    //width: 200.w,
                    text: "Order Now",
                  ),
                ),
              ),
            ],
          ),
          // Move the Align widget here to align the image to the top right
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(34.w),
              child: CustomImageView(
                imagePath: ImageConstant.imgMdiFavouriteBorder,
                height: 30.h,
                width: 24.w,
                radius: BorderRadius.circular(
                  12.h,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20.w,
            left: 100.h,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  padding: EdgeInsets.all(34.w),
                  child: Text(
                    "Burgers, Wraps and Rolls",
                    style: textstyle.bodyMedium?.copyWith(color: Colors.white),
                  )),
            ),
          ),

          Positioned(
            bottom: 20.w,
            right: -14.h,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.all(34.w),
                child: Container(
                  // height: 31.v,
                  // width: 69.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 10.w,
                  ),
                  // decoration: AppDecoration.fillWhiteA.copyWith(
                  //   borderRadius: BorderRadiusStyle.customBorderLR5,
                  // ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColor.white),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSettingsBlack900,
                    height: 21.h,
                    width: 34.h,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Red Apple - Lucky One Mall",
                style:
                    textstyle.bodyMedium?.copyWith(fontWeight: FontWeight.w800),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xFFFFD726),
                  ),
                  Text(
                    "3.9 ",
                    style: textstyle.bodyMedium,
                  ),
                  Text(
                    "(3000+)",
                    style: textstyle.bodyMedium,
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSettingsAmber400,
                      color: Colors.red,
                      margin: EdgeInsets.only(
                        left: 18.h,
                        //top: 11.v,
                        //bottom: 9.w,
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text("Free Delivery",
                        style: textstyle.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600, color: Colors.red)),
                  ],
                ),
                Text("Opening 12pm - 2am",
                    style: textstyle.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w600))
              ],
            ),
          )
        ],
      ),
    ],
  );
}

Widget BuildTabWithIcon(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          // Add space between tabs
          buildIconTabItem(
              TabItem(text: "Sort", icon: Icons.arrow_drop_down), context),
          const SizedBox(width: 10), // Add space between tabs
          buildIconTabItem(
              TabItem(
                text: "Rating 4.0+",
              ),
              context),
          const SizedBox(width: 10), // Add space between tabs
          buildIconTabItem(
              TabItem(text: "Offers", icon: Icons.arrow_drop_down), context),
          const SizedBox(width: 10), // Add space between tabs
          const SizedBox(width: 10), // Add space between tabs
        ],
      ),
    ),
  );
}

Widget buildIconTabItem(TabItem tabItem, BuildContext context) {
  final textstyle = Theme.of(context).textTheme;

  bool isSelected = false; // Set this to true for selected tab
  return GestureDetector(
    onTap: () {
      // Handle tab selection
    },
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          // Set selected background color
          borderRadius: BorderRadius.circular(13),
          border: Border.all(color: Colors.blueAccent)),
      child: Row(
        children: [
          if (tabItem.text != null)
            Text(tabItem.text!,
                style: textstyle.bodyMedium?.copyWith(
                  color: isSelected
                      ? Colors.white
                      : Colors.black, // Set text color based on selection
                  fontWeight: FontWeight.bold,
                )),
          if (tabItem.text != null && tabItem.icon != null)
            const SizedBox(width: 10), // Add space between text and icon
          if (tabItem.icon != null)
            Icon(
              tabItem.icon,
              color: isSelected
                  ? Colors.white
                  : Colors.black, // Set icon color based on selection
            ),
        ],
      ),
    ),
  );
}

Widget BuildTabs() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColor.amber),
              child: buildTabItem("Burger")),
          const SizedBox(width: 10), // Add space between tabs
          buildTabItem("Pizza"),
          const SizedBox(width: 10), // Add space between tabs
          buildTabItem("Sandwich"),
          const SizedBox(width: 10), // Add space between tabs
          buildTabItem("Rolls"),
          const SizedBox(width: 10), // Add space between tabs
          buildTabItem("Nuggets"),
          const SizedBox(width: 10), // Add space between tabs
          buildTabItem("Burger"),
        ],
      ),
    ),
  );
}

Widget buildTabItem(String text) {
  bool isSelected = false; // Set this to true for selected tab
  return GestureDetector(
    onTap: () {
      // Handle tab selection
    },
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected
            ? const Color(0xFFFFD726)
            : null, // Set selected background color
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected
              ? Colors.white
              : Colors.black, // Set text color based on selection
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

PreferredSizeWidget? CustomAppBar() {
  return AppBar(
    backgroundColor: const Color(0xFFFFD726),
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
            height: 38,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                // Add your navigation logic here
              },
            ),
          ),
          const SizedBox(width: 20),
          const Text("FastFood"),
        ],
      ),
    ),
  );
}

class TabItem {
  final String? text;
  final IconData? icon;

  TabItem({this.text, this.icon});
}

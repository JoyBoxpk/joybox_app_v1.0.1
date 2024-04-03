// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
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
      appBar: const CommonAppBar(text: "Fast Food",),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BuildTabs(context),
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
              const Padding(
                padding: EdgeInsets.only(top: 120),
                child: Align(
                  alignment: Alignment.center,
                  child: Order_now_button(),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Red Apple - Lucky One Mall",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.black,
                    ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xFFFFD726),
                  ),
                  Text(
                    "3.9 ",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                          color: AppColor.black,
                        ),
                  ),
                  Text(
                    "(3000+)",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                          color: AppColor.black,
                        ),
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
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.red2,
                                ))
                  ],
                ),
                Text("Opening 12pm - 2am",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ))
              ],
            ),
          )
        ],
      ),
    ],
  );
}

class Order_now_button extends StatelessWidget {
  const Order_now_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.red.withOpacity(
              0.7), // Adjust opacity here (0.6 for 60% opacity)
        ),
      ),
      onPressed: () =>
          context.goNamed(FastFoodRestaurantScreen.routeName),
      child: Text(
        "Order Now",
        style: Theme.of(context).textTheme.displaySmall!.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
              color: AppColor.white,
            ),
      ),
    );
  }
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
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 120),
                child: Align(
                  alignment: Alignment.center,
                  child: Order_now_button()
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Red Apple - Lucky One Mall",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.black,
                    ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xFFFFD726),
                  ),
                  Text(
                    "3.9 ",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                          color: AppColor.black,
                        ),
                  ),
                  Text(
                    "(3000+)",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.black,
                        ),
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
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.red2,
                                )),
                  ],
                ),
                Text("Opening 12pm - 2am",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.black,
                        ))
              ],
            ),
          )
        ],
      ),
    ],
  );
}

// ignore: non_constant_identifier_names
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
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 14.sp,

                      /// fontWeight: FontWeight.w600,
                      color: isSelected
                          ? Colors.white
                          : Colors.black, // Set text color based on selection
                      fontWeight: FontWeight.normal,
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

// ignore: non_constant_identifier_names
Widget BuildTabs(BuildContext context) {
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
              child: buildTabItem("Burger", context)),
          const SizedBox(width: 10), // Add space between tabs
          buildTabItem("Pizza", context),
          const SizedBox(width: 10), // Add space between tabs
          buildTabItem("Sandwich", context),
          const SizedBox(width: 10), // Add space between tabs
          buildTabItem("Rolls", context),
          const SizedBox(width: 10), // Add space between tabs
          buildTabItem("Nuggets", context),
          const SizedBox(width: 10), // Add space between tabs
          buildTabItem("Burger", context),
        ],
      ),
    ),
  );
}

Widget buildTabItem(String text, BuildContext context) {
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
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: isSelected
                  // ignore: dead_code
                  ? Colors.white
                  : Colors.black, // Set text color based on selection
              fontWeight: FontWeight.normal,
              fontSize: 14.sp,

              // color: isSelected
              //     ? Colors.white
              //     : Colors.black, // Set text color based on selection
              // fontWeight: FontWeight.bold,
            ),
      ),
    ),
  );
}


class TabItem {
  final String? text;
  final IconData? icon;

  TabItem({this.text, this.icon});
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/common_widgets/custom_rating_bar.dart';
import 'package:joy_box_app/core/utils/image_constant.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/top_restaurent/model/top_restaurent_model.dart';

class RestaurantCard extends StatelessWidget {
  final TopRestaurantModel restaurant;

  const RestaurantCard({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.h,
      width: 400.w,
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: CustomImageView(
              height: 240.h,
              width: 400.w,
              fit: BoxFit.cover,
              imagePath: restaurant.imageUrl,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: const Icon(
                Icons.favorite_border,
                size: 30,
                color: AppColor.white,
              ),
            ),
          ),
          // Other widgets such as favorite icon, etc.
          Positioned(
            top: 70.h,
            left: 40.w,
            child: RestaurantInfo(
                restaurant: RestaurantCard(restaurant: restaurant)),
          ),
          Positioned(
            bottom: 30.h,
            right: 120.w,
            child: CommonElevatedButton(
                height: 40.h,
                width: 140.w,
                onPressed: () {},
                text: "Order now"),
          )
        ],
      ),
    );
  }
}

class RestaurantInfo extends StatelessWidget {
  final RestaurantCard restaurant;

  const RestaurantInfo({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColor.white.withOpacity(0.8),
            AppColor.amber2.withOpacity(0.9),
          ],
        ),
      ),
      height: 120.h,
      width: 300.w,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "LalQila Restaurant",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 14.sp),
                ),
                Text(
                  "Opening 12pm - 12am",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 10.sp, fontWeight: FontWeight.w200),
                ),
              ],
            ),
            Text(
              "A Mughal Buffet restaurant",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w100),
            ),
            const Divider(
              color: AppColor.grey1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CommonRatingBar(
                      itemCount: 1,
                      itemSize: 15.h,
                      color: AppColor.red1,
                      initialRating: 3,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "4.9",
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text: '(3000+)',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.alarm,
                      color: AppColor.red1,
                      size: 14.h,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      "15-20min",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSettingsAmber400,
                      color: Colors.red,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      "Free",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.red2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Other widgets such as AppBar, TabBar, etc.

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/common_dropdown_button.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/common_widgets/custom_rating_bar.dart';
import 'package:joy_box_app/core/utils/image_constant.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/traditional_restaurant/model/traditional_restaurant_model.dart';

class TraditionalRestaurant extends StatelessWidget {
  TraditionalRestaurant({super.key});

  static const String routeName = 'Traditional-Restaurant-Screen';

  final List<String> tablist = [
    "Sort",
    "Rating",
    "Offers",
  ];

  Map<String, List<String>> dropdownItems = {
    "Sort": ["By Name", "By Distance", "By Price"],
    "Rating": ["5 Stars", "4 Stars", "3 Stars", "2 Stars", "1 Star"],
    "Offers": ["Discounts", "Buy One Get One", "Happy Hours"],
  };

  final List<TraditionalRestaurantModel> restaurants = [
    TraditionalRestaurantModel(
      name: 'LalQila',
      rating: 4.9,
      reviewCount: 3000,
      isFree: true,
      imageAsset: "assets/images/lal-qila-restaurant-in.jpg",
      imageUrl: "https://example.com/lalqila_image.jpg",
    ),
    TraditionalRestaurantModel(
      name: 'LalQila',
      rating: 4.9,
      reviewCount: 3000,
      isFree: true,
      imageAsset: "assets/images/lal-qila-restaurant-in.jpg",
      imageUrl: "https://example.com/lalqila_image.jpg",
    ),
    TraditionalRestaurantModel(
      name: 'LalQila',
      rating: 4.9,
      reviewCount: 3000,
      isFree: true,
      imageAsset: "assets/images/lal-qila-restaurant-in.jpg",
      imageUrl: "https://example.com/lalqila_image.jpg",
    ),
    // Add more restaurants here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        text: "Traditional Restaurant",
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
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50.h,
              margin: EdgeInsets.symmetric(horizontal: 15.w),
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 65.w,
                            height: 48.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              border: Border.all(
                                color: const Color(0xFFB3B3B3),
                                width: 1,
                              ),
                            ),
                            child: SvgPicture.asset(
                                "assets/images/fast_food_screen_img1.svg"),
                          ),
                          SizedBox(width: 5.w),
                          for (String hintText in tablist)
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 3.w),
                                child: CommonDropdownButton(
                                  hintText: hintText,
                                  items: dropdownItems[hintText]!,
                                )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
           
            Expanded(
              child: ListView.builder(
                itemCount: restaurants.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildRestaurantCard(restaurants[index], context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRestaurantCard(
      TraditionalRestaurantModel restaurant, BuildContext context) {
    return Container(
      height: 240.h,
      width: 400.w,
      margin: EdgeInsets.symmetric(vertical: 20.h),
      padding: EdgeInsets.symmetric(vertical: 20.h),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.amber),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              _buildRestaurantDetails(restaurant, context),
              SizedBox(width: 50.w),
              _buildRestaurantImage(restaurant),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          const _OrderButtonWidget()
        ],
      ),
    );
  }

  Widget _buildRestaurantDetails(
      TraditionalRestaurantModel restaurant, BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: const BoxDecoration(
                color: AppColor.amber,
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(8)),
              ),
              child: Text(
                restaurant.name,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 12.sp),
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                CommonRatingBar(
                  itemCount: 1,
                  itemSize: 15.h,
                  color: AppColor.red1,
                  initialRating: restaurant.rating,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: restaurant.rating.toString(),
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      TextSpan(
                        text: '(${restaurant.reviewCount}+)',
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
            SizedBox(height: 6.h),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsAmber400,
                  color: Colors.red,
                ),
                SizedBox(width: 4.w),
                Text(
                  restaurant.isFree ? "Free" : "Not Free",
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
      ),
    );
  }

  Widget _buildRestaurantImage(TraditionalRestaurantModel restaurant) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CustomImageView(
                height: 120.h,
                fit: BoxFit.contain,
                imagePath: restaurant.imageAsset,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Text(
          "Opening 11pm - 12am",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 10.sp,
          ),
        ),
      ],
    );
  }
}

class _OrderButtonWidget extends StatelessWidget {
  const _OrderButtonWidget({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomImageView(
          imagePath: "assets/images/traditional_restaurent_img1.svg",
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
          onPressed: () {},
          child: const Text(
            "Order now",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}

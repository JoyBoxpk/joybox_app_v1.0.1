import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/common_widgets/custom_rating_bar.dart';
import 'package:joy_box_app/core/utils/image_constant.dart';
import 'package:joy_box_app/res/color.dart';

class Restaurant {
  final String name;
  final double rating;
  final int reviewCount;
  final bool isFree;
  final String imageAsset;
  final String imageUrl;

  Restaurant({
    required this.name,
    required this.rating,
    required this.reviewCount,
    required this.isFree,
    required this.imageAsset,
    required this.imageUrl,
  });
}

class TraditionalRestaurant extends StatelessWidget {
  TraditionalRestaurant({super.key});

  static const String routeName = 'Traditional-Restaurant-Screen';

  final List<Restaurant> restaurants = [
    Restaurant(
      name: 'LalQila',
      rating: 4.9,
      reviewCount: 3000,
      isFree: true,
      imageAsset: "assets/images/lal-qila-restaurant-in.jpg",
      imageUrl: "https://example.com/lalqila_image.jpg",
    ),
    Restaurant(
      name: 'LalQila',
      rating: 4.9,
      reviewCount: 3000,
      isFree: true,
      imageAsset: "assets/images/lal-qila-restaurant-in.jpg",
      imageUrl: "https://example.com/lalqila_image.jpg",
    ),
    Restaurant(
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
      body:   Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: restaurants.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildRestaurantCard(restaurants[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRestaurantCard(Restaurant restaurant) {
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
              _buildRestaurantDetails(restaurant),
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

  Widget _buildRestaurantDetails(Restaurant restaurant) {
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
                borderRadius: BorderRadius.horizontal(right: Radius.circular(8)),
              ),
              child: Text(restaurant.name),
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

  Widget _buildRestaurantImage(Restaurant restaurant) {
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

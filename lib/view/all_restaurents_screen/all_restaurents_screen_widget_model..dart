import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/common_dropdown_button.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/common_widgets/custom_rating_bar.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/all_restaurents_screen/model/joybox_picks_widget_model.dart';
import 'package:joy_box_app/view/all_restaurents_screen/model/popular_restaurent_widget_model.dart';
import 'package:joy_box_app/view/all_restaurents_screen/model/resturaent_near_you_widget_model.dart';
import 'package:joy_box_app/view/all_restaurents_screen/model/top_restaurent.dart';
import 'package:joy_box_app/view/all_restaurents_screen/model/tradtional_restaurent_widget_model.dart';
import 'package:joy_box_app/view/all_restaurents_screen/widget/restaurent_near_you_widget.dart';
import 'package:joy_box_app/view/all_restaurents_screen/widget/your_fav_restaurent_item_widget.dart';
import 'package:joy_box_app/view/home_screen/widgets/popular_res_item.dart';
import 'package:joy_box_app/view/joybox_choice/joybox_choice_screen.dart';
import 'package:joy_box_app/view/popular_restaurants_screen/popular_restaurants_screen.dart';
import 'package:joy_box_app/view/resturent_near_you_screen/model/near_you_model.dart';
import 'package:joy_box_app/view/resturent_near_you_screen/near_you_restaurent.dart';
import 'package:joy_box_app/view/resturent_near_you_screen/widgets/near_you_widget.dart';
import 'package:joy_box_app/view/traditional_restaurant/traditional_restaurant_screen.dart';
import 'package:joy_box_app/view/user_fav_restaurent/user_fav_restaurent_screen.dart';

class AllRestaurentScreen extends StatefulWidget {
  const AllRestaurentScreen({super.key});

  static const String routeName = 'all-restaurent-screen';

  @override
  State<AllRestaurentScreen> createState() => _AllRestaurentScreenState();
}

class _AllRestaurentScreenState extends State<AllRestaurentScreen> {
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
  double _value = 0.0;
  double _min = 0.0;
  double _max = 100.0;

  final List<PopularRestaurantWidgetModel> popularrestaurants = [
    PopularRestaurantWidgetModel(
      rating: 4,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    PopularRestaurantWidgetModel(
      rating: 4,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    PopularRestaurantWidgetModel(
      rating: 3,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    PopularRestaurantWidgetModel(
      rating: 3,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
  ];

  final List<TopRestaurantWidgetModel> restaurants = [
    TopRestaurantWidgetModel(
      rating: 4,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    TopRestaurantWidgetModel(
      rating: 4,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    TopRestaurantWidgetModel(
      rating: 3,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    TopRestaurantWidgetModel(
      rating: 3,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
  ];
  final List<TradtionalRestaurantWidgetModel> tradtionalrestaurants = [
    TradtionalRestaurantWidgetModel(
      rating: 4,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    TradtionalRestaurantWidgetModel(
      rating: 4,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    TradtionalRestaurantWidgetModel(
      rating: 3,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    TradtionalRestaurantWidgetModel(
      rating: 3,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
  ];
  final List<JoyboxPicksWidgetModel> joyboxpicks = [
    JoyboxPicksWidgetModel(
      rating: 4,
      name: "Bam-Bou",
      imagePath: "assets/images/Joybox_picks_widget_img1.png",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    JoyboxPicksWidgetModel(
      rating: 4,
      name: "Bam-Bou",
      imagePath: "assets/images/Joybox_picks_widget_img1.png",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    JoyboxPicksWidgetModel(
      rating: 3,
      name: "Bam-Bou",
      imagePath: "assets/images/Joybox_picks_widget_img1.png",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    JoyboxPicksWidgetModel(
      rating: 3,
      name: "Bam-Bou",
      imagePath: "assets/images/Joybox_picks_widget_img1.png",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        text: "Restaurant",
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
        isCircular: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
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
                                    "assets/images/Group 17878.svg"),
                              ),
                              SizedBox(width: 5.w),
                              for (String hintText in tablist)
                                Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 3.w),
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
                SizedBox(height: 20.h),
                _PopularRestaurentRow(),
                SizedBox(height: 20.h),
                _topRestaurantRow(),
                SizedBox(height: 10.h),
                _tradtionalRestaurantRow(),
                SizedBox(height: 10.h),
                _JoyboxPicksRow(),
                SizedBox(
                  height: 20.h,
                ),
                const _YourFavRestaurentWidegt(),
                SizedBox(
                  height: 20.h,
                ),
                const _RestaurentsNearyou()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _topRestaurantRow() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Restaurants",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              GestureDetector(
                onTap: () => context.goNamed(UserFavRestaurentScreen.routeName),
                child: Text(
                  "See all",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 250
              .h, // Height removed, since Carousel's height will be controlled by the aspect ratio
          child: CarouselSlider.builder(
            itemCount: restaurants.length,
            options: CarouselOptions(
                clipBehavior: Clip.none,
                height: 240.h,
                viewportFraction:
                    0.4, // Adjust the fraction for overlapping effect
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                animateToClosest: true,
                autoPlay: true),
            itemBuilder: (BuildContext context, int index, int realIndex) {
              TopRestaurantWidgetModel restaurant = restaurants[index];
              return _buildRestaurantItem(restaurant);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildRestaurantItem(TopRestaurantWidgetModel restaurant) {
    return SizedBox(
      width: 170.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Material(
                borderRadius: BorderRadius.circular(10.h),
                elevation: 20,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.h),
                  child: CustomImageView(
                    width: 170.w,
                    height: 190.h,
                    imagePath: restaurant.imagePath,
                  ),
                ),
              ),
              Positioned(
                top: -12,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 6.w),
                  decoration: BoxDecoration(
                    color: AppColor.amber,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6.h),
                        bottomRight: Radius.circular(6.h)),
                  ),
                  child: Text(
                    restaurant.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 40.h,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: 130.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        restaurant.description,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      ),
                      CommonRatingBar(
                        itemCount: 5,
                        color: AppColor.amber,
                        initialRating: restaurant.rating.toDouble(),
                        unselectedColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_outline_outlined,
                    size: 20.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned.fill(
                top: 60.h,
                child: Center(
                  child: SizedBox(
                    height: 25.h,
                    width: 70.w,
                    child: CommonElevatedButton(
                        buttonColor: AppColor.red1.withOpacity(0.7),
                        fontSize: 8.sp,
                        onPressed: () {},
                        text: "Order now"),
                  ),
                ),
              ),
              Positioned(
                bottom: 6.h,
                right: 5.w,
                child: Image.asset(
                  "assets/images/popular_restaurants_screen_img2.png",
                  height: 10.h,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0.h,
                left: 0.w,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 28.h,
                    width: 52.w,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6.0),
                        bottomRight: Radius.circular(6.0),
                      ),
                      color: AppColor.white,
                    ),
                    child: SvgPicture.asset(
                      "assets/images/img_settings_black_900.svg",
                      height: 20.h,
                      width: 10.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            restaurant.openingHours,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _PopularRestaurentRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Restaurants",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              GestureDetector(
                onTap: () =>
                    context.goNamed(PopularRestaurantsScreen.routeName),
                child: Text(
                  "See all",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 400
                .h, // Height removed, since Carousel's height will be controlled by the aspect ratio
            child: CarouselSlider.builder(
              itemCount: tradtionalrestaurants.length,
              options: CarouselOptions(
                clipBehavior: Clip.none,
                height: 360.h,
                viewportFraction:
                    0.5, // Adjust the fraction for overlapping effect
                // enlargeCenterPage: true,

                animateToClosest: true,
              ),
              itemBuilder: (BuildContext context, int index, int realIndex) {
                PopularRestaurantWidgetModel restaurant =
                    popularrestaurants[index];
                return Stack(children: [
                  SizedBox(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _buildPopularRestaurentItem(restaurant),
                  ))
                ]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPopularRestaurentItem(PopularRestaurantWidgetModel restaurant) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 200.w,
          height: 320.h,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Material(
                borderRadius: BorderRadius.circular(10.h),
                elevation: 20,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.h),
                  child: CustomImageView(
                    width: 200.w,
                    height: 310.h,
                    imagePath: restaurant.imagePath,
                  ),
                ),
              ),
              Positioned(
                top: -12,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 6.w),
                  decoration: BoxDecoration(
                    color: AppColor.amber,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6.h),
                        bottomRight: Radius.circular(6.h)),
                  ),
                  child: Text(
                    restaurant.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 40.h,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: 130.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        restaurant.description,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      ),
                      CommonRatingBar(
                        itemCount: 5,
                        color: AppColor.amber,
                        initialRating: restaurant.rating.toDouble(),
                        unselectedColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_outline_outlined,
                    size: 20.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned.fill(
                left: 30.w,
                right: 30.w,
                top: 212.h,
                bottom: 70.h,
                child: CommonElevatedButton(
                    width: 20.w,
                    height: 30.h,
                    buttonColor: AppColor.red2.withOpacity(0.9),
                    fontSize: 10.sp,
                    onPressed: () {},
                    text: "Order now"),
              ),
              Positioned(
                bottom: 14.h,
                right: 5.w,
                child: Image.asset(
                  "assets/images/popular_restaurants_screen_img2.png",
                  height: 10.h,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10.h,
                left: 0.w,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 28.h,
                    width: 52.w,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6.0),
                        bottomRight: Radius.circular(6.0),
                      ),
                      color: AppColor.white,
                    ),
                    child: SvgPicture.asset(
                      "assets/images/img_settings_black_900.svg",
                      height: 20.h,
                      width: 10.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          restaurant.openingHours,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: 9.sp,
                fontWeight: FontWeight.w500,
              ),
        )
      ],
    );
  }

  Widget _tradtionalRestaurantRow() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Traditional Restaurants",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              GestureDetector(
                onTap: () => context.goNamed(TraditionalRestaurant.routeName),
                child: Text(
                  "See all",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Positioned(
              top: 15.h,
              child: CustomImageView(
                imagePath:
                    "assets/images/tradtional_restaurent_widget_img1.svg",
              ),
            ),
            Positioned(
              top: 140.h,
              child: CustomImageView(
                imagePath:
                    "assets/images/tradtional_restaurent_widget_img1.svg",
              ),
            ),
            SizedBox(
              height: 270
                  .h, // Height removed, since Carousel's height will be controlled by the aspect ratio
              child: CarouselSlider.builder(
                itemCount: tradtionalrestaurants.length,
                options: CarouselOptions(
                  clipBehavior: Clip.none,
                  height: 240.h,
                  viewportFraction:
                      1, // Adjust the fraction for overlapping effect
                  enlargeCenterPage: true,

                  animateToClosest: true,
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  TradtionalRestaurantWidgetModel restaurant =
                      tradtionalrestaurants[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.w),
                    child: SizedBox(
                        width: 500.w,
                        child: Stack(children: [
                          SizedBox(
                              child: _buildTradtionalRestaurantItem(restaurant))
                        ])),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTradtionalRestaurantItem(
      TradtionalRestaurantWidgetModel restaurant) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Material(
              borderRadius: BorderRadius.circular(10.h),
              elevation: 20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.h),
                child: CustomImageView(
                  width: 300.w,
                  height: 210.h,
                  imagePath: restaurant.imagePath,
                ),
              ),
            ),
            Positioned(
              top: -12,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 6.w),
                decoration: BoxDecoration(
                  color: AppColor.amber,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(6.h),
                      bottomRight: Radius.circular(6.h)),
                ),
                child: Text(
                  restaurant.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40.h,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: 130.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.description,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 12.sp,
                      ),
                    ),
                    CommonRatingBar(
                      itemCount: 5,
                      color: AppColor.amber,
                      initialRating: restaurant.rating.toDouble(),
                      unselectedColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_outline_outlined,
                  size: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned.fill(
              top: 60.h,
              child: Center(
                child: SizedBox(
                  height: 25.h,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.w),
                        ),
                      ),
                      backgroundColor: MaterialStatePropertyAll(
                        AppColor.red1.withOpacity(0.7),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Order now",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 8.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 6.h,
              right: 5.w,
              child: Image.asset(
                "assets/images/popular_restaurants_screen_img2.png",
                height: 10.h,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0.h,
              left: 0.w,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 28.h,
                  width: 52.w,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(6.0),
                      bottomRight: Radius.circular(6.0),
                    ),
                    color: AppColor.white,
                  ),
                  child: SvgPicture.asset(
                    "assets/images/img_settings_black_900.svg",
                    height: 20.h,
                    width: 10.w,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Text(
          restaurant.openingHours,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: 9.sp,
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }

  Widget _JoyboxPicksRow() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "JoyBox Pick’s",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              GestureDetector(
                onTap: () => context.goNamed(JoyBoxChoiceScreen.routeName),
                child: Text(
                  "See all",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 400
              .h, // Height removed, since Carousel's height will be controlled by the aspect ratio
          child: CarouselSlider.builder(
            itemCount: tradtionalrestaurants.length,
            options: CarouselOptions(
              clipBehavior: Clip.none,
              height: 340.h,
              viewportFraction:
                  0.5, // Adjust the fraction for overlapping effect
              // enlargeCenterPage: true,

              animateToClosest: true,
            ),
            itemBuilder: (BuildContext context, int index, int realIndex) {
              JoyboxPicksWidgetModel restaurant = joyboxpicks[index];
              return Stack(children: [
                SizedBox(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildJoyboxPicksItem(restaurant),
                ))
              ]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildJoyboxPicksItem(JoyboxPicksWidgetModel restaurant) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 200.w,
          height: 320.h,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Material(
                borderRadius: BorderRadius.circular(10.h),
                elevation: 20,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.h),
                  child: CustomImageView(
                    width: 200.w,
                    height: 310.h,
                    imagePath: restaurant.imagePath,
                  ),
                ),
              ),
              Positioned(
                top: -12,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 6.w),
                  decoration: BoxDecoration(
                    color: AppColor.amber,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6.h),
                        bottomRight: Radius.circular(6.h)),
                  ),
                  child: Text(
                    restaurant.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 40.h,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: 130.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        restaurant.description,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      ),
                      CommonRatingBar(
                        itemCount: 5,
                        color: AppColor.amber,
                        initialRating: restaurant.rating.toDouble(),
                        unselectedColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_outline_outlined,
                    size: 20.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned.fill(
                left: 30.w,
                right: 30.w,
                top: 208.h,
                bottom: 70.h,
                child: CommonElevatedButton(
                    width: 20.w,
                    height: 30.h,
                    buttonColor: AppColor.red2.withOpacity(0.7),
                    fontSize: 10.sp,
                    onPressed: () {},
                    text: "Order now"),
              ),
              Positioned(
                bottom: 14.h,
                right: 5.w,
                child: Image.asset(
                  "assets/images/popular_restaurants_screen_img2.png",
                  height: 10.h,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10.h,
                left: 0.w,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 28.h,
                    width: 52.w,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6.0),
                        bottomRight: Radius.circular(6.0),
                      ),
                      color: AppColor.white,
                    ),
                    child: SvgPicture.asset(
                      "assets/images/img_settings_black_900.svg",
                      height: 20.h,
                      width: 10.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _RestaurentsNearyou extends StatelessWidget {
  const _RestaurentsNearyou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Restaurants Near you",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              GestureDetector(
                onTap: () => context.goNamed(NearYouRestaurent.routeName),
                child: Text(
                  "See all",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 300,
            width: 500,
            child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount:
                  NearRestaurentListWidegtModel.NearRestaurantList.length,
              itemBuilder: (context, index) {
                final item = NearRestaurentListModel.NearRestaurantList[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RestauentNearUserHotelListWidget(item: item),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _YourFavRestaurentWidegt extends StatelessWidget {
  const _YourFavRestaurentWidegt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Your Favourite",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              GestureDetector(
                onTap: () => context.goNamed(UserFavRestaurentScreen.routeName),
                child: Text(
                  "See all",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 140,
              width: double.infinity,
              color: AppColor.amber,
            ),
            SizedBox(
              height: 250.h,
              child: ListView.builder(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemCount:
                    NearRestaurentListWidegtModel.NearRestaurantList.length,
                itemBuilder: (context, index) {
                  final item =
                      NearRestaurentListModel.NearRestaurantList[index];
                  return Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.w),
                    child: UserFavRestuarentListWidget(item: item),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

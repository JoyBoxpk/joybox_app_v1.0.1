import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/common_dropdown_button.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/common_widgets/custom_rating_bar.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/all_restaurents_screen/model/joybox_picks_widget_model.dart';
import 'package:joy_box_app/view/all_restaurents_screen/model/popular_restaurent_widget_model.dart';
import 'package:joy_box_app/view/all_restaurents_screen/model/resturaent_near_you_widget_model.dart';
import 'package:joy_box_app/view/all_restaurents_screen/model/top_restaurent.dart';
import 'package:joy_box_app/view/all_restaurents_screen/model/tradtional_restaurent_widget_model.dart';
import 'package:joy_box_app/view/all_restaurents_screen/widget/popular_restaurants_item_widget.dart';
import 'package:joy_box_app/view/all_restaurents_screen/widget/restaurent_near_you_widget.dart';
import 'package:joy_box_app/view/all_restaurents_screen/widget/your_fav_restaurent_item_widget.dart';
import 'package:joy_box_app/view/joybox_picks_screen/joybox_picks_screen.dart';
import 'package:joy_box_app/view/popular_restaurants_screen/popular_restaurants_screen.dart';
import 'package:joy_box_app/view/resturent_near_you_screen/model/near_you_model.dart';
import 'package:joy_box_app/view/resturent_near_you_screen/near_you_restaurent.dart';
import 'package:joy_box_app/view/top_restaurent/top_restauent_screen.dart';
import 'package:joy_box_app/view/traditional_restaurant/traditional_restaurant_screen.dart';
import 'package:joy_box_app/view/user_fav_restaurent/user_fav_restaurent_screen.dart';

import 'widget/top_restaurants_item_widget.dart';
import 'widget/traditional_restaurants_item_widget.dart';

class AllRestaurantScreen extends StatefulWidget {
  const AllRestaurantScreen({super.key});

  static const String routeName = 'All-restaurants';

  @override
  State<AllRestaurantScreen> createState() => _AllRestaurantScreenState();
}

class _AllRestaurantScreenState extends State<AllRestaurantScreen> {
  final List<String> tabList = [
    "Sort",
    "Rating",
    "Offers",
  ];

  Map<String, List<String>> dropdownItems = {
    "Sort": ["By Name", "By Distance", "By Price"],
    "Rating": ["5 Stars", "4 Stars", "3 Stars", "2 Stars", "1 Star"],
    "Offers": ["Discounts", "Buy One Get One", "Happy Hours"],
  };

  final List<JoyboxPicksWidgetModel> joyboxPicks = [
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
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 30.h),
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
                            SizedBox(width: 3.w),
                            for (String hintText in tabList)
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
              SizedBox(height: 50.h),
              _PopularRestaurantRow(),
              SizedBox(height: 20.h),
              _topRestaurantRow(),
              SizedBox(height: 30.h),
              _traditionalRestaurantsRow(),
              SizedBox(height: 10.h),
              _joyboxPicksRow(),
              SizedBox(
                height: 20.h,
              ),
              const _YourFavRestaurentWidegt(),
              SizedBox(
                height: 20.h,
              ),
              const _RestaurentsNearyou()
            ],
          ),
        ),
      ),
    );
  }

  Widget _topRestaurantRow() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Top Restaurants",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.black, fontSize: 17.sp)),
            GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, TopRestaurentScreen.routeName),
              child: Text("See all",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Colors.black,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      )),
            ),
          ],
        ).paddingHorizontal(20.w),
        SizedBox(height: 25.h),
        CarouselSlider.builder(
          itemCount: TopRestaurantWidgetModel.topRestaurantsList.length,
          options: CarouselOptions(
            clipBehavior: Clip.none,
            height: 215.h,
            viewportFraction: 0.4,
            // Adjust the fraction for overlapping effect
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            animateToClosest: true,
            autoPlay: false,
          ),
          itemBuilder: (BuildContext context, int index, int realIndex) {
            final item = TopRestaurantWidgetModel.topRestaurantsList[index];
            return TopRestaurantsItemWidget(item: item);
          },
        ),
      ],
    );
  }

  Widget _PopularRestaurantRow() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Popular Restaurants",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.black, fontSize: 17.sp)),
            GestureDetector(
              onTap: () => Navigator.pushNamed(
                  context, PopularRestaurantsScreen.routeName),
              child: Text("See all",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Colors.black,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      )),
            ),
          ],
        ).paddingHorizontal(20.w),
        SizedBox(
          height: 30.h,
        ),
        Container(
          margin: EdgeInsets.only(left: 20.w),
          height: 310.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            itemCount: PopularRestaurantWidgetModel.popularRestaurantsList.length,
            separatorBuilder: (context, index) => SizedBox(width: 12.w),
            itemBuilder: (context, index) {
              final item =
                  PopularRestaurantWidgetModel.popularRestaurantsList[index];
              return PopularRestaurantsItemWidget(item: item);
            },
          ),
        ),
      ],
    );
  }

  Widget _traditionalRestaurantsRow() {
    return Column(
      children: [
        Row(
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
              onTap: () => Navigator.pushNamed(
                  context, TraditionalRestaurantScreen.routeName),
              child: Text(
                "See all",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ],
        ).paddingHorizontal(20.w),
        SizedBox(height: 25.h),
        Container(
          clipBehavior: Clip.none,
          height: 240.h,
          child: Stack(
            children: [
              Positioned(
                top: 30.h,
                child: CustomImageView(
                  imagePath:
                      "assets/images/tradtional_restaurent_widget_img1.svg",
                ),
              ),
              Positioned(
                bottom: 20.h,
                child: CustomImageView(
                  imagePath:
                      "assets/images/tradtional_restaurent_widget_img1.svg",
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.blue,
                child: CarouselSlider.builder(
                  itemCount: TraditionalRestaurantsWidgetModel.traditionalRestaurantsLists.length,
                  options: CarouselOptions(
                    clipBehavior: Clip.none,
                    height: 240.h,
                    viewportFraction: 0.888,
                    // Adjust the fraction for overlapping effect
                    enlargeCenterPage: true,

                    animateToClosest: true,
                  ),
                  itemBuilder: (BuildContext context, int index, int realIndex) {
                    final item = TraditionalRestaurantsWidgetModel.traditionalRestaurantsLists[index];
                    return TraditionalRestaurantsItemWidget(item: item);
                  },
                ),
              ).paddingTop(15.h),
            ],
          ),
        ),
      ],
    );
  }


  Widget _joyboxPicksRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.w),
      child: Column(
        children: [
          Row(
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
                onTap: () =>
                    Navigator.pushNamed(context, JoyboxPicksScreen.routeName),
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
            height: 17.h,
          ),
          SizedBox(
            height: 300.h,
            // Height removed, since Carousel's height will be controlled by the aspect ratio

            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              itemCount: joyboxPicks.length,
              itemBuilder: (context, index) {
                JoyboxPicksWidgetModel restaurant = joyboxPicks[index];
                return Stack(children: [
                  Container(
                      // padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: _buildJoyboxPicksItem(restaurant))
                ]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 10.w);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJoyboxPicksItem(JoyboxPicksWidgetModel restaurant) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 200.w,
          height: 280.h,
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
                left: 40.w,
                right: 50.w,
                top: 172.h,
                bottom: 70.h,
                child: CommonElevatedButton(
                    width: 20.w,
                    height: 30.h,
                    buttonColor: AppColor.red2.withOpacity(0.8),
                    fontSize: 10.sp,
                    onPressed: () {},
                    text: "Order now"),
              ),
              Positioned(
                bottom: 14.h,
                right: 4.w,
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
                onTap: () =>
                    Navigator.pushNamed(context, NearYouRestaurent.routeName),
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
            height: 260.h,
            width: 500.w,
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
                onTap: () => Navigator.pushNamed(
                    context, UserFavRestaurentScreen.routeName),
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
              height: 240.h,
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
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.w),
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

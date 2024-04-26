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

import 'widget/joybox_picks_item_widget.dart';
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
              _popularRestaurantsRow(),
              SizedBox(height: 20.h),
              _topRestaurantRow(),
              SizedBox(height: 30.h),
              _traditionalRestaurantsRow(),
              SizedBox(height: 30.h),
              _joyBoxPicksRow(),
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

  Widget _popularRestaurantsRow() {
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
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.black, fontSize: 17.sp)
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(
                  context, TraditionalRestaurantScreen.routeName),
              child: Text(
                "See all",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                )
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
                top: 25.h,
                child: CustomImageView(
                  imagePath:
                      "assets/images/tradtional_restaurent_widget_img1.svg",
                ),
              ),
              Positioned(
                bottom: 50.h,
                child: CustomImageView(
                  imagePath:
                      "assets/images/tradtional_restaurent_widget_img1.svg",
                ),
              ),
              Container(
                alignment: Alignment.center,
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


  Widget _joyBoxPicksRow() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "JoyBox Pick’s",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.black, fontSize: 17.sp)
            ),
            GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, JoyboxPicksScreen.routeName),
              child: Text(
                "See all",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                )
              ),
            ),
          ],
        ).paddingHorizontal(20.w),
        SizedBox(
          height: 30.h,
        ),
        Container(
          margin: EdgeInsets.only(left: 20.w),
          height: 285.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            itemCount: JoyBoxPicksWidgetModel.joyBoxPicksList.length,
            itemBuilder: (context, index) {
              final item = JoyBoxPicksWidgetModel.joyBoxPicksList[index];
              return JoyBoxPicksItemWidget(item: item);
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 10.w);
            },
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

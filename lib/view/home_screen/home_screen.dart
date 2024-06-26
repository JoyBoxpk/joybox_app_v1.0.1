import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/model/custom_item_model.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/home_screen/sections/joybox_choice_section.dart';
import 'package:joy_box_app/view/home_screen/sections/offers_section.dart';
import 'package:joy_box_app/view/home_screen/sections/traditional_restaurants_section.dart';
import 'package:joy_box_app/view/home_screen/widgets/custom_icon_button.dart';
import 'package:joy_box_app/view/home_screen/widgets/custom_item.dart';
import 'package:joy_box_app/view/routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../all_restaurents_screen/model/popular_restaurent_widget_model.dart';
import '../popular_restaurants_screen/popular_restaurants_screen.dart';
import 'sections/favourite_meal_section.dart';
import 'widgets/popular_restaurants_item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = "/home-page";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int activeIndex1 = 0;
  int _currentIndex1 = 0;
  bool showProgressBar = true;

  final List<String> tabList = [
    "Fast Food",
    "Pakistani Food",
    "Chinese",
    "Italian",
    "Thai Food",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                SizedBox(height: 28.h),
                Text(
                  "What would you like to order",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                SizedBox(height: 50.h),
                _buildCentreBlock(context),
                SizedBox(height: 120.h),
                _popularRestaurantRow(context),
                SizedBox(height: 30.h),
                _buildMenu(context),
                SizedBox(height: 50.h),
                const TraditionalRestaurantsSection(),
                SizedBox(height: 30.h),
                const JoyBoxChoiceSection(),
                SizedBox(height: 40.h),
                const OffersSection(),
                SizedBox(height: 30.h),
                FavouriteMealSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _popularRestaurantRow(BuildContext context) {
    int currentIndex = 0;

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RoutePaths.allRestaurants);
            },
            child: Text(
              "All Restaurants",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Popular Restaurants",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.black, fontSize: 22.sp)),
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
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            height: 310.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              itemCount: PopularRestaurantWidgetModel.popularRestaurantsList.length,
              separatorBuilder: (context, index) => SizedBox(width: 15.w),
              itemBuilder: (context, index) {
                final item =
                PopularRestaurantWidgetModel.popularRestaurantsList[index];
                return PopularRestaurantsItemWidget(item: item);
              },
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 140.w),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey, // Customize the background color
              valueColor: const AlwaysStoppedAnimation<Color>(
                  Colors.red), // Customize the progress color
              value: (currentIndex + 2) /
                  PopularRestaurantWidgetModel.popularRestaurantsList.length, // Calculate the value based on currentIndex
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCentreBlock(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 150.h,
          width: double.infinity,
          color: AppColor.grey,
        ),
        Positioned(
          top: -30.h,
          left: 0, // Align with the left edge
          right: 0, // Align with the right edge
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            height: 60.h,
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50.h,
                    child: Material(
                      borderRadius: BorderRadius.circular(12.0),
                      elevation: 5.0,
                      child: TextFormField(
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 15.sp),
                        decoration: InputDecoration(
                          hintStyle: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(fontSize: 12.sp),
                          hintText: "Find what you need . . .",
                          prefixIcon: const Icon(Icons.search),
                          suffixIconColor: AppColor.red2,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Image.asset(
                              "assets/images/focus_icon.png",
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.h),
                CustomIconButton(
                  onPressed: () {},
                  imagePath: "assets/images/img3_home_screen.png",
                ),
                CustomIconButton(
                  onPressed: () {},
                  imagePath: "assets/images/img4_home_screen.png",
                ),
                CustomIconButton(
                  onPressed: () {},
                  imagePath: "assets/images/img5_home_screen.png",
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -40.h, // Adjust this value as needed
          left: 0,
          right: 0,
          child: Container(
            margin: EdgeInsets.only(left: 20.w),
            height: 100.h,
            child: Stack(
              children: [
                NotificationListener<ScrollNotification>(
                  onNotification: (scrollNotification) {
                    if (scrollNotification is ScrollUpdateNotification) {
                      // Calculate progress based on the scroll offset
                      double progress = (scrollNotification.metrics.pixels /
                              (scrollNotification.metrics.maxScrollExtent)) *
                          2;
                      // Clamp the progress between 0 and 1
                      progress = progress.clamp(0.0, 1.0);
                      // Update the state to reflect the progress
                      setState(() {
                        activeIndex1 = (progress *
                                CustomItemModel.customItemModelList.length)
                            .round();
                      });
                    }
                    return false;
                  },
                  child: ListView.separated(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    itemCount: CustomItemModel.customItemModelList.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 20.h);
                    },
                    itemBuilder: (context, index) {
                      final item = CustomItemModel.customItemModelList[index];
                      return CustomItem(
                        itemModel: item,
                        index: index,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -65.h, // Adjust this value as needed
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 140.w),
            child: Align(
              alignment: Alignment.bottomRight,
              child: LinearProgressIndicator(
                value:
                    activeIndex1 / CustomItemModel.customItemModelList.length,
                backgroundColor: Colors.black12,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMenu(BuildContext context) {
    List<List<String>> foodImages = [
      [
        "assets/images/img13_home_screen.png",
        "assets/images/img14_home_screen.png",
        "assets/images/img15_home_screen.png"
      ],
      [
        "assets/images/img26_home_screen.png",
        "assets/images/img27_home_screen.png",
        "assets/images/img28_home_screen.jpg"
      ],
      [
        "image1_italian_food.jpg",
        "image2_italian_food.jpg",
        "image3_italian_food.jpg"
      ],
      ["image1_thai_food.jpg", "image2_thai_food.jpg", "image3_thai_food.jpg"],
    ];

    return SizedBox(
      height: 360.h,
      child: Stack(
        children: [
          Image.asset(
            "assets/images/home_screen_img26.jpeg",
            height: 360.h,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          Positioned(
            top: 65.h,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Menu",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: AppColor.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp,
                            ),
                      ),
                      GestureDetector(
                        onTap: ()=> Navigator.pushNamed(context, RoutePaths.fastFoodMain),
                        child: Text(
                          "See all",
                          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: AppColor.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.only(left: 14.w),
                  child: SizedBox(
                    height: 40.h,
                    child: ListView.separated(
                      itemCount: tabList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentIndex1 = index;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            decoration: BoxDecoration(
                              color: _currentIndex1 == index
                                  ? AppColor.amber
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              tabList[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    fontSize:
                                        _currentIndex1 == index ? 15.sp : 13.sp,
                                    fontWeight: _currentIndex1 == index
                                        ? FontWeight.w500
                                        : FontWeight.w400,
                                  ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 1.w),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            // Display selected food images
            top: 156.h,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.blue.withOpacity(0.5),
              height: 150.h,
              width: double.infinity,
              margin: EdgeInsets.only(left: 20.w, right: 15.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: foodImages[_currentIndex1].map((imagePath) {
                  return Expanded(
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.contain,
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 7,
                activeDotColor: AppColor.amber,
                dotColor: AppColor.blueGrey,
                dotHeight: 9.h,
                dotWidth: 9.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

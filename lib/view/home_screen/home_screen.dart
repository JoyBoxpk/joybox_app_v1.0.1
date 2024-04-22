import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/model/custom_item_model.dart';
import 'package:joy_box_app/model/offer_item_model.dart';
import 'package:joy_box_app/model/your_favourite_meal_item_model.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/all_restaurents_screen/all_restaurents_screen_widget_model..dart';
import 'package:joy_box_app/view/home_screen/widgets/custom_icon_button.dart';
import 'package:joy_box_app/view/home_screen/widgets/custom_item.dart';
import 'package:joy_box_app/view/home_screen/widgets/offer_item_widget.dart';
import 'package:joy_box_app/view/home_screen/widgets/popular_res_item.dart';
import 'package:joy_box_app/view/home_screen/widgets/taditional_item_widget.dart';
import 'package:joy_box_app/view/home_screen/widgets/your_favourite_meal_item.dart';
import 'package:joy_box_app/view/offers_screen/offers_screen.dart';
import 'package:joy_box_app/view/popular_restaurants_screen/popular_restaurants_screen.dart';
import 'package:joy_box_app/view/traditional_restaurant/traditional_restaurant_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../common_widgets/drawer.dart';
import '../../model/traditional_restaurants_item_model.dart';
import '../joybox_choice/joybox_choice_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = "/home-screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final CarouselController _carouselController6 = CarouselController();
  int activeIndex1 = 0;
  int activeIndex6 = 0;
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
                _buildAppBar(),
                SizedBox(height: 28.h),
                Text(
                  "What would you like to order",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 20.sp),
                ),
                SizedBox(height: 20.h),
                _buildCentreBlock(context),
                SizedBox(height: 40.h),
                _popularRestaurantRow(context),
                SizedBox(height: 60.h),
                _buildMenu(context),
                SizedBox(height: 50.h),
                _traditionalRestaurant(context),
                _buildJoyBoxChoice(context),
                SizedBox(height: 20.h),
                _buildOfferRow(context),
                SizedBox(height: 30.h),
                _favMealRow(context),
              ],
            ),
          ),
        ),
        drawer: const DrawerWidget(),
      ),
    );
  }

  Widget _favMealRow(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 310.h,
      margin: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Your Favourite meal",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.black, fontSize: 20.sp)),
              Text("View all",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: Colors.black, fontSize: 12.sp))
            ],
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: YourFavouriteMealItemModel.favouriteItemList.length,
              separatorBuilder: (context, index) {
                return SizedBox(width: 4.h);
              },
              itemBuilder: (context, index) {
                final item =
                    YourFavouriteMealItemModel.favouriteItemList[index];
                return YourFavouriteMealItem(
                  itemModel: item,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOfferRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.w),
      width: double.infinity,
      height: 270.h,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Offers",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.black, fontSize: 20.sp)),
              GestureDetector(
                onTap: () => context.goNamed(OffersScreen.routeName),
                child: Text("View all",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Colors.black, fontSize: 12.sp)),
              )
            ],
          ),
          SizedBox(height: 10.h),
          CarouselSlider.builder(
            itemCount: OfferItemModel.offerItemList.length,
            options: CarouselOptions(
              clipBehavior: Clip.none,
              viewportFraction: 0.9995,
              height: 210.h,
              autoPlay: false,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex6 = index;
                });
              },
            ),
            itemBuilder: (context, index, realIndex) {
              final item = OfferItemModel.offerItemList[index];
              return OfferItemWidget(
                offerItem: item,
              );
            },
            carouselController: _carouselController6,
          ),
          Align(
            alignment: Alignment.center,
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex6,
              count: OfferItemModel.offerItemList.length,
              effect: WormEffect(
                dotHeight: 12.h,
                dotWidth: 12.w,
                activeDotColor: AppColor.red2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _popularRestaurantRow(BuildContext context) {
    int currentIndex = 0;
    // Sample data for the list of popular restaurants
    List<String> popularRestaurants = [
      "Lachine",
      "Movenpick",
      "PC Hotel",
      "Lachine",
      "Movenpick",
      "PC Hotel"
    ];

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              context.goNamed(AllRestaurentScreen.routeName);
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
              Text(
                "Popular Restaurants",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              GestureDetector(
                onTap: () =>
                    context.goNamed(PopularRestaurantsScreen.routeName),
                child: Text(
                  "See all",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          SizedBox(
            height: 400.h, // Adjust the height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: popularRestaurants.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  // On tap, update the current index
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                      print(currentIndex);
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: PopularResItem(title: popularRestaurants[index]),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 140.w),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey, // Customize the background color
              valueColor: const AlwaysStoppedAnimation<Color>(
                  Colors.red), // Customize the progress color
              value: (currentIndex + 2) /
                  popularRestaurants
                      .length, // Calculate the value based on currentIndex
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
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          width: double.infinity,
          height: 230.h,
          child: Column(
            children: [
              Row(
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
                            suffixIcon: const Icon(Icons.history_toggle_off),
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
              SizedBox(height: 50.h),
              Expanded(
                child: SizedBox(
                  height: 250.h,
                  child: Stack(
                    children: [
                      NotificationListener<ScrollNotification>(
                        onNotification: (scrollNotification) {
                          if (scrollNotification is ScrollUpdateNotification) {
                            // Calculate progress based on the scroll offset
                            double progress =
                                (scrollNotification.metrics.pixels /
                                        (scrollNotification
                                            .metrics.maxScrollExtent)) *
                                    2;
                            // Clamp the progress between 0 and 1
                            progress = progress.clamp(0.0, 1.0);
                            // Update the state to reflect the progress
                            setState(() {
                              activeIndex1 = (progress *
                                      CustomItemModel
                                          .customItemModelList.length)
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
                            final item =
                                CustomItemModel.customItemModelList[index];
                            return CustomItem(
                              itemModel: item,
                              index: index,
                            );
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 140.w),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: LinearProgressIndicator(
                            value: activeIndex1 /
                                CustomItemModel.customItemModelList.length,
                            backgroundColor: Colors.black12,
                            valueColor:
                                const AlwaysStoppedAnimation<Color>(Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildJoyBoxChoice(BuildContext context) {
    return Container(
      height: 480.h,
      padding: EdgeInsets.symmetric(vertical: 20.h),
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            // Colors.red.withOpacity(0.02),
            AppColor.white,
            AppColor.blue,
          ],
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "JoyBox Choice",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.black, fontSize: 20.sp),
                ),
                GestureDetector(
                  onTap: () => context.goNamed(JoyBoxChoiceScreen.routeName),
                  child: Text(
                    "View all",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Colors.black, fontSize: 12.sp),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.asset("assets/images/img19_home_screen.png"),
                Image.asset("assets/images/img20_home_screen.png.png"),
                Image.asset("assets/images/img19_home_screen.png"),
                Image.asset("assets/images/img20_home_screen.png.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _traditionalRestaurant(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250.h,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Traditional Restaurants",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.black,
                      fontSize: 20.sp,
                    ),
              ),
              GestureDetector(
                onTap: () {
                  context.goNamed(TraditionalRestaurant.routeName);
                },
                child: Text(
                  "See all",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Colors.black,
                        fontSize: 12.sp,
                      ),
                ),
              )
            ],
          ),
          SizedBox(height: 80.h),
          Expanded(
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: TraditionalRestaurantsItemModel.itemsList.length,
              separatorBuilder: (context, index) {
                return SizedBox(width: 20.h);
              },
              itemBuilder: (context, index) {
                final item = TraditionalRestaurantsItemModel.itemsList[index];
                return TraditionalItemWidget(
                  traditionalItem: item,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenu(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
      width: double.infinity,
      height: 360.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColor.red1,
            Colors.red.withOpacity(0.02),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Menu",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppColor.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp),
              ),
              Text(
                "See all",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: AppColor.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp),
              )
            ],
          ),
          SizedBox(height: 20.h),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       InkWell(
          //         onTap: () => context.goNamed(FastFoodMainScreen.routeName),
          //         child: const MenuTabWidget(
          //           tabName: 'Fast Food',
          //           tabColor: AppColor.amber2,
          //         ),
          //       ),
          //       const MenuTabWidget(tabName: 'Pakistani Food'),
          //       const MenuTabWidget(tabName: "Chinese"),
          //       const MenuTabWidget(tabName: "Italian"),
          //       const MenuTabWidget(tabName: "Thai Food"),
          //     ],
          //   ),
          // ),
          SizedBox(
            height: 44.h,
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
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                      color: _currentIndex1 == index
                          ? AppColor.amber
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    alignment: Alignment.center,
                    height: 20.h,
                    // Adjusted height
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
                            : FontWeight.w300,
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 2.w),
            ),
          ),
          SizedBox(height: 20.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.asset("assets/images/img13_home_screen.png",
                    width: 130.w, height: 155.h, fit: BoxFit.cover),
                SizedBox(width: 10.w),
                Image.asset("assets/images/img14_home_screen.png",
                    width: 130.w, height: 155.h, fit: BoxFit.cover),
                SizedBox(width: 10.w),
                Image.asset("assets/images/img15_home_screen.png",
                    width: 130.w, height: 155.h, fit: BoxFit.cover),
              ],
            ),
          ),
          SizedBox(height: 40.h),
          // SizedBox(
          //   height: 9.h,
          //   child: AnimatedSmoothIndicator(
          //     activeIndex: 0,
          //     count: 3,
          //     effect: ScrollingDotsEffect(
          //       spacing: 7,
          //       activeDotColor: AppColor.amber,
          //       dotColor: AppColor.blueGrey,
          //       dotHeight: 9.h,
          //       dotWidth: 9.w,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }


  Widget _buildAppBar() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              imagePath: "assets/images/img1_home_screen.png"),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Deliver to",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.sp,
                          color: AppColor.red1,
                        ),
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: AppColor.red1,
                  ),
                ],
              ),
              Text(
                "4102 Pretty View Lane",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ],
          ),
          CustomIconButton(
            onPressed: () {},
            imagePath: "assets/images/img2_home_screen.jpg",
          ),
        ],
      ),
    );
  }
}

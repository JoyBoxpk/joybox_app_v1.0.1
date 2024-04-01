import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/model/custom_item_model.dart';
import 'package:joy_box_app/model/offer_item_model.dart';
import 'package:joy_box_app/model/your_favourite_meal_item_model.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/home_screen/widgets/custom_icon_button.dart';
import 'package:joy_box_app/view/home_screen/widgets/custom_item.dart';
import 'package:joy_box_app/view/home_screen/widgets/menu_tab_widget.dart';
import 'package:joy_box_app/view/home_screen/widgets/offer_item_widget.dart';
import 'package:joy_box_app/view/home_screen/widgets/popular_res_item.dart';
import 'package:joy_box_app/view/home_screen/widgets/taditional_item_widget.dart';
import 'package:joy_box_app/view/home_screen/widgets/your_favourite_meal_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../common_widgets/drawer.dart';
import '../../model/traditional_restaurants_item_model.dart';
import '../Fast food/fast_food/fast_food_main/fast_food_main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = "/home-screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
                SizedBox(height: 30.h),
                SizedBox(
                  height: 9.h,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 3,
                    effect: ScrollingDotsEffect(
                      spacing: 7,
                      activeDotColor: AppColor.red1,
                      dotColor: AppColor.blueGrey,
                      dotHeight: 9.h,
                      dotWidth: 9.w,
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                _popularRestaurantRow(context),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 9.h,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 3,
                    effect: ScrollingDotsEffect(
                      spacing: 7,
                      activeDotColor: AppColor.red1,
                      dotColor: AppColor.blueGrey,
                      dotHeight: 9.h,
                      dotWidth: 9.w,
                    ),
                  ),
                ),
                SizedBox(height: 60.h),
                _buildMenu(context),
                SizedBox(height: 50.h),
                _traditionalRestaurant(context),
                SizedBox(height: 60.h),
                _buildJoyBoxChoice(context),
                SizedBox(height: 50.h),
                _buildOfferRow(context),
                SizedBox(height: 50.h),
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
      height: 240.h,
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
              Text("View all",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: Colors.black, fontSize: 12.sp))
            ],
          ),
          SizedBox(height: 10.h),
          Expanded(
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: OfferItemModel.offerItemList.length,
              separatorBuilder: (context, index) {
                return SizedBox(width: 60.h);
              },
              itemBuilder: (context, index) {
                final item = OfferItemModel.offerItemList[index];
                return OfferItemWidget(
                  offerItem: item,
                );
              },
            ),
          ),
          SizedBox(
            height: 9.h,
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 7,
                activeDotColor: AppColor.red1,
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

  Widget _popularRestaurantRow(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Restaurants",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "See all",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontSize: 12.sp, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PopularResItem(title: "Lachine"),
                PopularResItem(title: "Movenpick"),
              ],
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
          height: 200.h,
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
                  // height: 100.h,
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
      decoration: BoxDecoration(
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
                Text(
                  "View all",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: Colors.black, fontSize: 12.sp),
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
              ],
            ),
          ),
          SizedBox(height: 40.h),
          SizedBox(
            height: 10.h,
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 7,
                activeDotColor: AppColor.red1,
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
              Text("Traditional Restaurants",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.black, fontSize: 20.sp)),
              Text("See all",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: Colors.black, fontSize: 12.sp))
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
          SizedBox(
            height: 9.h,
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 7,
                activeDotColor: AppColor.red1,
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
              Text("Menu",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppColor.white,
                  )),
              Text(
                "See all",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: AppColor.white,
                  fontSize: 12.sp,
                ),
              )
            ],
          ),
          SizedBox(height: 20.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => context.goNamed(FastFoodMainScreen.routeName),
                  child: const MenuTabWidget(
                    tabName: 'Fast Food',
                    tabColor: AppColor.amber2,
                  ),
                ),
                const MenuTabWidget(tabName: 'Pakistani Food'),
                const MenuTabWidget(tabName: "Chinese"),
                const MenuTabWidget(tabName: "Italian"),
                const MenuTabWidget(tabName: "Thai Food"),
              ],
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
          SizedBox(
            height: 9.h,
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

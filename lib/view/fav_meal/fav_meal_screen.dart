import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/common_widgets/custom_smooth_indicator.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/fav_meal/model/fav_meal.dart';
import 'package:joy_box_app/view/fav_meal/model/meal_carousel_model.dart';
import 'package:joy_box_app/view/fav_meal/widgets/fav_meal_widget.dart';
import 'package:joy_box_app/view/fav_meal/widgets/meal_carousel_widget.dart';

class FavMealScreen extends StatefulWidget {
  const FavMealScreen({super.key});

  static const String routeName = '/Fav-Meal';

  @override
  State<FavMealScreen> createState() => _FavMealScreenState();
}

class _FavMealScreenState extends State<FavMealScreen> {
  int activeIndex1 = 0;

  List<FavoriteMealModel> favoriteMeals = [
    FavoriteMealModel(
        name: "Matka Biryani",
        imagePath: "assets/images/fav_meal_img3.png",
        price: "RS 999.0",
        hotelImgPath: "assets/images/fav_meal_img5.png"),
    FavoriteMealModel(
        name: "Nali Nihari",
        imagePath: "assets/images/fav_meal_img3.png",
        price: "RS 999.0",
        hotelImgPath: "assets/images/fav_meal_img5.png"),
    FavoriteMealModel(
        name: "Matka\nBiryani",
        imagePath: "assets/images/fav_meal_img3.png",
        price: "RS 999.0",
        hotelImgPath: "assets/images/fav_meal_img5.png"),
    // Add more favorite meals as needed
  ];
  List<MealCarouselModel> mealCarouselItems = [
    MealCarouselModel(
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        image1: "assets/images/fav_meal_img8.png",
        image2: "assets/images/fav_meal_img9.png",
        price: "PKR 100",
        title: "Fruity",
        subtitle: "Dream Donut"),
    MealCarouselModel(
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        image1: "assets/images/fav_meal_img8.png",
        image2: "assets/images/fav_meal_img9.png",
        price: "PKR 100",
        title: "Fruity",
        subtitle: "Dream Donut"),
    MealCarouselModel(
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        image1: "assets/images/fav_meal_img8.png",
        image2: "assets/images/fav_meal_img9.png",
        price: "PKR 100",
        title: "Fruity",
        subtitle: "Dream Donut"),
    // Add more favorite meals as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        text: "Your Favourite meal",
        backgroundColor: AppColor.red1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200.h,
              width: double.infinity,
              color: AppColor.red1,
              child: Stack(
                children: [
                  Positioned(
                    top: 20.h,
                    left: 80.w,
                    child: Container(
                      height: 130.h,
                      width: 60.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30.w)),
                          color: AppColor.amber1),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            _buildFavMealWidget(favoriteMeals: favoriteMeals),
            _buildCarouselWidget(
              mealCarouselItems: mealCarouselItems,
              index: activeIndex1,
              onIndexChanged: (index) {
                setState(() {
                  activeIndex1 = index;
                });
              },
            ),
            CustomSmoothIndicator(
              activeIndex: activeIndex1,
              itemCount: mealCarouselItems.length,
            ),
            const _buildDealWidget()
          ],
        ),
      ),
    );
  }
}

class _buildDealWidget extends StatelessWidget {
  const _buildDealWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: 0,
          child: CustomImageView(
            fit: BoxFit.cover,
            imagePath: "assets/images/fav_meal_img11.png",
          ),
        ),
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
    );
  }
}

class _buildCarouselWidget extends StatefulWidget {
  _buildCarouselWidget({
    super.key,
    required this.mealCarouselItems,
    required this.index,
    required this.onIndexChanged,
  });

  final List<MealCarouselModel> mealCarouselItems;
  int index = 0;
  final Function(int) onIndexChanged;

  @override
  State<_buildCarouselWidget> createState() => _buildCarouselWidgetState();
}

class _buildCarouselWidgetState extends State<_buildCarouselWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      height: 300,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColor.amber, AppColor.white])),
      child: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.w, right: 10.w),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        height: 240.h,
                        decoration: const BoxDecoration(color: AppColor.red1),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        height: 240.h,
                        decoration: const BoxDecoration(color: AppColor.white),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 200.h,
                  width: 380.w,
                  child: CarouselSlider.builder(
                    itemCount: widget.mealCarouselItems.length,
                    itemBuilder: (context, index, realIndex) {
                      final MealCarouselModel carouselItem =
                          widget.mealCarouselItems[index];
                      return MealCarouselWidget(
                        image1: carouselItem.image1,
                        image2: carouselItem.image2,
                        title: carouselItem.title,
                        subtitle: carouselItem.subtitle,
                        description: carouselItem.description,
                        price: carouselItem.price,
                      );
                    },
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        widget.onIndexChanged(index);
                      },
                      clipBehavior: Clip.none,
                      height: 300,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _buildFavMealWidget extends StatelessWidget {
  const _buildFavMealWidget({
    super.key,
    required this.favoriteMeals,
  });

  final List<FavoriteMealModel> favoriteMeals;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340.h,
      width: double.infinity,
      color: Colors.black,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: CustomImageView(
              // height: 300,
              // width: 120,
              fit: BoxFit.fill,
              imagePath: "assets/images/fav_meal_img1.png",
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40.h),
            child: SizedBox(
              height: 230.h,
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: favoriteMeals.length,
                itemBuilder: (context, index) {
                  FavoriteMealModel meal = favoriteMeals[index];
                  return FavoriteMealWidget(
                    hotelImg: meal.hotelImgPath,
                    name: meal.name,
                    imagePath: meal.imagePath,
                    price: meal.price,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 40.h,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

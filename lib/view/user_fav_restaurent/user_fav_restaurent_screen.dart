import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/common_dropdown_button.dart';
import 'package:joy_box_app/view/user_fav_restaurent/model/restaurant_model.dart';
import 'package:joy_box_app/view/user_fav_restaurent/restaurent_card.dart';

class UserFavRestaurentScreen extends StatefulWidget {
  const UserFavRestaurentScreen({Key? key}) : super(key: key);

  static const String routeName = "User-FavRestaurent-Screen";

  @override
  State<UserFavRestaurentScreen> createState() =>
      _UserFavRestaurentScreenState();
}

class _UserFavRestaurentScreenState extends State<UserFavRestaurentScreen> {
  final List<String> tablist = [
    "Burgers",
    "Pizza",
    "Wings",
    "Rolls",
    "Sandwich",
    "Nuggets",
  ];
  final List<String> tablists = [
    "Sort",
    "Rating",
    "Offers",
  ];

  Map<String, List<String>> dropdownItems = {
    "Sort": ["By Name", "By Distance", "By Price"],
    "Rating": ["5 Stars", "4 Stars", "3 Stars", "2 Stars", "1 Star"],
    "Offers": ["Discounts", "Buy One Get One", "Happy Hours"],
  };

  final List<RestaurantModel> restaurants = [
    RestaurantModel(
      name: "The East End",
      imagePath: "assets/images/fav_user_restaurent_img1.png",
      openingHours: "Opening 11pm - 12am",
    ),
    RestaurantModel(
      name: "The East End",
      imagePath: "assets/images/fav_user_restaurent_img1.png",
      openingHours: "Opening 11pm - 12am",
    ),
    RestaurantModel(
      name: "The East End",
      imagePath: "assets/images/fav_user_restaurent_img1.png",
      openingHours: "Opening 11pm - 12am",
    ),
    RestaurantModel(
      name: "The East End",
      imagePath: "assets/images/fav_user_restaurent_img1.png",
      openingHours: "Opening 11pm - 12am",
    ),
    RestaurantModel(
      name: "The East End",
      imagePath: "assets/images/fav_user_restaurent_img1.png",
      openingHours: "Opening 11pm - 12am",
    ),
    // Add more restaurants as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        isCircular: true,
        showBackButton: false,
        text: "Your Favourite Restaurant",
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
      body: SingleChildScrollView(
        child: Column(
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
                                "assets/images/fast_food_screen_img1.svg"),
                          ),
                          SizedBox(width: 5.w),
                          for (String hintText in tablists)
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
            SizedBox(height: 20.h),
            Column(
              children: restaurants
                  .map((restaurant) => Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: RestaurantCard(restaurant: restaurant)))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/common_dropdown_button.dart';
import 'package:joy_box_app/view/top_restaurent/model/top_restaurent_model.dart';

import 'widget/top_restaurent_card_widget.dart';

class TopRestaurentScreen extends StatelessWidget {
  TopRestaurentScreen({super.key});

  static const String routeName = 'top-Restaurant-Screen';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        text: "Top restaurants",
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
        margin: EdgeInsets.symmetric(vertical: 20.h),
        child: CustomScrollView(
          slivers: [
            _buildTabbar(tablist: tablist, dropdownItems: dropdownItems),
            SliverToBoxAdapter(child: SizedBox(height: 20.h)),
            // ListView Builder to display restaurant cards
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 10.w),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return RestaurantCard(restaurant: restaurants[index]);
                  },
                  childCount: restaurants.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _buildTabbar extends StatelessWidget {
  const _buildTabbar({
    super.key,
    required this.tablist,
    required this.dropdownItems,
  });

  final List<String> tablist;
  final Map<String, List<String>> dropdownItems;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        height: 50.h,
        margin: EdgeInsets.symmetric(horizontal: 15.w),
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
                child:
                    SvgPicture.asset("assets/images/fast_food_screen_img1.svg"),
              ),
              SizedBox(width: 5.w),
              for (String hintText in tablist)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: CommonDropdownButton(
                    hintText: hintText,
                    items: dropdownItems[hintText]!,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

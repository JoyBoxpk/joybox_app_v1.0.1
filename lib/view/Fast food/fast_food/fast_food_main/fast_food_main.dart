import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/Fast%20food/fast_food/fast_food_main/model/tab_list_model.dart';
import 'package:joy_box_app/view/Fast%20food/fast_food/fast_food_main/widgets/fast_food_list_widget.dart';

import '../../../../common_widgets/common_dropdown_button.dart';

class FastFoodMainScreen extends StatefulWidget {
  const FastFoodMainScreen({super.key});

  static const String routeName = '/fast-food';

  @override
  State<FastFoodMainScreen> createState() => _FastFoodMainScreenState();
}

class _FastFoodMainScreenState extends State<FastFoodMainScreen> {
  int _currentIndex = 0;
  final List<String> tablist = [
    "Burgers",
    "Pizza",
    "Wings",
    "Rolls",
    "Sandwich",
    "Nuggets",
  ];

  final List<List<TabListModel>> tabLists = [
    TabListModel.burgersRestaurantList,
    TabListModel.pizzaRestaurantList,
    TabListModel.wingsRestaurantList,
    TabListModel.rollsRestaurantList,
    TabListModel.sandwichRestaurantList,
    TabListModel.nuggetsRestaurantList,
  ];

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
      appBar: const CommonAppBar(
        isCircular: true,
        text: "Fast Food",
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 15.w),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
              sliver: SliverAppBar(
                toolbarHeight: 50.h,
                automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  stretchModes: const [StretchMode.fadeTitle],
                  background: ListView.separated(
                    itemCount: tablist.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: _currentIndex == index
                                ? AppColor.amber
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          alignment: Alignment.center,
                          width: 90.w,
                          height: 48.h,
                          // Adjusted height
                          child: Text(
                            tablist[index],
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                              fontSize:
                              _currentIndex == index ? 16.sp : 14.sp,
                              fontWeight: _currentIndex == index
                                  ? FontWeight.w600
                                  : FontWeight.w200,
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(width: 1.w),
                  ),
                ),
              ),
            ),
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
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: CommonDropdownButton(
                            hintText: hintText,
                            items: dropdownItems[hintText]!,
                          )),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 30.h),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  final item = tabLists[_currentIndex][index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 35.h),
                    child: FastFoodListWidget(
                      tabListItem: item,
                    ),
                  );
                },
                childCount: tabLists[_currentIndex].length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

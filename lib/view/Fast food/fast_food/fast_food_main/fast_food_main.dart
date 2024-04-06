import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/Fast%20food/fast_food/fast_food_main/model/tab_list_model.dart';
import 'package:joy_box_app/view/Fast%20food/fast_food/fast_food_main/widgets/fast_food_list_widget.dart';


class FastFoodMainScreen extends StatefulWidget {
  const FastFoodMainScreen({super.key});

  static const String routeName = 'fast-food-main';

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
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        text: "Fast Food",
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 5.w),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: EdgeInsets.only(top: 25.h, bottom: 25.h, left: 15.w), // Adjust the value as needed
              sliver: SliverAppBar(
                toolbarHeight: 50.h,
                automaticallyImplyLeading: false,
                // expandedHeight: 20.h,
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
                          height: 30.h, // Adjusted height
                          child: Text(
                            tablist[index],
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                              fontSize: _currentIndex == index ? 16.sp : 14.sp,
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
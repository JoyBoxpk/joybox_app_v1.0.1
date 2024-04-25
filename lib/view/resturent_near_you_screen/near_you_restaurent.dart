import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/common_dropdown_button.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/resturent_near_you_screen/model/near_you_model.dart';
import 'package:joy_box_app/view/resturent_near_you_screen/widgets/near_you_widget.dart';

class NearYouRestaurent extends StatefulWidget {
  const NearYouRestaurent({super.key});

  static const String routeName = "Near-You-Restaurent";

  @override
  State<NearYouRestaurent> createState() => _NearYouRestaurentState();
}

class _NearYouRestaurentState extends State<NearYouRestaurent> {
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
        isCircular: true,
        text: "Restaurant Near you",
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: AppColor.red1,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: AppColor.red1,
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
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
              child: SizedBox(height: 60.h),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  final item =
                      NearRestaurentListModel.NearRestaurantList[index];
                  return NearUserHotelListWidget(
                    item: item,
                  );
                },
                childCount: NearRestaurentListModel.NearRestaurantList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joy_box_app/common_widgets/common_dropdown_button.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/joybox_picks_screen/model/joybox_pick_model.dart';
import 'package:joy_box_app/view/joybox_picks_screen/widget/joybox_pick_widget.dart';

import '../../common_widgets/common_appbar.dart';

class JoyboxPicksScreen extends StatelessWidget {
  JoyboxPicksScreen({Key? key}) : super(key: key);

  static const String routeName = 'joybox-picks-screen';

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
        isCircular: true,
        text: "Joybox Pick’s",
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
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.all(15.w),
            sliver: SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                height: 50.h,
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
                            SvgPicture.asset("assets/images/Group 17878.svg"),
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
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final joyboxPick = joyboxPicks[index];
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
                  child: JoyboxPickWidget(joyboxPick: joyboxPick),
                );
              },
              childCount: joyboxPicks.length,
            ),
          ),
        ],
      ),
    );
  }
}

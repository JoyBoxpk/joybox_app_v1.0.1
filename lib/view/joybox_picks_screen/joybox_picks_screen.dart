import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joy_box_app/common_widgets/common_dropdown_button.dart';
import 'package:joy_box_app/view/joybox_picks_screen/model/joybox_pick_model.dart';
import 'package:joy_box_app/view/joybox_picks_screen/widget/joybox_pick_widget.dart';

import '../../common_widgets/common_appbar.dart';

class JoyboxPicksScreen extends StatefulWidget {
  const JoyboxPicksScreen({super.key});

  static const String routeName = 'joybox-picks-screen';

  @override
  State<JoyboxPicksScreen> createState() => _JoyboxPicksScreenState();
}

class _JoyboxPicksScreenState extends State<JoyboxPicksScreen> {
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
  final List<JoyboxPickModel> joyboxPicks = [
    JoyboxPickModel(
      name: 'The East End',
      rating: '3.9 (3000+)',
      imagePath: 'assets/images/joybox_picks_screen_img1.jpg',
    ),
    JoyboxPickModel(
      name: 'The East End',
      rating: '3.9 (3000+)',
      imagePath: 'assets/images/joybox_picks_screen_img1.jpg',
    ),
    JoyboxPickModel(
      name: 'The East End',
      rating: '3.9 (3000+)',
      imagePath: 'assets/images/joybox_picks_screen_img1.jpg',
    ),
    JoyboxPickModel(
      name: 'The East End',
      rating: '3.9 (3000+)',
      imagePath: 'assets/images/joybox_picks_screen_img1.jpg',
    ),
    // Add more JoyboxPick instances as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        text: "Joybox Pick’s",
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
        isCircular: true,
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
                                "assets/images/Group 17878.svg"),
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
                ],
              ),
            ),
            SizedBox(height: 20.h),
            // Container(
            //   height: 300.h,
            //   width: 350.w,
            //   child: Stack(
            //     children: [
            //       Positioned(
            //         right: 19.w,
            //         top: 40.h,
            //         child: Container(
            //           width: 300.w,
            //           height: 220.h,
            //           decoration: BoxDecoration(
            //               color: AppColor.amber4.withOpacity(0.7),
            //               borderRadius: const BorderRadius.only(
            //                   bottomRight: Radius.circular(10),
            //                   topRight: Radius.circular(10),
            //                   bottomLeft: Radius.circular(50))),
            //           child: Stack(
            //             children: [
            //               Positioned(
            //                 right: 90.h,
            //                 top: 30.w,
            //                 child: SizedBox(
            //                   height: 70.h,
            //                   child: Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       Text(
            //                         "The East End",
            //                         style: Theme.of(context)
            //                             .textTheme
            //                             .displaySmall!
            //                             .copyWith(
            //                               fontSize: 14.sp,
            //                               fontWeight: FontWeight.w600,
            //                               color: AppColor.black,
            //                             ),
            //                       ),
            //                       RichText(
            //                         text: TextSpan(
            //                           children: [
            //                             TextSpan(
            //                               text: "3.9 ",
            //                               style: Theme.of(context)
            //                                   .textTheme
            //                                   .displaySmall!
            //                                   .copyWith(
            //                                     fontSize: 11.sp,
            //                                     fontWeight: FontWeight.w600,
            //                                     color: AppColor.black,
            //                                   ),
            //                             ),
            //                             TextSpan(
            //                               text: "(3000+)",
            //                               style: Theme.of(context)
            //                                   .textTheme
            //                                   .displaySmall!
            //                                   .copyWith(
            //                                     fontSize: 10.sp,
            //                                     fontWeight: FontWeight.normal,
            //                                     color: AppColor.black,
            //                                   ),
            //                             ),
            //                           ],
            //                         ),
            //                       ),
            //                       Row(
            //                         mainAxisAlignment:
            //                             MainAxisAlignment.spaceBetween,
            //                         children: [
            //                           CustomImageView(
            //                             width: 12.w,
            //                             height: 12.h,
            //                             imagePath:
            //                                 "assets/images/joybox_picks_screen_img2.svg",
            //                             fit: BoxFit.cover,
            //                           ),
            //                           SizedBox(
            //                             width: 4.w,
            //                           ),
            //                           Text("Free",
            //                               style: Theme.of(context)
            //                                   .textTheme
            //                                   .displaySmall!
            //                                   .copyWith(
            //                                     fontSize: 12.sp,
            //                                     color: AppColor.red1,
            //                                     fontWeight: FontWeight.w500,
            //                                   )),
            //                         ],
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //               ),
            //               Align(
            //                 alignment: Alignment.bottomLeft,
            //                 child: CustomImageView(
            //                   // width: 150.w,
            //                   radius: BorderRadius.circular(12),
            //                   imagePath:
            //                       "assets/images/joybox_picks_screen_img3.svg",
            //                 ),
            //               ),
            //               Positioned(
            //                 top: 110.h,
            //                 right: 85.w,
            //                 child: CommonElevatedButton(
            //                     height: 40.h,
            //                     width: 130.w,
            //                     fontSize: 11.sp,
            //                     onPressed: () {},
            //                     text: "Order now"),
            //               ),
            //               Align(
            //                 alignment: Alignment.bottomRight,
            //                 child: Padding(
            //                   padding: EdgeInsets.symmetric(
            //                       vertical: 20.h, horizontal: 10.w),
            //                   child: Text("Opening 11pm -12am",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .displaySmall!
            //                           .copyWith(
            //                             fontSize: 11.sp,
            //                             fontWeight: FontWeight.w600,
            //                           )),
            //                 ),
            //               ),

            //             ],
            //           ),
            //         ),
            //       ),
            //       CustomImageView(
            //         width: 150.w,
            //         height: 120.h,
            //         radius: BorderRadius.circular(12),
            //         imagePath: "assets/images/joybox_picks_screen_img1.jpg",
            //       ),
            //       Positioned(
            //         left: 110.w,
            //         child: const Icon(
            //           Icons.favorite_outline_outlined,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ],
            //   ),
            // )

            SizedBox(
              height: 700.h,
              child: ListView.builder(
                itemCount: joyboxPicks.length,
                itemBuilder: (context, index) {
                  final joyboxPick = joyboxPicks[index];
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: JoyboxPickWidget(joyboxPick: joyboxPick),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

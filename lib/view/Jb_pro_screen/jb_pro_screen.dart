import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/Jb_pro_screen/widgets/jb_membership_item.dart';
import 'package:joy_box_app/view/jb_pro_screen/widgets/jb_pro_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class JbProScreen extends StatefulWidget {
  const JbProScreen({super.key});

  static const String routeName = "jb-pro-screen";

  @override
  State<JbProScreen> createState() => _JbProScreenState();
}

class _JbProScreenState extends State<JbProScreen> {
  final CarouselController _carouselController = CarouselController();

  final List<JbProItem> itemsList1 = [
    const JbProItem(
      title: "Monthly",
      subTitle: "mo.",
      duration: "monthly",
      price: 249.00,
    ),
    const JbProItem(
      title: "Yearly",
      subTitle: "yr.",
      duration: "yearly",
      price: 1699.00,
    ),
    const JbProItem(
      title: "Weekly",
      subTitle: "wk.",
      duration: "weekly",
      price: 52.00,
    ),
  ];
  final List<JbMembershipItem> itemsList2 = [
    const JbMembershipItem(
      membershipType: "Gold",
      expireDate: 2,
      price: 49.99,
      imageUrl: "assets/images/jp_pro_screen_img3.png",
    ),
    const JbMembershipItem(
      membershipType: "Platinum",
      expireDate: 6,
      price: 69.45,
      imageUrl: "assets/images/jp_pro_screen_img3.png",
    ),
    const JbMembershipItem(
      membershipType: "Diamond",
      expireDate: 10,
      price: 101.50,
      imageUrl: "assets/images/jp_pro_screen_img3.png",
    ),
  ];

  int activeIndex1 = 0;
  int activeIndex2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        text: "Joybox",
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              bottom: 1.h,
              right: -30.w,
              child: Image.asset(
                "assets/images/jp_pro_screen_img4.png",
                width: 320.w,
                height: 280.h,
                fit: BoxFit.contain,
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25.w, vertical: 30.h),
                  width: double.infinity,
                  height: 325.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Become JB Pro",
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                      SizedBox(height: 30.h),
                      CarouselSlider(
                        items: itemsList1,
                        options: CarouselOptions(
                          viewportFraction: 0.90,
                          height: 200.h,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndex1 = index;
                            });
                          },
                        ),
                        carouselController: _carouselController,
                      ),
                      SizedBox(height: 30.h),
                      Align(
                        alignment: Alignment.center,
                        child: AnimatedSmoothIndicator(
                          activeIndex: activeIndex1,
                          count: itemsList1.length,
                          effect: WormEffect(
                            dotHeight: 14.h,
                            dotWidth: 14.w,
                            activeDotColor: AppColor.red2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                Material(
                  elevation: 3.0,
                  child: SizedBox(
                    height: 200.h,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25.w, top: 20.h),
                          child: Text(
                            "JoyBox Rewards",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        SizedBox(height: 40.h),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Image.asset("assets/images/jp_pro_screen_img1.png"),
                            Positioned(
                              top: -30.h,
                              left: 35.w,
                              child: Image.asset(
                                "assets/images/jp_pro_screen_img2.png",
                                height: 112.h,
                                width: 334.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25.w),
                  width: double.infinity,
                  height: 440.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "JoyBox Membership",
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                      SizedBox(height: 30.h),
                      CarouselSlider(
                        items: itemsList2,
                        options: CarouselOptions(
                          viewportFraction: 0.95,
                          height: 315.h,
                          autoPlay: false,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndex2 = index;
                            });
                          },
                        ),
                        carouselController: _carouselController,
                      ),
                      SizedBox(height: 30.h),
                      Align(
                        alignment: Alignment.center,
                        child: AnimatedSmoothIndicator(
                          activeIndex: activeIndex2,
                          count: itemsList2.length,
                          effect: WormEffect(
                            dotHeight: 14.h,
                            dotWidth: 14.w,
                            activeDotColor: AppColor.red2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
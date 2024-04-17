import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/model/joybox_choice_widget_one_model.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/joybox_choice/widgets/joybox_choice_widget_one.dart';
import 'package:joy_box_app/view/joybox_choice/widgets/joybox_choice_widget_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../model/joybox_choice_widget_two_model.dart';

class JoyBoxChoiceScreen extends StatefulWidget {
  const JoyBoxChoiceScreen({super.key});

  static const String routeName = 'joybox-choice-screen';

  @override
  State<JoyBoxChoiceScreen> createState() => _JoyBoxChoiceScreenState();
}

class _JoyBoxChoiceScreenState extends State<JoyBoxChoiceScreen> {
  int activeIndex1 = 0;
  final _carouselController1 = CarouselController();
  int activeIndex2 = 0;
  final _carouselController2 = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        text: "JoyBox Choice",
        isCircular: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 15.h),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 340.h,
                width: double.infinity,
                color: AppColor.amber,
                child: Column(
                  children: [
                    CarouselSlider.builder(
                      itemCount: JoyBoxChoiceWidgetOneModel
                          .joyBoxChoiceItemsList.length,
                      options: CarouselOptions(
                        clipBehavior: Clip.none,
                        viewportFraction: 0.9995,
                        height: 210.h,
                        autoPlay: false,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeIndex1 = index;
                          });
                        },
                      ),
                      itemBuilder: (context, index, realIndex) {
                        final item = JoyBoxChoiceWidgetOneModel
                            .joyBoxChoiceItemsList[index];
                        return JoyBoxChoiceWidgetOne(
                          item: item,
                        );
                      },
                      carouselController: _carouselController1,
                    ),
                    SizedBox(height: 85.h),
                    AnimatedSmoothIndicator(
                      activeIndex: activeIndex1,
                      count: JoyBoxChoiceWidgetOneModel
                          .joyBoxChoiceItemsList.length,
                      effect: WormEffect(
                        dotHeight: 12.h,
                        dotWidth: 12.w,
                        activeDotColor: AppColor.red2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.h),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset("assets/images/joybox_choice_screen_img6.png"),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    width: double.infinity,
                    height: 580.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/joybox_choice_screen_img2.png",
                              width: 332.w,
                              height: 332.h,
                              fit: BoxFit.cover,
                            ),
                            Positioned.fill(
                              bottom: 40.h,
                              child: Center(
                                child: CommonElevatedButton(
                                  onPressed: () {},
                                  text: "Add to Cart",
                                  height: 6.h,
                                  width: 12.w,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/joybox_choice_screen_img3.png",
                              fit: BoxFit.cover,
                              width: 332.w,
                              height: 200.h,
                            ),
                            Positioned.fill(
                              left: 8.w,
                              bottom: -150.h,
                              child: Center(
                                child: CommonElevatedButton(
                                  buttonColor: AppColor.amber2,
                                  onPressed: () {},
                                  text: "Add to Cart",
                                  height: 10.h,
                                  width: 20.w,
                                  textColor: AppColor.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80.h),
              Stack(
                children: [
                  Image.asset(
                    "assets/images/joybox_choice_screen_img7.png",
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.w),
                    child: CarouselSlider.builder(
                      itemCount: JoyBoxChoiceWidgetTwoModel
                          .joyBoxChoiceItemsList.length,
                      options: CarouselOptions(
                        padEnds: false,
                        clipBehavior: Clip.none,
                        viewportFraction: 0.8,
                        // Adjust this value to control spacing between items
                        height: 400.h,
                        autoPlay: false,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeIndex2 = index;
                          });
                        },
                      ),
                      itemBuilder: (context, index, realIndex) {
                        final item = JoyBoxChoiceWidgetTwoModel
                            .joyBoxChoiceItemsList[index];
                        return JoyBoxChoiceWidgetTwo(
                          item: item,
                        );
                      },
                      carouselController: _carouselController2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              AnimatedSmoothIndicator(
                activeIndex: activeIndex2,
                count: JoyBoxChoiceWidgetTwoModel.joyBoxChoiceItemsList.length,
                effect: WormEffect(
                  dotHeight: 12.h,
                  dotWidth: 12.w,
                  activeDotColor: AppColor.red2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

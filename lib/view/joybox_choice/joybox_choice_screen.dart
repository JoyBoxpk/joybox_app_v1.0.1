import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/common_widgets/custom_smooth_indicator.dart';
import 'package:joy_box_app/model/joybox_choice_widget_one_model.dart';
import 'package:joy_box_app/model/joybox_choice_widget_two_model.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/joybox_choice/widgets/joybox_choice_widget_one.dart';
import 'package:joy_box_app/view/joybox_choice/widgets/joybox_choice_widget_two.dart';

class JoyBoxChoiceScreen extends StatefulWidget {
  const JoyBoxChoiceScreen({super.key});

  static const String routeName = 'joybox-choice-screen';

  @override
  State<JoyBoxChoiceScreen> createState() => _JoyBoxChoiceScreenState();
}

class _JoyBoxChoiceScreenState extends State<JoyBoxChoiceScreen> {
  int _activeIndex1 = 0;
  final _carouselController1 = CarouselController();
  int _activeIndex2 = 0;
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
          margin: EdgeInsets.only(bottom: 40.h),
          child: Column(
            children: [
              _buildFirstCarousel(),
              SizedBox(height: 30.h),
              _buildProductStack(),
              SizedBox(height: 80.h),
              _buildSecondCarousel(),
              SizedBox(height: 35.h),
              CustomSmoothIndicator(
                activeIndex: _activeIndex2,
                itemCount:
                    JoyBoxChoiceWidgetTwoModel.joyBoxChoiceItemsList.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFirstCarousel() {
    return Container(
      alignment: Alignment.center,
      height: 320.h,
      width: double.infinity,
      color: AppColor.amber,
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: JoyBoxChoiceWidgetOneModel.joyBoxChoiceItemsList.length,
            options: CarouselOptions(
              clipBehavior: Clip.none,
              viewportFraction: 0.9995,
              height: 210.h,
              autoPlay: false,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _activeIndex1 = index;
                });
              },
            ),
            itemBuilder: (context, index, realIndex) {
              final item =
                  JoyBoxChoiceWidgetOneModel.joyBoxChoiceItemsList[index];
              return JoyBoxChoiceWidgetOne(item: item);
            },
            carouselController: _carouselController1,
          ),
          SizedBox(height: 70.h),
          CustomSmoothIndicator(
            activeIndex: _activeIndex1,
            itemCount: JoyBoxChoiceWidgetOneModel.joyBoxChoiceItemsList.length,
            inactiveColor: AppColor.white,
          ),
        ],
      ),
    );
  }

  Widget _buildProductStack() {
    return SizedBox(
      height: 600.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          Align(
              alignment: Alignment.topCenter,
              child:
                  Image.asset("assets/images/joybox_choice_screen_img6.png")),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.w),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                          height: 40.h,
                          width: 95.w,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
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
                          height: 36.h,
                          width: 105.w,
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
    );
  }

  Widget _buildSecondCarousel() {
    return SizedBox(
      height: 420.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/images/joybox_choice_screen_img7.png",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: CarouselSlider.builder(
              itemCount:
                  JoyBoxChoiceWidgetTwoModel.joyBoxChoiceItemsList.length,
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
                    _activeIndex2 = index;
                  });
                },
              ),
              itemBuilder: (context, index, realIndex) {
                final item =
                    JoyBoxChoiceWidgetTwoModel.joyBoxChoiceItemsList[index];
                return JoyBoxChoiceWidgetTwo(item: item);
              },
              carouselController: _carouselController2,
            ),
          ),
        ],
      ),
    );
  }

}

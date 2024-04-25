import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_smooth_indicator.dart';
import '../../../model/joybox_section_model.dart';
import '../../routes.dart';
import '../widgets/joybox_section_widget.dart';

class JoyBoxChoiceSection extends StatefulWidget {
  const JoyBoxChoiceSection({super.key});

  @override
  State<JoyBoxChoiceSection> createState() => _JoyBoxChoiceSectionState();
}

class _JoyBoxChoiceSectionState extends State<JoyBoxChoiceSection> {
  int _activeIndex1 = 0;
  final _carouselController1 = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 477.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            "assets/images/img29_home_screen.jpeg",
            width: 476.w,
            height: 476.h,
            fit: BoxFit.contain,
          ),
          Positioned(
            left: 0,
            right: 0,
            top: -10.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "JoyBox Choice",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.black, fontSize: 22.sp)
                  ),
                  GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, RoutePaths.joyboxChoice),
                    child: Text(
                      "View all",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Colors.black,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      )
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 0.w,
            top: 42.h,
            child: CarouselSlider.builder(
              itemCount: JoyBoxSectionModel.joyBoxSectionItemsList.length,
              options: CarouselOptions(
                padEnds: false,
                clipBehavior: Clip.none,
                viewportFraction: 0.666,
                // Adjust this value to control spacing between items
                height: 300.h,
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
                final item = JoyBoxSectionModel.joyBoxSectionItemsList[index];
                return JoyBoxSectionWidget(item: item);
              },
              carouselController: _carouselController1,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 65.h,
            child: CustomSmoothIndicator(
              activeIndex: _activeIndex1,
              itemCount: JoyBoxSectionModel.joyBoxSectionItemsList.length,
            ),
          ),
        ],
      ),
    );
  }
}

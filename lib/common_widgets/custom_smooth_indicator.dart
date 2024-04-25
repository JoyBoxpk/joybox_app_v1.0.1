import 'package:flutter/material.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothIndicator extends StatelessWidget {
  final int activeIndex;
  final int itemCount;
  final double? height;
  final double? width;
  final Color? activeColor;
  final Color? inactiveColor;

  const CustomSmoothIndicator({
    super.key,
    required this.activeIndex,
    required this.itemCount,
    this.height,
    this.width,
    this.activeColor,
    this.inactiveColor,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SmoothPageIndicator(
        controller: PageController(initialPage: activeIndex),
        count: itemCount,
        effect: WormEffect(
          dotHeight: height ?? 9.0,
          dotWidth: width ?? 9.0,
          activeDotColor: activeColor ?? Colors.red,

          paintStyle: PaintingStyle.fill,
          dotColor: inactiveColor ?? AppColor.blueGrey,
        ),
      ),
    );
  }
}

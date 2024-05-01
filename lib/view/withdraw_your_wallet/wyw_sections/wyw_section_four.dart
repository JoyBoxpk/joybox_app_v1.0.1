import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/common_widgets/custom_smooth_indicator.dart';
import 'package:joy_box_app/res/color.dart';

class WYWSectionFour extends StatefulWidget {
  const WYWSectionFour({Key? key}) : super(key: key);

  @override
  _WYWSectionFourState createState() => _WYWSectionFourState();
}

class _WYWSectionFourState extends State<WYWSectionFour> {
  int activeIndex = 0;

  List<String> valuesUrl = [
    "assets/images/widthdraw_your_wallet_img2.png",
    "assets/images/widthdraw_your_wallet_img3.png",
    "assets/images/widthdraw_your_wallet_img2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Your Card",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.black)),
              CommonElevatedButton(
                height: 40.h,
                width: 100.w,
                onPressed: () {},
                text: "Add card",
              ),
            ],
          ),
          Swiper(
            itemCount: valuesUrl.length,
            layout: SwiperLayout.STACK,
            itemWidth: 300.w,
            itemHeight: 300.h,
            loop: true,
            duration: 1200,
            scrollDirection: Axis.vertical,
            onIndexChanged: (index) {
              setState(() {
                activeIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                width: 350.w,
                height: 350.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(valuesUrl[index]),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              );
            },
          ),
          SizedBox(height: 30.h),
          CustomSmoothIndicator(activeIndex: activeIndex, itemCount: valuesUrl.length, activeColor: AppColor.amber2)
        ],
      ),
    );
  }
}

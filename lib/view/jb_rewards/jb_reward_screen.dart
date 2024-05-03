import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/common_widgets/custom_smooth_indicator.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/jb_rewards/model/pick_up_order_model.dart';
import 'package:joy_box_app/view/jb_rewards/widgets/pickup_order_widget.dart';

import 'model/jb_coins_model.dart';
import 'widgets/jb_coins_widget.dart';

class JBRewardsScreen extends StatefulWidget {
  JBRewardsScreen({Key? key}) : super(key: key);

  static const String routeName = "jb-rewards-screen";

  @override
  _JBRewardsScreenState createState() => _JBRewardsScreenState();
}

class _JBRewardsScreenState extends State<JBRewardsScreen> {
  int activeIndex = 0;
  int itemCount = pickUpModelList.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        text: "JB Rewards",
        isCircular: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "JB Rewards",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  JBCoinsWidget(
                    jbCoins: JBCoinsModel(
                      imagePath: "assets/images/jb_rewards_screen_img2.png",
                      amount: 0,
                      howToEarn: "How to earn coins",
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w),
              height: 400.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 20.h),
                    child: Text(
                      "JB cards to win",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.w800,
                            fontSize: 16.sp,
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    height: 300.h,
                    child: Stack(
                      children: [
                        CarouselSlider.builder(
                          itemCount: pickUpModelList.length,
                          itemBuilder: (context, index, realIndex) {
                            final model = pickUpModelList[index];
                            return PickUpOrderWidget(
                              orderSpeed: model.orderspeed,
                              price: model.price,
                              orderCount: model.ordercount,
                            );
                          },
                          options: CarouselOptions(
                            clipBehavior: Clip.none,
                            viewportFraction: 0.7,
                            enlargeCenterPage: true,
                            enableInfiniteScroll: true,
                            animateToClosest: true,
                            autoPlay: false,
                            onPageChanged: (index, reason) {
                              setState(() {
                                activeIndex = index;
                              });
                            },
                          ),
                        ),
                        Positioned(
                          bottom: 10.h,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: CustomSmoothIndicator(
                              activeIndex: activeIndex,
                              itemCount: itemCount,
                              activeColor: AppColor.amber,
                              height: 12.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            BadgeWidget(),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColor.red1),
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -18.h,
            left: 20.w,
            child: CustomImageView(
              imagePath: "assets/images/jb_rewards_screen_img4.png",
              fit: BoxFit.contain,
              height: 80.h,
            ),
          ),
          Positioned(
            right: 30.w,
            top: 15.h,
            child: SizedBox(
              width: 170.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Badges",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.w800,
                        fontSize: 16.sp,
                        color: AppColor.white),
                  ),
                  Text(
                    "Complete stamp cards to earn badges",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.w200,
                        fontSize: 16.sp,
                        color: AppColor.white),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 10.w,
            bottom: 10.h,
            child: Text(
              "See all",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w100,
                  fontSize: 16.sp,
                  color: AppColor.white),
            ),
          )
        ],
      ),
    );
  }
}

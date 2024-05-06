import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/common_widgets/custom_smooth_indicator.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/my_referrals/model/level_count_model.dart';
import 'package:joy_box_app/view/my_referrals/model/reward_points_model.dart';
import 'package:joy_box_app/view/my_referrals/sections/section_two.dart';
import 'package:joy_box_app/view/my_referrals/widgets/reward_points_widget.dart';

import '../../common_widgets/gradient_circular_progress_indicator.dart';
import 'sections/section_one.dart';
import 'widgets/level_count_widget.dart';
import 'widgets/refer_link_widget.dart';

class MyReferralScreen extends StatefulWidget {
  MyReferralScreen({super.key});

  static const String routeName = "my-referrals-screen";

  @override
  State<MyReferralScreen> createState() => _MyReferralScreenState();
}

class _MyReferralScreenState extends State<MyReferralScreen> {
  int activeindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey4,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 20.h),
          child: Column(
            children: [
              SectionOne(),
              SizedBox(height: 70.h),
              referLinkWidget(),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GradientCircularProgressIndicator(
                      strokeWidth: 10,
                      value: 0.6,
                      backgroundColor: Colors.white,
                      gradient: LinearGradient(
                        colors: [Color(0xFFF14530), Color(0x00F14530)],
                      ),
                      height: 150.0,
                      centerWidget: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('17',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    fontSize: 24.sp,
                                    color: AppColor.black,
                                    fontWeight: FontWeight.bold,
                                  )),
                          Text('Total Referrals',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    fontSize: 16.sp,
                                    color: AppColor.black,
                                    fontWeight: FontWeight.w400,
                                  ))
                        ],
                      ),
                    ),
                    LevelCountWidget(
                      levelCounts: listcount,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                width: 431,
                height: 350,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3FDFDFDF),
                      blurRadius: 20,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reward Points',
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0,
                        letterSpacing: -1,
                      ),
                    ).paddingAll(10).paddingLeft(10),
                    SizedBox(
                      height: 20.h,
                    ),
                    CarouselSlider.builder(
                      itemCount: rewardpointslist.length,
                      itemBuilder: (context, index, realIndex) {
                        return RewardPointsWidget(
                            rewardPointsModel: rewardpointslist[index]);
                      },
                      options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeindex = index;
                          });
                        },
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.4,
                        initialPage: 0,
                        reverse: false,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomSmoothIndicator(
                        activeIndex: activeindex,
                        itemCount: rewardpointslist.length)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

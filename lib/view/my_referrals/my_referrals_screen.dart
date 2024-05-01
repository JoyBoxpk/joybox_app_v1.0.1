import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/my_referrals/model/level_count_model.dart';
import 'package:joy_box_app/view/my_referrals/sections/section_two.dart';

import '../../common_widgets/gradient_circular_progress_indicator.dart';
import 'sections/section_one.dart';
import 'widgets/level_count_widget.dart';
import 'widgets/refer_link_widget.dart';

class MyReferralScreen extends StatelessWidget {
  const MyReferralScreen({super.key});

  static const String routeName = "my-referrals-screen";

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
                  children: [
                    Container(
                      width: 130.w,
                      height: 190.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.red1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath:
                                "assets/images/my_referrals_screen_img2.svg",
                          ),
                          Text(
                            '800',
                            style: TextStyle(
                              color: Color(0xFF202126),
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          Text(
                            'Points \nPending',
                            style: TextStyle(
                              color: Color(0xFF202126),
                              fontSize: 10,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          CustomImageView(
                            height: 70.h,
                            width: 300,
                            imagePath:
                                "assets/images/my_referrals_screen_img4.svg",
                          )
                        ],
                      ),
                    ),
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

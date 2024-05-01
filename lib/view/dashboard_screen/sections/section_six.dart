import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';

import '../../../res/color.dart';

class SectionSix extends StatefulWidget {
  @override
  _SectionSixState createState() => _SectionSixState();
}

class _SectionSixState extends State<SectionSix> {
  int _selectedIndex = 0;

  void _onDirectReferralTapped() {
    setState(() {
      _selectedIndex = 0;
    });
  }

  void _onIndirectReferralTapped() {
    setState(() {
      _selectedIndex = 1;
    });
  }

  void _onPendingApprovalTapped() {
    setState(() {
      _selectedIndex = 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: _onDirectReferralTapped,
                child: Text('Direct Referral',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.4,
                          color: _selectedIndex == 0
                              ? AppColor.red1
                              : AppColor.black,
                        )),
              ),
              SizedBox(width: 30.w),
              GestureDetector(
                onTap: _onIndirectReferralTapped,
                child: Text('Indirect Referral',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.4,
                          color: _selectedIndex == 1
                              ? AppColor.red1
                              : AppColor.black,
                        )),
              ),
              SizedBox(width: 30.w),
              GestureDetector(
                onTap: _onPendingApprovalTapped,
                child: Text('Pending Approval',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.4,
                          color: _selectedIndex == 2
                              ? AppColor.red1
                              : AppColor.black,
                        )),
              ),
            ],
          ).paddingLeft(25.w),
        ),
        SizedBox(height: 30.h),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 25.w),
          height: 200.h,
          // Adjust height as needed
          color: _selectedIndex == 0
              ? Colors.red // Change color based on selected tab
              : _selectedIndex == 1
                  ? Colors.blue
                  : Colors.green,
          child: Row(
            children: [
              Container(
                height: 150.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: AppColor.amber1,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset(
                  "assets/images/dashboard_screen_img2.png",
                  height: 90.h,
                  width: 90.w,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

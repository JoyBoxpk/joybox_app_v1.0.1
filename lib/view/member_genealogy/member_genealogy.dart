import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/common_dropdown_button.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/common_widgets/custom_divider.dart';
import 'package:joy_box_app/common_widgets/custom_dropdown.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';

class MemberGenealogy extends StatelessWidget {
  static const String routeName = 'Member-Genealogy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        text: "Membership",
        isCircular: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: SizedBox(
                width: 225,
                child: Text(
                  'Member Genealogy',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 20.sp,
                        color: AppColor.red1,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: CustomDivider(
                height: 1.h,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40.h,
                    padding: EdgeInsets.all(8.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColor.blue)),
                    child: FittedBox(
                      fit: BoxFit.none,
                      child: Text(
                        'Member',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            color: AppColor.blue),
                      ),
                    ),
                  ),
                  Container(
                    child: CustomDropdown(
                        hintText: "Gold Retailer Club", items: []),
                  ),
                  Container(
                    child: CustomDropdown(hintText: "All", items: []),
                  )
                ],
              ),
            ),
            Center(
              child: CommonElevatedButton(
                  buttonColor: AppColor.amber,
                  textColor: AppColor.black,
                  height: 40.h,
                  width: 250.w,
                  onPressed: () {},
                  text: "Load"),
            ),
            SizedBox(
              height: 40.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: CustomImageView(
                fit: BoxFit.cover,
                imagePath: "assets/images/member_genealogy_img2.svg",
              ),
            )
          ],
        ),
      ),
    );
  }
}

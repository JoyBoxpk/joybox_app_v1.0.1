import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';

import '../../../common_widgets/common_appbar_two.dart';
import '../../../res/color.dart';

class SectionOne extends StatelessWidget {
  const SectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285.h,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 16.h),
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: 208.h,
            color: AppColor.red1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("20% off discount",
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontSize: 22.sp,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w500,
                                )),
                    SizedBox(height: 6.h),
                    Text(
                        "Lorem ipsum dolor sit\namet, consectetur\nadipiscing elit, sed do\neiusmod tempor\nincididunt ut",
                        maxLines: 5,
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontSize: 14.sp,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w300,
                                )),
                  ],
                ),
                Image.asset(
                  "assets/images/dashboard_screen_img1.png",
                  height: 138.h,
                  width: 138.w,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: CommonAppBarTwo(
              toolbarHeight: 100.h,
              text: "My Referrals",
              isCircular: true,
            ),
          ),
          Positioned(
            bottom: -25.h,
            right: 0,
            left: 0,
            child: Material(
              borderRadius: BorderRadius.circular(6.0),
              elevation: 3.0,
              child: TextField(
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w300),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  hintText: "search . . .",
                  prefixIcon: Icon(Icons.search),
                  suffixIconColor: AppColor.red1,
                ),
              ),
            ).paddingHorizontal(50.w),
          ),
        ],
      ),
    );
  }
}

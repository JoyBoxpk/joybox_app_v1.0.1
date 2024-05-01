import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';

import '../../../common_widgets/common_elevated_button.dart';
import '../../../res/color.dart';

class SectionFive extends StatelessWidget {
  const SectionFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      color: AppColor.red1,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "20% off discount",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(
                  color: AppColor.white,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                "Lorem ipsum dolor sit amet\n, consectetur adipiscing elit, sed do\neiusmod tempor incididunt ut\nlabore et dolore magna aliqua. Ut\nenim ad minim veniam, quis\nnostrud exercitation",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(
                  color: AppColor.white,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w300,
                ),
                maxLines: 6,
              ),
              SizedBox(height: 15.h),
              CommonElevatedButton(
                textColor: AppColor.black,
                borderRadius: 10.0,
                onPressed: () {},
                text: "Claim Now",
                height: 50.h,
                width: 130.w,
                buttonColor: AppColor.amber1,
              ),
            ],
          ),
          Image.asset(
            "assets/images/dashboard_screen_img1.png",
            height: 135.h,
            width: 135.w,
            fit: BoxFit.contain,
          )
        ],
      ).paddingHorizontal(16.w),
    );
  }
}

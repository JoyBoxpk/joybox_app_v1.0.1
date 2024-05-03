import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 130.h,
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

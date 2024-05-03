import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/view/memberships/memberships_models/model_one.dart';

import '../../../common_widgets/custom_rating_bar.dart';
import '../../../res/color.dart';

class WidgetOne extends StatelessWidget {
  const WidgetOne({
    super.key,
    required this.item,
    required this.index,
  });

  final ModelOne item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          item.imageUrl,
          height: 370.h,
          width: 370.w,
          fit: BoxFit.contain,
        ),
        Positioned(
          top: 50.h,
          right: 0,
          left: 0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "PKR ${item.actualPrice.toString()}",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.lineThrough,
                      color: AppColor.black,
                    ),
              ),
              SizedBox(height: 4.h),
              Text(
                "PKR ${item.discountPrice.toString()}",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(height: 4.h),
              CustomRatingBar(
                initialRating: item.rating.toDouble(),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          top: 142.h,
          child: Text(
            textAlign: TextAlign.center,
            item.passName,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: index == 1 ? AppColor.black : AppColor.white,
                ),
          ),
        ),
        Positioned.fill(
          top: 135.h,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.check_circle_outlined,
                      size: 16.sp,
                      color: index == 1 ? AppColor.black : AppColor.white,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      item.infoOne,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: index == 1 ? AppColor.black : AppColor.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
                SizedBox(height: 6.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.check_circle_outlined,
                      size: 16.sp,
                      color: index == 1 ? AppColor.black : AppColor.white,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      item.infoTwo,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: index == 1 ? AppColor.black : AppColor.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
                SizedBox(height: 6.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.check_circle_outlined,
                      size: 16.sp,
                      color: index == 1 ? AppColor.black : AppColor.white,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      item.infoThree,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: index == 1 ? AppColor.black : AppColor.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
                SizedBox(height: 6.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.check_circle_outlined,
                      size: 16.sp,
                      color: index == 1 ? AppColor.black : AppColor.white,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      item.infoFour,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: index == 1 ? AppColor.black : AppColor.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 70.w,
          bottom: -5.h,
          child: InkWell(
            onTap: () {},
            child: Image.asset(
              "assets/images/memberships_screen_img2.png",
              fit: BoxFit.contain,
              height: 90.h,
              width: 90.w,
            ),
          ),
        ),
      ],
    );
  }
}

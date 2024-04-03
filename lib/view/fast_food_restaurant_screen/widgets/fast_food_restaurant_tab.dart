import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../res/color.dart';
import '../model/fast_food_rest_tab_model.dart';

class FastFoodRestaurantTab extends StatelessWidget {
  const FastFoodRestaurantTab({
    super.key,
    required this.tab,
    required this.index,
  });

  final FastFoodRestaurantTabModel tab;
  final int index;

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            alignment: Alignment.center,
            width: 88.w,
            height: 45.h,
            decoration: BoxDecoration(
              color: AppColor.amber,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              tab.title,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: AppColor.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

        ],
      );
    } else {
      return Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: 88.w,
            height: 45.h,
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              tab.title,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: AppColor.grey2,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      );
    }
  }
}
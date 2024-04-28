import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/view/fast_food_restaurant_screen/model/slider_party_item_model.dart';

class SlidersPartyItemWidget extends StatelessWidget {
  final SlidersPartyItemModel item;

  const SlidersPartyItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 170.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(height: 10.h),
              Text(
                maxLines: 2,
                item.subTitle,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              SizedBox(height: 8.h),
              Text(
                item.description,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              SizedBox(height: 25.h),
              Text(
                item.price,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
        Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  item.image,
                  width: 135.w,
                  height: 142.h,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: -12.h,
                  right: 0.w,
                  child: Image.asset(
                    "assets/images/img19_fast_food_restaurant.png",
                    width: 40.w,
                    height: 40.h,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  bottom: 10.h,
                  right: 3.w,
                  child: Image.asset(
                    "assets/images/img20_fast_food_restaurant.png",
                    width: 40.w,
                    height: 40.h,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

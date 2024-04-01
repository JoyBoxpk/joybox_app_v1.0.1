import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../model/traditional_restaurants_item_model.dart';

class TraditionalItemWidget extends StatelessWidget {
  const TraditionalItemWidget({super.key, required this.traditionalItem});

  final TraditionalRestaurantsItemModel traditionalItem;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Material(
          elevation: 2.0,
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            padding: const EdgeInsets.only(bottom: 8.0),
            alignment: Alignment.bottomCenter,
            width: 120.w,
            height: 88.h,
            decoration: BoxDecoration(
                color: traditionalItem.color,
                borderRadius: BorderRadius.circular(8.0)),
            child: Text(
              traditionalItem.title,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 12.sp),
            ),
          ),
        ),
        Positioned(
          top: -38,
          left: 2,
          child: Center(
            child: Image.asset(traditionalItem.imagePath,
                width: 115.w, height: 100.h, fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}

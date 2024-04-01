import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/model/custom_item_model.dart';
import 'package:joy_box_app/res/color.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.itemModel,
    required this.index,
  });

  final CustomItemModel itemModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return buildStack(context);
  }

  Widget buildStack(BuildContext context) {
    if (index == 0) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 8.h),
            alignment: Alignment.bottomCenter,
            width: 95.w,
            height: 95.h,
            decoration: BoxDecoration(
              color: AppColor.red2,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              itemModel.text,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: AppColor.grey1,
                fontSize: 14.sp,
              ),
            ),
          ),
          Positioned(
            top: -28,
            child: Image.asset(
              itemModel.imagePath,
              width: 94.w,
              height: 84.h,
            ),
          ),
        ],
      );
    } else {
      return Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: 95.w,
            height: 95.h,
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    itemModel.imagePath,
                    width: 82.w,
                    height: 72.h,
                  ),
                  Text(
                    itemModel.text,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: AppColor.grey1,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }
  }
}

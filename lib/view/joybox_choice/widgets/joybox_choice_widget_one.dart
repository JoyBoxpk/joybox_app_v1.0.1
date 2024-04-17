import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/model/joybox_choice_widget_one_model.dart';

import '../../../common_widgets/common_elevated_button.dart';
import '../../../res/color.dart';

class JoyBoxChoiceWidgetOne extends StatelessWidget {
  const JoyBoxChoiceWidgetOne({
    super.key,
    required this.item,
  });

  final JoyBoxChoiceWidgetOneModel item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 210.w,
      height: 250.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.only(top: 20.h),
            // alignment: Alignment.center,
            width: 200.w,
            height: 200.h,
            decoration: const BoxDecoration(
              color: AppColor.white,
              shape: BoxShape.circle,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  item.dealName,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Burger+Fries+Drink",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Rs.${item.price.toString()}",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.h),
                CommonElevatedButton(
                  height: 38.h,
                  width: 105.w,
                  onPressed: () {},
                  text: "Add to Cart",
                ),
              ],
            ),
          ),
          Positioned(
            right: -18.w,
            bottom: -40.h,
            child: Image.asset(
              item.imagePath,
              width: 270.w,
              height: 170.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

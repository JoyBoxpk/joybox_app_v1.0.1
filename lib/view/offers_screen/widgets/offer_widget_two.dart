import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/model/offer_widget_two_model.dart';

import '../../../common_widgets/common_elevated_button.dart';
import '../../../res/color.dart';

class OfferWidgetTwo extends StatelessWidget {
  const OfferWidgetTwo({
    super.key,
    required this.item,
  });

  final OfferWidgetTwoModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      width: 350.w,
      height: 220.h,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              // padding: const EdgeInsets.all(8.0),
              color: AppColor.yellow,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    item.imageOnePath,
                    width: 90.w,
                    height: 60.h,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 8.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        item.restaurantName,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "SMCHS",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Rs.${item.price.toString()}",
                    style:
                    Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 15.h),
                  CommonElevatedButton(
                    onPressed: () {},
                    text: "Add to Cart",
                    height: 50.h,
                    width: 120.w,
                    fontSize: 17.sp,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  clipBehavior: Clip.none,
                  color: AppColor.red1,
                ),
                Positioned(
                  top: -30.h,
                  right: -50.w,
                  child: Image.asset(
                    item.imageTwoPath,
                    width: 280.w,
                    height: 280.h,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

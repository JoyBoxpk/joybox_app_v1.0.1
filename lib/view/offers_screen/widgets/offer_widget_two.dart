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
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: 370.w,
          height: 220.h,
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: AppColor.yellow,
                  child: Column(
                    children: [
                      Image.asset(
                        item.imageOnePath,
                        width: 100.w,
                        height: 70.h,
                        fit: BoxFit.contain,
                      ),
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
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                      SizedBox(height: 5.h),
                      CommonElevatedButton(
                        onPressed: () {},
                        text: "Add to Cart",
                        height: 50.h,
                        width: 130.w,
                        buttonTextStyle: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: AppColor.red1,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: -50.w,
          child: Image.asset(
            item.imageTwoPath,
            width: 300.w,
            height: 210.h,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

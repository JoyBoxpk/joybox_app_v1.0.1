import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';

class PickUpOrderWidget extends StatelessWidget {
  final String orderSpeed;
  final String price;
  final String orderCount;

  const PickUpOrderWidget({
    required this.orderSpeed,
    required this.price,
    required this.orderCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Shadow color
            spreadRadius: 5, // Spread radius
            blurRadius: 7, // Blur radius
            offset: Offset(0, 3), // Offset from the top left corner
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomImageView(
            imagePath: "assets/images/jb_rewards_screen_img3.svg",
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.only(top: 20.w, left: 10.h),
            width: 150.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pick-up Orders ($orderSpeed)",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                      ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.w100,
                          fontSize: 14.sp,
                        ),
                    children: [
                      TextSpan(
                        text: 'Earn ',
                      ),
                      TextSpan(
                        text: 'Rs$price ',
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                ),
                      ),
                      TextSpan(
                        text: 'voucher on every 5 orders',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              width: 200.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "$orderCount / 10",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                        ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Order Placed",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.w100,
                          fontSize: 14.sp,
                        ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

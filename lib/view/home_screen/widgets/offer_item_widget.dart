import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/model/offer_item_model.dart';

import '../../../res/color.dart';

class OfferItemWidget extends StatelessWidget {
  const OfferItemWidget({
    super.key,
    required this.offerItem,
  });

  final OfferItemModel offerItem;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 340.w,
          height: 160.h,
          decoration: BoxDecoration(
            color: offerItem.color,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        Positioned(
          top: 12,
          left: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                offerItem.title,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 20.sp,
                      color: AppColor.white,
                    ),
              ),
              SizedBox(height: 2.h),
              Text(
                offerItem.subTitle,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 20.sp,
                      color: AppColor.white,
                    ),
              ),
              SizedBox(height: 2.h),
              Text(
                offerItem.offerLabel,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 13.sp,
                      color: AppColor.white,
                    ),
              ),
              SizedBox(height: 15.h),
              SizedBox(
                height: 42.h,
                width: 145.w,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 20.sp,
                      color: AppColor.red3,
                    ),
                    label: Text(
                      "Grab Offer",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.red3,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: -50,
          top: -20,
          child: Image.asset(
            offerItem.imageUrl,
            width: 230.w,
            height: 230.h,
          ),
        ),
      ],
    );
  }
}

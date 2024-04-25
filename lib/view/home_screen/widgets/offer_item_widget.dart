import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_icon_button.dart';
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
          width: 350.w,
          height: 168.h,
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
              SizedBox(height: 15.h),
              Text(
                offerItem.offerLabel,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 13.sp,
                      color: AppColor.white,
                    ),
              ),
              SizedBox(height: 15.h),
              CommonIconButton(
                iconColor: AppColor.red3,
                textColor: AppColor.red3,
                buttonColor: AppColor.white,
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                onPressed: (){},
              ),
            ],
          ),
        ),
        Positioned(
          right: -16.w,
          top: -20.h,
          child: Image.asset(
            offerItem.imageUrl,
            width: 222.w,
            height: 222.h,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

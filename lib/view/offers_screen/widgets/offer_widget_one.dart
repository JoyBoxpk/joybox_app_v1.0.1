import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/model/offer_widget_one_model.dart';
import '../../../common_widgets/common_elevated_button.dart';
import '../../../res/color.dart';

class OfferWidgetOne extends StatelessWidget {
  const OfferWidgetOne({
    super.key,
    required this.item,
  });

  final OfferWidgetOneModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 6.h),
      height: 320.h,
      width: 230.w,
      decoration: BoxDecoration(
        color: AppColor.yellow,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            item.imageOnePath,
            width: 80.w,
            height: 50.h,
            fit: BoxFit.contain,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                item.restaurantName,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Text(
                "SMCHS",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ],
          ),
          Image.asset(
            item.imageTwoPath,
            width: 220.w,
            height: 160.h,
            fit: BoxFit.contain,
          ),
          Text(
            "Rs.${item.price.toString()}",
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 5.h),
          CommonElevatedButton(
            onPressed: () {},
            text: "Add to Cart",
            height: 50.h,
            width: 120.w,
            fontSize: 17.sp,
          ),
        ],
      ),
    );
  }
}

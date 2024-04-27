import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';

import '../../../res/color.dart';
import '../model/your_favourite_item_widget_model.dart';

class YourFavouriteItemWidget extends StatelessWidget {
  const YourFavouriteItemWidget({
    super.key,
    required this.item,
  });

  final YourFavouriteItemWidgetModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: 150.w,
              height: 120.h,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/restaurants_near_you_img1.png",
                      // fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: -3.h,
                    right: -3.w,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        size: 18.sp,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: CommonElevatedButton(
                          width: 80.w,
                          height: 34.h,
                          buttonColor: AppColor.red2.withOpacity(0.7),
                          fontSize: 10.sp,
                          onPressed: () {},
                          text: "Order now"),
                    ),
                  ),
                  Positioned(
                    bottom: 16.h,
                    right: 0.w,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(5.0),
                      height: 25.h,
                      width: 35.w,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            bottomLeft: Radius.circular(5.0),
                          ),
                          color: AppColor.white),
                      child: SvgPicture.asset(
                        "assets/images/img_settings_black_900.svg",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            height: 35.h,
            width: 120.w,
            decoration:  BoxDecoration(
                color: Colors.black87.withOpacity(0.6),
                borderRadius: BorderRadius.all(Radius.circular(4.0))),
            child: Text(
              item.restaurantName,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 10.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          SizedBox(height: 6.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: "assets/images/fav_user_restaurent_img3.svg",
                fit: BoxFit.cover,
              ),
              Text("Opening 11pm -12am",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                      )),
              SizedBox(height: 2.h),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "${item.restaurantRating}\t",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColor.black,
                          ),
                    ),

                    TextSpan(
                      text: "(3000+)",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.normal,
                            color: AppColor.black,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ).paddingLeft(12.w),
        ],
      ),
    );
  }
}

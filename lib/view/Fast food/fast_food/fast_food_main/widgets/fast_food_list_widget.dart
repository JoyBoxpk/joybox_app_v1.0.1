import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/view/Fast%20food/fast_food/fast_food_main/model/tab_list_model.dart';

import '../../../../../common_widgets/common_elevated_button.dart';
import '../../../../../common_widgets/custom_image_view.dart';
import '../../../../../core/utils/image_constant.dart';
import '../../../../../res/color.dart';
import '../../../inner_fast_food_res_screen/inner_fastfood_res.dart';

class FastFoodListWidget extends StatelessWidget {
  final TabListModel tabListItem;

  const FastFoodListWidget({
    super.key,
    required this.tabListItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 295.h,
      width: 400.w,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                tabListItem.imagePath,
                height: 250.h,
                fit: BoxFit.contain,
              ),
              Positioned(
                left: 0.w,
                top: -10.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10.w),
                      alignment: Alignment.centerLeft,
                      width: 102.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: AppColor.amber,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6.0),
                          bottomRight: Radius.circular(6.0),
                        ),
                      ),
                      child: Text(
                        tabListItem.title1,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 16.sp),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    if (tabListItem.discount !=
                        null) // Check for discount nullability
                      Container(
                        padding: EdgeInsets.only(left: 10.w),
                        alignment: Alignment.centerLeft,
                        width: 75.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: AppColor.amber,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6.0),
                            bottomRight: Radius.circular(6.0),
                          ),
                        ),
                        child: Text(
                          "${tabListItem.discount}% off",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(fontSize: 14.sp),
                        ),
                      ),
                    SizedBox(height: 4.h),
                    if (tabListItem.welcomeGift !=
                        null) // Check for welcomeGift nullability
                      Container(
                        padding: EdgeInsets.only(left: 10.w),
                        alignment: Alignment.centerLeft,
                        width: 205.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                          color: AppColor.amber,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6.0),
                            bottomRight: Radius.circular(6.0),
                          ),
                        ),
                        child: Text(
                          tabListItem.welcomeGift!,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(fontSize: 15.sp),
                        ),
                      ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20.h,
                right: 0.w,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(7.0),
                    height: 35.h,
                    width: 52.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6.0),
                          bottomLeft: Radius.circular(6.0),
                        ),
                        color: AppColor.white),
                    child: SvgPicture.asset(
                      "assets/images/img_settings_black_900.svg",
                      height: 5.h,
                      width: 10.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 2.w,
                top: 2.h,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: AppColor.white,
                    size: 30.sp,
                  ),
                ),
              ),
              Positioned(
                right: 50.w,
                left: 50.w,
                bottom: 20.h,
                child: Text(
                  tabListItem.title2,
                  textAlign: TextAlign.center, // Added textAlign property
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: Colors.white, fontSize: 17.sp),
                ),
              ),
              Positioned.fill(
                top: 20.h,
                child: Center(
                  child: CommonElevatedButton(
                    buttonColor: AppColor.red2.withOpacity(0.7),
                    height: 60.h,
                    width: 170.w,
                    onPressed: () {
                      context.goNamed(InnerFastFoodResScreen.routeName);
                    },
                    text: "Order now",
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              Text(
                maxLines: 1,
                tabListItem.subTitle,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const Spacer(),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: AppColor.amber,
                    size: 18.sp,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "3.9 ",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColor.black,
                              ),
                        ),
                        TextSpan(
                          text: "(3000+)",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.normal,
                                color: AppColor.black,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSettingsAmber400,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text("Free Delivery",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColor.red2,
                          ))
                ],
              ),
              Text("Opening 12pm - 2am",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ))
            ],
          ),
        ],
      ),
    );
  }
}

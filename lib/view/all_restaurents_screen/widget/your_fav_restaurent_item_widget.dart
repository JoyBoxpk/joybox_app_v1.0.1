import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/view/resturent_near_you_screen/model/near_you_model.dart';

import '../../../res/color.dart';

class UserFavRestuarentListWidget extends StatelessWidget {
  const UserFavRestuarentListWidget({
    super.key,
    required this.item,
  });

  final NearRestaurentListModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 160.w,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/restaurants_near_you_img1.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 50.w,
                  // top: -18.h,
                  bottom: -40.h,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      size: 18.sp,
                      color: Colors.red,
                    ),
                  ),
                ),
                Positioned(
                  top: 60.h,
                  left: 40.w,
                  right: 40.w,
                  child: CommonElevatedButton(
                      width: 20.w,
                      height: 30.h,
                      buttonColor: AppColor.red2.withOpacity(0.7),
                      fontSize: 10.sp,
                      onPressed: () {},
                      text: "Order now"),
                ),
                Positioned(
                  bottom: 18.h,
                  right: -1.w,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      height: 25.h,
                      width: 32.w,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6.0),
                            bottomLeft: Radius.circular(6.0),
                          ),
                          color: AppColor.white),
                      child: SvgPicture.asset(
                        "assets/images/img_settings_black_900.svg",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            width: 100.w,
            height: 42.h,
            decoration: const BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.all(Radius.circular(6.0))),
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
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w500,
                      )),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "3.9 ",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 11.sp,
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
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common_widgets/common_elevated_button.dart';
import '../../../common_widgets/custom_image_view.dart';
import '../../../common_widgets/custom_rating_bar.dart';
import '../../../res/color.dart';
import '../model/top_restaurent.dart';

class TopRestaurantsItemWidget extends StatelessWidget {
  const TopRestaurantsItemWidget({
    super.key,
    required this.item,
  });

  final TopRestaurantWidgetModel item;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Material(
              borderRadius: BorderRadius.circular(10.h),
              elevation: 20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.h),
                child: CustomImageView(
                  width: 170.w,
                  height: 195.h,
                  imagePath: item.imagePath,
                ),
              ),
            ),
            Positioned(
              top: -8.h,
              child: Container(
                height: 30.h,
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(left: 8.w, right: 18.w, bottom: 3.h),
                decoration: BoxDecoration(
                  color: AppColor.amber,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(4),
                      bottomRight: Radius.circular(4)),
                ),
                child: Text(
                  item.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 13.sp,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 30.h,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8.w),
                width: 130.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.description,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 10.sp,
                      ),
                    ),
                    CommonRatingBar(
                      itemCount: 5,
                      color: AppColor.amber,
                      initialRating: item.rating.toDouble(),
                      unselectedColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -6.h,
              right: -8.w,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_outline_outlined,
                  size: 18.sp,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned.fill(
              top: 50.h,
              child: Center(
                child: CommonElevatedButton(
                  borderRadius: 10.0,
                  width: 120.w,
                  height: 35.h,
                  buttonColor: AppColor.red2.withOpacity(0.8),
                  fontSize: 12.sp,
                  onPressed: () {},
                  text: "Order now",
                ),
              ),
            ),
            Positioned(
              bottom: 6.h,
              right: 8.w,
              child: Image.asset(
                "assets/images/popular_restaurants_screen_img2.png",
                height: 11.h,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0.h,
              left: 0.w,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  height: 28.h,
                  width: 55.w,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                    ),
                    color: AppColor.white,
                  ),
                  child: SvgPicture.asset(
                    "assets/images/img_settings_black_900.svg",
                    height: 20.h,
                    width: 10.w,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Text(
          item.openingHours,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              ),
        ),
      ],
    );
  }
}

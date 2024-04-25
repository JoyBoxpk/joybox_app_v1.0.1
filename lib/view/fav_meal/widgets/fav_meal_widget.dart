import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';

class FavoriteMealWidget extends StatelessWidget {
  final String name;
  final String imagePath;
  final String price;
  final String hotelImg;

  const FavoriteMealWidget({
    required this.name,
    required this.imagePath,
    required this.price,
    required this.hotelImg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.h,
      width: 240.w,
      decoration: BoxDecoration(
        color: AppColor.amber1,
        borderRadius: BorderRadius.circular(160.w),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            child: Align(
              alignment: Alignment.topCenter,
              child: CustomImageView(
                imagePath: hotelImg,
              ),
            ),
          ),
          Positioned(
            top: 40.h,
            left: 100.w,
            child: CustomImageView(
              fit: BoxFit.cover,
              imagePath: imagePath,
            ),
          ),
          Positioned(
            bottom: 0.w,
            left: 20.w,
            child: Container(
              width: 50.w,
              height: 50.h,
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(color: AppColor.red1),
              child: CustomImageView(
                imagePath: "assets/images/fav_meal_img7.svg",
              ),
            ),
          ),
          Positioned(
            top: 60,
            bottom: 0,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
                      ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  price,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
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

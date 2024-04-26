import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common_widgets/common_elevated_button.dart';
import '../../../common_widgets/custom_image_view.dart';
import '../../../common_widgets/custom_rating_bar.dart';
import '../../../res/color.dart';
import '../model/tradtional_restaurent_widget_model.dart';

class TraditionalRestaurantsItemWidget extends StatelessWidget {
  const TraditionalRestaurantsItemWidget({
    super.key,
    required this.item,
  });

  final TraditionalRestaurantsWidgetModel item;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CustomImageView(
                  width: 350.w,
                  height: 200.h,
                  imagePath: item.imagePath,
                ),
              ),
            ),
            Positioned(
              top: -10.h,
              child: Container(
                height: 32.h,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                decoration: BoxDecoration(
                  color: AppColor.amber,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(4.0),
                      bottomRight: Radius.circular(4.0)),
                ),
                child: Text(
                  item.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 28.h,
              left: -2.w,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: 130.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.description,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(height: 3.h),
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
              right: -4.w,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_outline_outlined,
                  size: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned.fill(
              top: 80.h,
              child: Center(
                child: CommonElevatedButton(
                    borderRadius: 10.0,
                    buttonColor: AppColor.red2.withOpacity(0.6),
                    fontSize: 12.sp,
                    height: 32.h,
                    width: 120.w,
                    onPressed: () {},
                    text: "Order now"),
              ),
            ),
            Positioned(
              bottom: 6.h,
              right: 10.w,
              child: Image.asset(
                "assets/images/popular_restaurants_screen_img2.png",
                height: 12.h,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0.h,
              left: 0.w,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  height: 28.h,
                  width: 52.w,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(6.0),
                      bottomRight: Radius.circular(6.0),
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
        SizedBox(height: 6.h),
        Text(
          item.openingHours,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: 9.sp,
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}

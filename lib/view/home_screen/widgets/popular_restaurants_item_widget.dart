import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';
import '../../../common_widgets/common_elevated_button.dart';
import '../../../common_widgets/custom_image_view.dart';
import '../../../common_widgets/custom_rating_bar.dart';
import '../../../res/color.dart';
import '../../all_restaurents_screen/model/popular_restaurent_widget_model.dart';

class PopularRestaurantsItemWidget extends StatelessWidget {
  const PopularRestaurantsItemWidget({
    super.key,
    required this.item,
  });

  final PopularRestaurantWidgetModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Material(
              elevation: 25,
              borderRadius: BorderRadius.circular(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CustomImageView(
                  width: 165.w,
                  height: 280.h,
                  fit: BoxFit.cover,
                  imagePath: item.imagePath,
                ),
              ),
            ),
            Positioned(
              top: -15.h,
              child: Container(
                height: 30.h,
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(right: 26.w, left: 12.w, bottom: 1.h),
                decoration: BoxDecoration(
                  color: AppColor.amber,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(4.0),
                      bottomRight: Radius.circular(4.0)),
                ),
                child: Text(
                  item.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 14.sp,
                  ),
                ),)
              // ).applyPadding(left: 12.w, right: 28.w, bottom: 5.h),
            ),
            Positioned(
              top: 30.h,
              left: 10.w,
              child: Container(
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
                    CustomRatingBar(
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
              top: -7.h,
              right: -7.w,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_outline_outlined,
                  size: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              left: 18.w,
              bottom: 50.h,
              child: CommonElevatedButton(
                borderRadius: 12.0,
                width: 128.w,
                height: 35.h,
                buttonColor: AppColor.red2.withOpacity(0.8),
                fontSize: 12.sp,
                onPressed: () {},
                text: "Order now",
              ),
            ),
            Positioned(
              bottom: 8.h,
              right: 14.w,
              child: Image.asset(
                "assets/images/popular_restaurants_screen_img2.png",
                height: 12.h,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0.h,
              left: 0.w,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(4.0),
                height: 28.h,
                width: 55.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4.0),
                    bottomRight: Radius.circular(4.0),
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
          ],
        ),
        SizedBox(height: 7.h),
        Text(
          item.openingHours,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
              ),
        )
      ],
    );
  }
}

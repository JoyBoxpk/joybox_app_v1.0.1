import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/model/your_favourite_meal_item_model.dart';

import '../../../res/color.dart';

class YourFavouriteMealItem extends StatelessWidget {
  const YourFavouriteMealItem({
    super.key,
    required this.itemModel,
  });

  final YourFavouriteMealItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          "assets/images/img23_home_screen.png",
          width: 200.w,
          height: 300.h,
        ),
        Positioned(
          left: 10.w,
          bottom: 35,
          child: Image.asset(
            itemModel.imageUrl,
            width: 145.w,
            height: 145.h,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          top: 18,
          left: 55.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemModel.title,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Text(itemModel.subTitle, style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: 15.sp,
                fontWeight: FontWeight.w300,
              )),
              SizedBox(height: 5.h),
              RatingBar.builder(
                itemSize: 16.sp,
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 1.w),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: AppColor.red2,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 2.h,
          right: 20.w,
          child: Row(
            children: [
              Text(
                "Rs.599",
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(width: 14.w),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: AppColor.red2,
                  size: 24.sp,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

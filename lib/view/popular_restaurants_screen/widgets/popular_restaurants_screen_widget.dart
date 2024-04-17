import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joy_box_app/view/popular_restaurants_screen/model/popular_restaurants_screen_model.dart';

import '../../../common_widgets/common_elevated_button.dart';
import '../../../res/color.dart';

class PopularRestaurantsScreenWidget extends StatelessWidget {
  const PopularRestaurantsScreenWidget({
    super.key,
    required this.item,
  });

  final PopularRestaurantsScreenModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25.h),
      height: 300.h,
      width: 370.w,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                "assets/images/popular_restaurants_screen_img1.png",
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 1.w,
                top: -18.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 8.w),
                      width: 200.w,
                      height: 40.h,
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6.0),
                          bottomRight: Radius.circular(6.0),
                        ),
                      ),
                      child: Text(item.restaurantName,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                              )),
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 8.w),
                      width: 220.w,
                      height: 34.h,
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6.0),
                          bottomRight: Radius.circular(6.0),
                        ),
                      ),
                      child: Text("Welcome gift: free delivery",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              )),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_outline_outlined,
                    size: 30.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned.fill(
                top: 60.h,
                child: Center(
                  child: CommonElevatedButton(
                    height: 60.h,
                    width: 190.w,
                    onPressed: () {},
                    text: "Order Now",
                    color: AppColor.red1.withOpacity(0.8),
                  ),
                ),
              ),
              Positioned(
                  bottom: 20.h,
                  left: 10.w,
                  child: Image.asset(
                    "assets/images/popular_restaurants_screen_img2.png",
                    height: 15.h,
                    fit: BoxFit.cover,
                  )),
              Positioned(
                bottom: 18.h,
                right: -1.w,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 35.h,
                    width: 52.w,
                    decoration: const BoxDecoration(
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
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.restaurantName,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          )),
                  SizedBox(height: 2.h),
                  RatingBar.builder(
                    itemSize: 15.sp,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.w),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
              Text("Opening 11pm -12am",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      )),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/user_fav_restaurent/model/restaurant_model.dart';

class RestaurantCard extends StatelessWidget {
  final RestaurantModel restaurant;

  const RestaurantCard({Key? key, required this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CustomImageView(
                  imagePath: restaurant.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: -8.h,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColor.amber,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    restaurant.name,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontSize: 14.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                top: 60.h,
                left: 90.w,
                right: 100.w,
                child: SizedBox(
                  height: 55.h,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.h))),
                      backgroundColor: MaterialStatePropertyAll(
                          AppColor.red1.withOpacity(0.7)),
                    ),
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        "Order now",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 16.sp, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              
              Positioned(
                bottom: 12.h,
                right: -1.w,
                child: CustomImageView(
                  imagePath: "assets/images/fav_user_restaurent_img2.svg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: "assets/images/fav_user_restaurent_img3.svg",
                fit: BoxFit.cover,
              ),
              Text(
                restaurant.openingHours,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
              )
            ],
          )
       
        ],
      ),
    );
  }
}

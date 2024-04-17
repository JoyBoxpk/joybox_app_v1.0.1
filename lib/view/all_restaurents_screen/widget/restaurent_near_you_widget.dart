import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/view/resturent_near_you_screen/model/near_you_model.dart';

import '../../../res/color.dart';

class RestauentNearUserHotelListWidget extends StatelessWidget {
  const RestauentNearUserHotelListWidget({
    super.key,
    required this.item,
  });

  final NearRestaurentListModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25.h),
      height: 360.h,
      width: 200.w,
      child: Column(
        children: [
          Stack(
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
                left: 0.w,
                top: -18.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      width: 100.w,
                      height: 42.h,
                      decoration: const BoxDecoration(
                        color: AppColor.amber,
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
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
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
                    size: 18.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 60.h,
                left: 55.w,
                right: 55.w,
                child: SizedBox(
                  height: 40.h,
                  width: 50.w,
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
                            .copyWith(fontSize: 10.sp, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
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
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          )),
                  SizedBox(height: 2.h),
                ],
              ),
              Text("Opening 11pm -12am",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w500,
                      )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: "assets/images/fav_user_restaurent_img3.svg",
                fit: BoxFit.cover,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: AppColor.red1,
                    size: 12.sp,
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
                                fontSize: 11.sp,
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
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';

class MealCarouselWidget extends StatelessWidget {
  final String image1;
  final String image2;
  final String title;
  final String subtitle;
  final String description;
  final String price;

  const MealCarouselWidget({
    super.key,
    required this.image1,
    required this.image2,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.w, // Adjust width here as needed
      child: Container(
        //height: 200.h,
        margin: EdgeInsets.only(left: 30.w),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 252, 136, 175),
          borderRadius: BorderRadius.circular(8.w),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: 220.w,
              height: 160.h,
              child: CustomImageView(
                fit: BoxFit.contain,
                imagePath: image1,
              ),
            ),
            SizedBox(
              width: 200.w,
              height: 160.h,
              child: CustomImageView(
                fit: BoxFit.contain,
                imagePath: image2,
              ),
            ),
            Positioned(
              right: 20.w,
              top: 40.h,
              child: SizedBox(
                width: 100.w,
                height: 120.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColor.black,
                          ),
                    ),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColor.black,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.black,
                                ),
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Text(
                      price,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w800,
                            color: AppColor.black,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: -10.h,
              right: 4.w,
              width: 100.w,
              height: 40.h,
              child: CommonElevatedButton(
                onPressed: () {},
                text: "Grab now",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

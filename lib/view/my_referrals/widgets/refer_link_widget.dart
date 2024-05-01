import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/my_referrals/sections/section_two.dart';

class referLinkWidget extends StatelessWidget {
  const referLinkWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Refer Friend & Earn Rs 500 Credit',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontSize: 16.sp,
                    color: AppColor.black,
                    fontWeight: FontWeight.w600,
                  )),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            color: AppColor.grey7,
          ),
          SizedBox(
            height: 10.h,
          ),
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 374.w,
                height: 45.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: AppColor.grey7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Container(
                width: 80.w,
                height: 45.h,
                decoration: ShapeDecoration(
                  color: AppColor.amber5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomImageView(
                      imagePath: "assets/images/my_referrals_screen_img1.svg",
                      color: AppColor.white,
                    ),
                    Text(
                      'Copy',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColor.white),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            color: AppColor.grey7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: "assets/images/uim_whatsapp.svg",
              ),
              CustomImageView(
                imagePath: "assets/images/entypo-social_facebook.svg",
              ),
              CustomImageView(
                imagePath: "assets/images/uil_instagram-alt.svg",
              ),
              CustomImageView(
                imagePath: "assets/images/clarity_email-line.svg",
              ),
              SizedBox(
                width: 6.w,
              ),
              Text('Invite by Email',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 14.sp,
                        color: AppColor.black,
                        fontWeight: FontWeight.w300,
                      )),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: 225.w,
              child: Divider(
                color: AppColor.grey7,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SectionTwo()
        ],
      ),
    );
  }
}

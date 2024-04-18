import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/joybox_picks_screen/model/joybox_pick_model.dart';

class JoyboxPickWidget extends StatelessWidget {
  final JoyboxPickModel joyboxPick;

  const JoyboxPickWidget({required this.joyboxPick});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 350.w,
      child: Stack(
        children: [
          Positioned(
            right: 19.w,
            top: 40.h,
            child: Container(
              width: 300.w,
              height: 220.h,
              decoration: BoxDecoration(
                color: AppColor.amber4.withOpacity(0.7),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(50),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 90.h,
                    top: 30.w,
                    child: SizedBox(
                      height: 70.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "The East End",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.black,
                                ),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                width: 12.w,
                                height: 12.h,
                                imagePath:
                                    "assets/images/joybox_picks_screen_img2.svg",
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text("Free",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
                                        fontSize: 12.sp,
                                        color: AppColor.red1,
                                        fontWeight: FontWeight.w500,
                                      )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomImageView(
                      // width: 150.w,
                      radius: BorderRadius.circular(12),
                      imagePath: "assets/images/joybox_picks_screen_img3.svg",
                    ),
                  ),
                  Positioned(
                    top: 110.h,
                    right: 85.w,
                    child: CommonElevatedButton(
                        height: 40.h,
                        width: 130.w,
                        fontSize: 11.sp,
                        onPressed: () {},
                        text: "Order now"),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 10.w),
                      child: Text("Opening 11pm -12am",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600,
                              )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            width: 150.w,
            height: 120.h,
            radius: BorderRadius.circular(12),
            imagePath: joyboxPick.imagePath,
          ),
          Positioned(
            left: 110.w,
            child: const Icon(
              Icons.favorite_outline_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

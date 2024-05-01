import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';

import '../res/color.dart';
import 'custom_image_view.dart';

class CommonPaymentMethodWidget extends StatelessWidget {
  const CommonPaymentMethodWidget({super.key, required this.containerHeight});

  final double containerHeight;

  @override
  Widget build(BuildContext context) {

    final List cardImagesList = [
      "assets/images/transaction_img6.png",
      "assets/images/transaction_img5.png",
      "assets/images/transaction_img6.png",
      "assets/images/transaction_img5.png",
    ];

    return Container(
      height: containerHeight,
      width: double.infinity,
      color: AppColor.grey3.withOpacity(0.1),
      child: Stack(
        children: [
          Positioned(
            left: -58.w,
            bottom: -38.h,
            child: CustomImageView(
              imagePath: "assets/images/transaction_img4.png",
              color: AppColor.amber,
              width: 298.w,
              height: 298.h,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 20.h,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Payment method",
                        style:
                        Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                        )),
                    InkWell(
                      onTap: () {},
                      child: Text("Add Cash",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp,
                          )),
                    )
                  ],
                ).paddingHorizontal(30.w),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 170,
                      width: 60.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColor.amber),
                        color: AppColor.white.withOpacity(0.7),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 30.sp,
                          color: AppColor.red1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      padding:
                      EdgeInsets.only(left: 5.w, top: 9.h, bottom: 9.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          color: AppColor.white.withOpacity(0.8)),
                      height: 170,
                      // Adjust this height according to your layout requirements
                      width: 292.w,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: cardImagesList.length,
                        separatorBuilder: (context, index) => SizedBox(width: 6.w),
                        itemBuilder: (context, index) {
                          return CustomImageView(
                            imagePath: cardImagesList[index],
                          );
                        },
                      ),
                    )
                  ],
                ).paddingLeft(30.w),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common_widgets/common_elevated_button.dart';
import '../../../model/joybox_section_model.dart';
import '../../../res/color.dart';

class JoyBoxSectionWidget extends StatelessWidget {
  const JoyBoxSectionWidget({
    super.key,
    required this.item,
  });

  final JoyBoxSectionModel item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320.h,
      width: 210.w,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Material(
            elevation: 4.0,
            borderRadius: BorderRadius.circular(6.0),
            child: Container(
              padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 20.h),
              height: 320.h,
              decoration: BoxDecoration(
                color: AppColor.amber,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    item.dealName,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    item.itemsName,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    "Rs.${item.itemPrice.toString()}",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(height: 30.h),
                  Align(
                    alignment: Alignment.center,
                    child: CommonElevatedButton(
                      onPressed: () {},
                      text: "Add to cart",
                      width: 170.w,
                      height: 48.h,
                      borderRadius: 10.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -70.h,
            left: 45.w,
            child: Image.asset(
              item.imagePath,
              height: 220.h,
              width: 220.w,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 6.h,
            right: -5.w,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_outlined, color: AppColor.red1),
            ),
          ),
        ],
      ),
    );
  }
}

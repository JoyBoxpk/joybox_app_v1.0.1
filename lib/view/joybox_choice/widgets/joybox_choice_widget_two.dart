import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common_widgets/common_elevated_button.dart';
import '../../../model/joybox_choice_widget_two_model.dart';
import '../../../res/color.dart';

class JoyBoxChoiceWidgetTwo extends StatelessWidget {
  const JoyBoxChoiceWidgetTwo({
    super.key,
    required this.item,
  });

  final JoyBoxChoiceWidgetTwoModel item;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(6.0),
      child: Container(
        width: 300.w,
        height: 390.h,
        decoration: BoxDecoration(
          color: AppColor.amber,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Column(
          children: [
            Image.asset(
              item.imageOnePath,
              width: 100.w,
              height: 80.h,
              fit: BoxFit.contain,
            ),
            Container(
              alignment: Alignment.center,
              width: 200.w,
              height: 180.h,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColor.white,
                    radius: 80.w,
                  ),
                  Positioned(
                    top: 10.h,
                    left: 1.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          "Life is better with",
                          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          item.itemName,
                          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 38.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -115.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          item.imageTwoPath,
                          width: 160.w,
                          height: 160.h,
                          fit: BoxFit.contain,
                        ),
                        Text(
                          "Pkr:${item.price.toString()}",
                          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        CommonElevatedButton(
                          width: 98.w,
                          height: 45.h,
                          onPressed: () {},
                          text: "Add to Cart",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

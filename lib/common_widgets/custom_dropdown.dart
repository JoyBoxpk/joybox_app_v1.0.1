import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';

class CustomDropdown extends StatelessWidget {
  final String hintText;
  final List<String> items;

  const CustomDropdown({
    super.key,
    required this.hintText,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      alignment: Alignment.center,
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColor.blue,
          width: 1,
        ),
      ),
      child: PopupMenuButton<String>(
        padding: EdgeInsets.zero,
        itemBuilder: (BuildContext context) {
          return items.map((String value) {
            return PopupMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  // Customize the style here
                  fontSize: 16.sp,
                  color: Colors.black,
                  // Add more styling as needed
                ),
              ),
            );
          }).toList();
        },
        onSelected: (_) {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              hintText,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 16.sp),
            ),
            SizedBox(width: 5.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  height: 15.h,
                  fit: BoxFit.contain,
                  imagePath: "assets/images/bxs_up-arrow.svg",
                ),
                CustomImageView(
                  height: 15.h,
                  fit: BoxFit.contain,
                  imagePath: "assets/images/bxs_down_arrow.svg",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

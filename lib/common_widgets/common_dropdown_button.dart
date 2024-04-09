import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonDropdownButton extends StatelessWidget {
  final String hintText;
  final List<String> items;

  const CommonDropdownButton({
    super.key,
    required this.hintText,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      alignment: Alignment.center,
      height: 48.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        border: Border.all(
          color: const Color(0xFFB3B3B3),
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
        child: Container(
          alignment: Alignment.center,
          child: Row(
            children: [
              Text(
                hintText,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontSize: 16.sp),
              ),
              SizedBox(width: 2.w),
              Icon(Icons.keyboard_arrow_down_outlined, size: 20.sp),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    this.backgroundColor,
    this.backArrowColor,
    this.actionsColor,
    this.text,
    this.actions,
    this.toolbarHeight = 80, // Specify the toolbar height here
    this.elevation = 0, // Specify the elevation here
  });

  final Color? backgroundColor;
  final Color? backArrowColor;
  final Color? actionsColor;
  final String? text;
  final List<Widget>? actions;
  final double toolbarHeight; // Added toolbar height property
  final double elevation; // Added elevation property

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? const Color(0xFFFFD726),
      elevation: elevation,
      // Set the elevation
      toolbarHeight: toolbarHeight.h,
      // Set the toolbar height
      automaticallyImplyLeading: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 12.w, bottom: 10.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 40.h,
              width: 38.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 1,
                    blurRadius: 2,
                  )
                ],
              ),
              child: IconButton(
                iconSize: 18.sp,
                alignment: Alignment.center,
                icon: Icon(
                  grade: 10.0,
                  Icons.arrow_back_sharp,
                  weight: 20.0,
                  color: backArrowColor ?? Colors.black,
                ),
                onPressed: () {
                  context.pop();
                  // Add your navigation logic here
                },
              ),
            ),
            SizedBox(width: 30.w),
            Text(
              text ?? "",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
            )
          ],
        ),
      ),
      actions: actions ?? [],
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(toolbarHeight.h); // Adjust the height as needed
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/res/color.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    this.backgroundColor,
    this.titleColor,
    this.backArrowColor,
    this.actionsColor,
    this.text,
    this.actions,
    this.toolbarHeight = 80,
    this.elevation = 0,
    this.isCircular = false,
    this.showBackButton = true,// New property for circular corners
  });

  final Color? backgroundColor;
  final Color? backArrowColor;
  final Color? titleColor;
  final Color? actionsColor;
  final String? text;
  final List<Widget>? actions;
  final double toolbarHeight;
  final double elevation;
  final bool isCircular;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? const Color(0xFFFFD726),
      elevation: elevation,
      toolbarHeight: toolbarHeight.h,
      automaticallyImplyLeading: false,
      shape: isCircular
          ? const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      )
          : null, // Apply circular border radius conditionally
      title: Padding(
        padding: EdgeInsets.only(left: 12.w, bottom: 4.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            showBackButton ? Container(
              height: 39.h,
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
                  Icons.arrow_back_sharp,
                  color: backArrowColor ?? AppColor.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ) : const SizedBox(),
            SizedBox(width: 10.w),
            FittedBox(
              child: Text(
                text ?? "",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: titleColor ?? AppColor.black,
                ),
              ),
            )
          ],
        ),
      ),
      actions: actions ?? [],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight.h);
}

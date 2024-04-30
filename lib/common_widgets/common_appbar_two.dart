import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';
import 'package:joy_box_app/res/color.dart';

class CommonAppBarTwo extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBarTwo({
    Key? key,
    this.backgroundColor,
    this.titleColor,
    this.backArrowColor,
    this.actionsColor,
    this.text,
    this.actions,
    this.toolbarHeight = 80,
    this.elevation = 0,
    this.isCircular = false,
    this.showBackButton = true,
  }) : super(key: key);

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
    return Container(
      height: toolbarHeight.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor ?? const Color(0xFFFFD726),
        borderRadius: isCircular
            ? const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )
            : null,
        boxShadow: elevation > 0
            ? [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
          )
        ]
            : null,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          showBackButton
              ? Container(
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
          )
              : SizedBox(),
          SizedBox(width: 18.w),
          FittedBox(
            child: Text(
              text ?? "",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: titleColor ?? AppColor.black,
              ),
            ),
          ),
          Spacer(),
          if (actions != null) ...actions!,
        ],
      ).paddingLeft(28.w).paddingTop(8.h),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight.h);
}

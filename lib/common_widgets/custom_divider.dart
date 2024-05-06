import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/res/color.dart';

class CustomDivider extends StatelessWidget {
  final double? thickness;
  final Color? color;
  final double? height;
  final double? width;

  const CustomDivider({
    Key? key,
    this.thickness,
    this.color,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 1.1.h,
      width: width ?? double.infinity,
      child: Center(
        child: Container(
          height: thickness,
          color: color ?? AppColor.amber,
        ),
      ),
    );
  }
}

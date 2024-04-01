import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuTabWidget extends StatelessWidget {
  const MenuTabWidget({super.key, required this.tabName, this.tabColor});

  final String tabName;
  final Color? tabColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      alignment: Alignment.center,
      // width: 80.h,
      height: 50.h,
      decoration: BoxDecoration(
        color: tabColor,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Text(
        tabName,
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
          fontSize: 13.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/color.dart';

class WYWWidgetOne extends StatelessWidget {
  const WYWWidgetOne({Key? key, required this.titleText, this.preFixIcon});

  final String titleText;
  final Widget? preFixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(titleText, style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.35)),),
        TextField(
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            errorStyle: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
            contentPadding:
                EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
            hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w300),
            prefixIcon: preFixIcon != null
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: preFixIcon!,
                  )
                : null,
          ),
        ),
      ],
    );
  }
}

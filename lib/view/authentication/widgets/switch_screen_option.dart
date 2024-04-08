import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../res/color.dart';

class SwitchScreenOption extends StatelessWidget {
  const SwitchScreenOption({
    super.key,
    required this.text1,
    required this.text2,
    required this.routeName,
  });

  final String text1;
  final String text2;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                ),
          ),
          const TextSpan(
            text: " ",
          ),
          TextSpan(
            text: text2,
            style: TextStyle(
              color: AppColor.red1,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => context.goNamed(routeName),
          ),
        ],
      ),
    );
  }
}

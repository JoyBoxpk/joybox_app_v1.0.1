import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonSocialIconButton extends StatelessWidget {
  final String imagePath;

  const CommonSocialIconButton({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 48.w,
      padding: const EdgeInsets.all(11),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0XFFEE452E),
      ),
      child: SvgPicture.asset(
        imagePath,
        color: Colors.white,
        width: 20.w,
        height: 20.h,
      ),
    );
  }
}

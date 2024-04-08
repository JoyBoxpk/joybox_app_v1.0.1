import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/common_social_icon_button.dart';

class SocialButtons extends StatelessWidget {
   const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CommonSocialIconButton(
            imagePath: "assets/images/svg1_signup_screen.svg"),
        SizedBox(width: 5.w),
        const CommonSocialIconButton(
            imagePath: "assets/images/svg2_signup_screen.svg"),
        SizedBox(width: 5.w),
        const CommonSocialIconButton(
            imagePath: "assets/images/svg3_signup_screen.svg"),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';
import 'package:joy_box_app/res/color.dart';
import 'sections/section_one.dart';
import 'sections/section_two.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key});

  static const String routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.grey4,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SectionOne(),
              SizedBox(height: 70.h),
              SectionTwo(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/res/color.dart';
import 'sections/mo_section_one.dart';
import 'sections/mo_section_two.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  static const String routeName = '/my-orders';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        isCircular: true,
        text: "My Orders",
      ),
      backgroundColor: AppColor.grey4,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40.h, bottom: 5.h),
          child: Column(
            children: [
              MOSectionOne(),
              SizedBox(height: 25.h),
              MOSectionTwo(),
            ],
          ),
        ),
      ),
    );
  }
}
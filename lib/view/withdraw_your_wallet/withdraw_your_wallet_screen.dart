import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/res/color.dart';
import 'wyw_sections/wyw_section_five.dart';
import 'wyw_sections/wyw_section_four.dart';
import 'wyw_sections/wyw_section_one.dart';
import 'wyw_sections/wyw_section_three.dart';
import 'wyw_sections/wyw_section_two.dart';

class WidthdrawYourWalletScreen extends StatelessWidget {
  const WidthdrawYourWalletScreen({Key? key}) : super(key: key);

  static const String routeName = '/Withdraw-your-Wallet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey4,
      appBar: CommonAppBar(
        text: "Withdraw your Wallet",
        isCircular: true,
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 22.w, vertical: 20.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              WYWSectionOne(),
              SizedBox(height: 25.h),
              WYWSectionTwo(),
              SizedBox(height: 40.h),
              WYWSectionThree(),
              SizedBox(height: 40.h),
              WYWSectionFour(),
              SizedBox(height: 40.h),
              WYWSectionFive(),
            ],
          ),
        ),
      ),
    );
  }
}

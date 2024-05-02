import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';

import '../../../common_widgets/common_elevated_button.dart';
import '../../../res/color.dart';
import '../widgets/wyw_widget_one.dart';

class WYWSectionThree extends StatefulWidget {
  const WYWSectionThree({super.key});

  @override
  State<WYWSectionThree> createState() => _WYWSectionThreeState();
}

class _WYWSectionThreeState extends State<WYWSectionThree> {
  String selectedValue = "Withdraw Using Jazz Cash Number";
  final _textFieldController = TextEditingController();

  @override
  void dispose() {
    _textFieldController.dispose();
    super.dispose();
  }

  final List<String> tabList = [
    "Withdraw Using Jazz Cash Number",
    "Withdraw Using EasyPaisa Number",
    "Withdraw Using Card Number",
  ];

  String _getFirstTextFieldTitle() {
    // Return different titles based on the selected dropdown value
    switch (selectedValue) {
      case "Withdraw Using Jazz Cash Number":
        return "Jazz Cash Number";
      case "Withdraw Using EasyPaisa Number":
        return "EasyPaisa Number";
      case "Withdraw Using Card Number":
        return "Card Number";
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          alignment: Alignment.center,
          height: 48.h,
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: PopupMenuButton<String>(
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context) {
              return tabList.map((String value) {
                return PopupMenuItem<String>(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                  ),
                );
              }).toList();
            },
            onSelected: (String value) {
              setState(() {
                selectedValue = value;
                _textFieldController.text = ""; // Clear the text field
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedValue,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontSize: 16.sp),
                ),
                SizedBox(width: 1.w),
                Icon(Icons.keyboard_arrow_down_outlined, size: 30.sp),
              ],
            ),
          ),
        ),
        SizedBox(height: 40.h),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 18.h),
          height: 420.h,
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              WYWWidgetOne(
                titleText: _getFirstTextFieldTitle(), // Use the method to get the title
                preFixIcon:
                Image.asset("assets/images/widthdraw_your_wallet_img1.png"),
              ),
              SizedBox(height: 20.h),
              WYWWidgetOne(
                titleText: "Recipient Name",
              ),
              SizedBox(height: 20.h),
              WYWWidgetOne(
                titleText: "Amount",
              ),
              SizedBox(height: 40.h),
              Align(
                alignment: Alignment.centerRight,
                child: CommonElevatedButton(
                  buttonElevation: 3.0,
                  borderRadius: 10.0,
                  height: 45.h,
                  width: 100.w,
                  onPressed: () {},
                  text: "Withdraw",
                ),
              ).paddingRight(30.w),
            ],
          ),
        ),
      ],
    );
  }
}

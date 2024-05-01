import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/dashboard_screen/widgets/section_two_widget_one.dart';

import '../../../common_widgets/common_elevated_button.dart';

class SectionTwo extends StatefulWidget {
  const SectionTwo({Key? key});

  @override
  _SectionTwoState createState() => _SectionTwoState();
}

class _SectionTwoState extends State<SectionTwo> {
  bool isCardSelected = true; // Track whether Card or JB Wallet is selected

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      height: 335.h,
      child: Column(
        children: [
          Material(
            elevation: 1.0,
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 22.h,
                horizontal: 15.w,
              ),
              width: double.infinity,
              height: 295.h,
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Balance Detail",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  fontSize: 14.sp,
                                  color: AppColor.grey5,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          SizedBox(height: 10.h),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: isCardSelected ? "1734.24" : "1924.75",
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              TextSpan(text: "  "),
                              TextSpan(
                                text: "PKR",
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                      fontSize: 19.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 18.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionTwoWidgetOne(
                        containerColor: AppColor.blue,
                        iconColor: AppColor.blue,
                        iconData: Icons.arrow_downward_rounded,
                        amountText:
                            isCardSelected ? "Rs.1734.24" : "Rs.1924.75",
                        labelText: "Income",
                        buttonColor: AppColor.blue,
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        buttonText: "RECEIVE",
                      ),
                      SectionTwoWidgetOne(
                        containerColor:
                            isCardSelected ? AppColor.red1 : Colors.green,
                        // Adjust color based on selection
                        iconColor:
                            isCardSelected ? AppColor.red1 : Colors.green,
                        // Adjust color based on selection
                        iconData: Icons.arrow_upward_rounded,
                        amountText:
                            isCardSelected ? "Rs.1850.24" : "Rs.2020.53",
                        labelText: "Expense",
                        buttonColor:
                            isCardSelected ? AppColor.red1 : Colors.green,
                        // Adjust color based on selection
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        buttonText: "SEND",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

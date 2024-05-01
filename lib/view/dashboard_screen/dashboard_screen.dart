import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/common_widgets/common_payment_method_widget.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';
import 'package:joy_box_app/res/color.dart';
import '../../common_widgets/custom_image_view.dart';
import 'sections/section_five.dart';
import 'sections/section_one.dart';
import 'sections/section_six.dart';
import 'sections/section_two.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key});

  static const String routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    final List cardImagesList = [
      "assets/images/transaction_img6.png",
      "assets/images/transaction_img5.png",
      "assets/images/transaction_img6.png",
      "assets/images/transaction_img5.png",
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.grey4,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(bottom: 20.h),
            child: Column(
              children: [
                SectionOne(),
                SizedBox(height: 70.h),
                SectionTwo(),
                SizedBox(height: 20.h),
                Container(
                  height: 600.h,
                  width: double.infinity,
                  color: AppColor.grey3.withOpacity(0.1),
                  child: Stack(
                    children: [
                      Positioned(
                        left: -60.w,
                        child: CustomImageView(
                          imagePath: "assets/images/transaction_img4.png",
                          color: AppColor.amber,
                          width: 295.w,
                          height: 295.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        top: 20.h,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Payment method",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15.sp,
                                        )),
                                InkWell(
                                  onTap: () {},
                                  child: Text("Add Cash",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp,
                                          )),
                                )
                              ],
                            ).paddingHorizontal(30.w),
                            SizedBox(height: 18.h),
                            Row(
                              children: [
                                Container(
                                  height: 170,
                                  width: 62.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: AppColor.amber),
                                    color: AppColor.white.withOpacity(0.7),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 30.sp,
                                      color: AppColor.red1,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 11.w,
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 5.w, top: 9.h, bottom: 9.h),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          bottomLeft: Radius.circular(10.0)),
                                      color: AppColor.white.withOpacity(0.8)),
                                  height: 170,
                                  // Adjust this height according to your layout requirements
                                  width: 292.w,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: cardImagesList.length,
                                    separatorBuilder: (context, index) =>
                                        SizedBox(width: 6.w),
                                    itemBuilder: (context, index) {
                                      return CustomImageView(
                                        imagePath: cardImagesList[index],
                                      );
                                    },
                                  ),
                                )
                              ],
                            ).paddingLeft(25.w),
                            SizedBox(height: 50.h),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              height: 300.h,
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 25.w),
                              color: Colors.blue,
                              child: LineChart(
                                LineChartData(
                                  lineBarsData: [
                                    LineChartBarData(
                                      isCurved: false,
                                      dotData: FlDotData(
                                        show: false,
                                      ),
                                      color: Colors.red,
                                    ),
                                  ],
                                  borderData: FlBorderData(
                                    border: const Border(
                                        bottom: BorderSide(),
                                        left: BorderSide()),
                                  ),
                                  gridData: FlGridData(show: false),
                                  titlesData: FlTitlesData(
                                    bottomTitles:
                                        AxisTitles(sideTitles: _bottomTitles),
                                    leftTitles: AxisTitles(
                                        sideTitles:
                                            SideTitles(showTitles: false)),
                                    topTitles: AxisTitles(
                                        sideTitles:
                                            SideTitles(showTitles: false)),
                                    rightTitles: AxisTitles(
                                        sideTitles:
                                            SideTitles(showTitles: false)),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 50.h),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SectionFive(),
                SizedBox(height: 20.h),
                SectionSix(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SideTitles get _bottomTitles => SideTitles(
        showTitles: true,
        getTitlesWidget: (value, meta) {
          String text = '';
          switch (value.toInt()) {
            case 1:
              text = 'Jan';
              break;
            case 3:
              text = 'Mar';
              break;
            case 5:
              text = 'May';
              break;
            case 7:
              text = 'Jul';
              break;
            case 9:
              text = 'Sep';
              break;
            case 11:
              text = 'Nov';
              break;
          }

          return Text(text);
        },
      );
}

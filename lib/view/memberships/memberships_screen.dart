import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/common_widgets/custom_rating_bar.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';
import 'package:joy_box_app/res/color.dart';

import 'memberships_models/model_one.dart';
import 'memberships_widgets/widget_one.dart';

class MembershipsScreen extends StatefulWidget {
  const MembershipsScreen({Key? key}) : super(key: key);

  static const String routeName = '/Memberships';

  @override
  State<MembershipsScreen> createState() => _MembershipsScreenState();
}

class _MembershipsScreenState extends State<MembershipsScreen> {

  final _carouselController1 = CarouselController();
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        isCircular: true,
        text: "Membership",
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CarouselSlider.builder(
                itemCount: 3,
                options: CarouselOptions(
                  padEnds: false,
                  clipBehavior: Clip.none,
                  viewportFraction: 0.699999,
                  height: 360.h,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  // onPageChanged: (index, reason) {
                  //   setState(() {
                  //     _activeIndex1 = index;
                  //   });
                  // },
                ),
                itemBuilder: (context, index, realIndex) {
                  final item = ModelOne.membershipList[index];
                  return WidgetOne(
                    item: item,
                    index: index,
                  );
                },
                carouselController: _carouselController1,
              ).paddingLeft(25.w),
              SizedBox(height: 50.h),
              CommonElevatedButton(
                buttonColor: AppColor.amber,
                textColor: AppColor.black,
                fontSize: 13.sp,
                height: 50.h,
                width: 180.w,
                onPressed: (){},
                text: "Total Memberships 03",
              ),
              SizedBox(height: 40.h),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                alignment: Alignment.center,
                height: 250.h,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "VIP E-Shopper Pass",
                          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColor.black,
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Text(
                          "Gold Retailer Club",
                          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColor.black,
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Text(
                          "Prime Shopper Club",
                          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColor.black,
                          ),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      color: AppColor.black,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Avail",
                          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColor.black,
                          ),
                        ),
                        Checkbox(
                          checkColor: AppColor.blue1,
                          activeColor: AppColor.blue1,
                          value: _isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked1 = value!;
                            });
                          },
                        ),
                        Checkbox(
                          checkColor: AppColor.blue1,
                          activeColor: AppColor.blue1,
                          value: _isChecked2,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked2 = value!;
                            });
                          },
                        ),
                        Checkbox(
                          checkColor: AppColor.blue1,
                          activeColor: AppColor.blue1,
                          value: _isChecked3,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked3 = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Not Avail",
                          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColor.black,
                          ),
                        ),
                        Checkbox(
                          checkColor: AppColor.blue1,
                          activeColor: AppColor.blue1,
                          value: _isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked1 = value!;
                            });
                          },
                        ),
                        Checkbox(
                          checkColor: AppColor.blue1,
                          activeColor: AppColor.blue1,
                          value: _isChecked2,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked2 = value!;
                            });
                          },
                        ),
                        Checkbox(
                          checkColor: AppColor.blue1,
                          activeColor: AppColor.blue1,
                          value: _isChecked3,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked3 = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
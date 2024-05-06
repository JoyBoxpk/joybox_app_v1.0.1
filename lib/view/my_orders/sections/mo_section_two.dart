import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';
import 'package:joy_box_app/res/color.dart';

import '../models/mo_model_one.dart';
import '../widgets/mo_widget_one.dart';

class MOSectionTwo extends StatefulWidget {
  const MOSectionTwo({super.key});

  @override
  State<MOSectionTwo> createState() => _MOSectionTwoState();
}

class _MOSectionTwoState extends State<MOSectionTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.h,
      margin: EdgeInsets.symmetric(horizontal: 7.w),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x3FDFDFDF),
            blurRadius: 30,
            offset: Offset(0.6, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Name"),
              Text("Amount"),
              Text("Quantity"),
              Text("Details"),
              // Add more Text widgets as needed
            ],
          ).paddingHorizontal(2.w),
          SizedBox(height: 8.h),
          Divider(
            color: Colors.grey,
          ),
          Expanded(
            child: ListView.separated(
                itemCount: MOModelOne.ordersList.length,
                itemBuilder: (context, index) {
                  final item = MOModelOne.ordersList[index];
                  return MOWidgetOne(
                    item: item,
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 25.h,
                  );
                }),
          ),
        ],
      ).paddingHorizontal(15.w).paddingTop(18.h),
    );
  }
}

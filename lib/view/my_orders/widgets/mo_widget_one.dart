import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';
import 'package:joy_box_app/res/color.dart';
import '../../../../common_widgets/common_elevated_button.dart';
import '../models/mo_model_one.dart';

class MOWidgetOne extends StatelessWidget {
  const MOWidgetOne({
    super.key,
    required this.item,
  });

  final MOModelOne item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25.0,
            ),
            SizedBox(width: 45.w),
            Text("Rs${item.amount.round()}"),
            SizedBox(width: 78.w),
            Text(item.quantity.toString()),
            SizedBox(width: 62.w),
            CommonElevatedButton(
              onPressed: () {},
              text: "View",
              height: 25,
              width: 55,
              buttonColor: Colors.yellow,
              textColor: Colors.black,
              borderColor: Colors.transparent,
            ),
          ],
        ),
        SizedBox(height: 5.h),
        Text(item.foodName),
        Text(item.restaurantName,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: AppColor.grey1, fontSize: 14.sp)),
        Text(item.date),
        SizedBox(height: 15.h),
        Divider(),
      ],
    ).paddingTop(2.h);
  }
}

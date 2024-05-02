import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/color.dart';

class WYWSectionFive extends StatefulWidget {
  const WYWSectionFive({Key? key}) : super(key: key);

  @override
  _WYWSectionFiveState createState() => _WYWSectionFiveState();
}

class _WYWSectionFiveState extends State<WYWSectionFive> {
  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildItem("Market Place", 0),
            _buildItem("History", 1),
            _buildItem("Payment", 2),
          ],
        ),
        SizedBox(height: 40.h),
        Column(
          children: [
            Image.asset("assets/images/widthdraw_your_wallet_img5.png"),
            SizedBox(height: 10.h),
            Text(
              _selectedItemIndex == 0
                  ? "Marketplace not available"
                  : _selectedItemIndex == 1 ? "History not available" : "Payment not available",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColor.black),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildItem(String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Text(
        title,
        style: Theme.of(context).textTheme.displaySmall!.copyWith(
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
          color: _selectedItemIndex == index ? AppColor.black : AppColor.grey1,
        ),
      ),
    );
  }
}

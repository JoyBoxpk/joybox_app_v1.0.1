
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Widget buildProgressIndicator() {
  return SizedBox(
    height: 60.0.w,
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        const Divider(
          color: Color(0xFFFFD726),
          thickness: 1.2,
        ),
        Positioned.fill(
          top: -10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildProgressStep("1", "Menu"),
              _buildProgressStep("2", "Cart"),
              _buildProgressStep("3", "Checkout"),
            ],
          ),
        ),
      ],
    ),
  );
}
Widget _buildProgressStep(String step, String title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        alignment: Alignment.center,
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: Color(0xFFFFD726),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          step,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      const SizedBox(height: 5),
      Text(
        title,
        style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
      )
    ],
  );
}

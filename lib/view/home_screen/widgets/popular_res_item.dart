import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularResItem extends StatelessWidget {
  const PopularResItem({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: 340.h,
              child: Image.asset("assets/images/img10_home_screen.png"),
            ),
            Positioned(
              left: 8.w,
              top: -6.h,
              child: Container(
                padding: EdgeInsets.only(left: 5.w, top: 5.h),
                alignment: Alignment.centerLeft,
                width: 120.w,
                height: 35.h,
                decoration: const BoxDecoration(
                    color: Color(0xFFFFD726),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                    )),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -60,
              left: 5,
              child: Image.asset("assets/images/img11_home_screen.png",
                  width: 160, height: 160),
            ),
            Positioned(
              right: 2,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white,
                  size: 28.sp,
                ),
              ),
            ),
          ],
        ),
        Text("Opening 11pm - 12am",
            style: Theme.of(context).textTheme.labelLarge),
      ],
    );
  }
}

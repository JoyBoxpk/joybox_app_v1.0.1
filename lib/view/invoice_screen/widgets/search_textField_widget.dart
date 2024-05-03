import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/res/color.dart';

class SearchTextFieldWidget extends StatelessWidget {
  const SearchTextFieldWidget({super.key, required this.searchController});

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 320.w,
        height: 50.h,
        padding: EdgeInsets.symmetric(horizontal: 60.w),
        decoration: ShapeDecoration(
          // color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 3, color: Color(0xFFFFD726)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: TextField(
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
          autocorrect: false,
          textCapitalization: TextCapitalization.none,
          controller: searchController,
          decoration: InputDecoration(
            isDense: true,
            hintText: "Search invoice ID",
            prefixIcon: Icon(Icons.search),
            prefixIconColor: AppColor.red1,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorStyle: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
            fillColor: Colors.white,
            filled: true,
            hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }
}

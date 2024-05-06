import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';
import '../../../res/color.dart';

class MOSectionOne extends StatefulWidget {
  const MOSectionOne({Key? key}) : super(key: key);

  @override
  State<MOSectionOne> createState() => _MOSectionOneState();
}

class _MOSectionOneState extends State<MOSectionOne> {
  String selectedDate = 'Select Date';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            textTheme: TextTheme(
              titleMedium: TextStyle(fontSize: 16.sp), // Change font size here
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = DateFormat('dd-MM-yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Material(
              borderRadius: BorderRadius.circular(6.0),
              elevation: 4.0,
              child: TextFormField(
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.h),
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w100),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  hintText: "Search for anything...",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          SizedBox(width: 15.w),
          Expanded(
            child: GestureDetector(
              onTap: () => _selectDate(context),
              child: Container(
                height: 60.h,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(
                    color: AppColor.grey,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.calendar_month_outlined, size: 24.sp),
                    Text(selectedDate),
                    Icon(Icons.keyboard_arrow_down_sharp, size: 25.sp),
                  ],
                ),
              ),
            ),
          ),
        ],
      ).paddingHorizontal(10.w),
    );
  }
}

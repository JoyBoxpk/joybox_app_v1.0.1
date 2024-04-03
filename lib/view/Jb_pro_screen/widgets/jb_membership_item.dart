import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/color.dart';

class JbMembershipItem extends StatelessWidget {
  const JbMembershipItem({
    super.key,
    required this.membershipType,
    required this.expireDate,
    required this.price,
    required this.imageUrl
  });

  final String membershipType;
  final String imageUrl;
  final int expireDate;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
      alignment: Alignment.center,
      width: 340.w,
      height: 300.h,
      decoration: BoxDecoration(
        color: AppColor.amber3,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 68.h,
            child: Row(
              children: [
                Image.asset(
                  imageUrl,
                  width: 70.w,
                  height: 70.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 14.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "$membershipType Membership",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 160.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: Color(0xFFFDB140),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        "Expire in $expireDate Days",
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description & Price",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  "More Details",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          Divider(
            color: AppColor.black,
            height: 1.2.h,
            thickness: 0.6,
          ),
          SizedBox(height: 20.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "\$$price",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.black38),
                    ),
                    Text(
                      "\$$price",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 42.h,
                width: 140.w,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.red2,
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 20.sp,
                      color: AppColor.white,
                    ),
                    label: Text(
                      "Renew",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
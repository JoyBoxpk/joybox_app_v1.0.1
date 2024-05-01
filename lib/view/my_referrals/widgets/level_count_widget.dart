import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/view/my_referrals/model/level_count_model.dart';

class LevelCountWidget extends StatelessWidget {
  final List<LevelCount> levelCounts;

  const LevelCountWidget({
    Key? key,
    required this.levelCounts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: levelCounts.map((level) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 6.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                level.levelName,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                width: level.width,
                height: 20,
                decoration: BoxDecoration(
                  color: level.color,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                level.count.toString(),
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

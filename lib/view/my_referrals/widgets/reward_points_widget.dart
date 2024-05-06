import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/my_referrals/model/reward_points_model.dart';

class RewardPointsWidget extends StatelessWidget {
  final RewardPointsModel rewardPointsModel;
  const RewardPointsWidget({
    super.key,
    required this.rewardPointsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.w,
      height: 210.h,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.red1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5.h),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: "assets/images/my_referrals_screen_img2.svg",
                ),
                //points count
                Text(
                  rewardPointsModel.points.toString(),
                  style: TextStyle(
                    color: Color(0xFF202126),
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                //title
                Text(
                  rewardPointsModel.title,
                  style: TextStyle(
                    color: Color(0xFF202126),
                    fontSize: 10,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          //image
          CustomImageView(
            imagePath: rewardPointsModel.imagePath,
          )
        ],
      ),
    );
  }
}

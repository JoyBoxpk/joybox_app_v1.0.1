import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/jb_rewards/model/jb_coins_model.dart';

class JBCoinsWidget extends StatelessWidget {
  final JBCoinsModel jbCoins;

  const JBCoinsWidget({Key? key, required this.jbCoins}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      width: 400.w,
      height: 140.h,
      decoration: BoxDecoration(
        color: AppColor.amber,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            clipBehavior: Clip.none,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "JB Coins",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: "assets/images/jb_rewards_screen_img1.svg",
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        jbCoins.amount.toString(),
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 15.sp,
                                ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    jbCoins.howToEarn,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.w100,
                          fontSize: 14.sp,
                        ),
                  ),
                ],
              ),
              Positioned(
                top: -20.h,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColor.white, width: 2),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(jbCoins.imagePath),
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';

class EditNotification extends StatelessWidget {
  const EditNotification({super.key});

  static const String routeName = "editNotification-screen";

  @override
  Widget build(BuildContext context) {
    final List featureList = [
      "Enabled",
      "Play sound",
      "Messages",
      "Order receive"
    ];
    return Scaffold(
      appBar: CommonAppBar(
        text: "Edit Notifications",
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Row(
              children: [
                Icon(
                  Icons.notifications,
                  color: AppColor.red1,
                ),
                Icon(
                  Icons.edit_outlined,
                  color: AppColor.red1,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(
            parent: NeverScrollableScrollPhysics()),
        child: Container(
          color: AppColor.amber,
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.symmetric(horizontal: 30.w),
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 50.h),
                height: 330,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 20.h,
                    );
                  },
                  itemCount: featureList.length,
                  itemBuilder: (context, index) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        featureList[index],
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                            ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildOnSwitchItem(
                            containerColor: AppColor.amber2,
                            height: 15.h,
                            width: 10.w,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          _buildOnSwitchItem(
                            containerColor: AppColor.amber2,
                            height: 20.h,
                            width: 15.w,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          _buildOnSwitchItem(
                            containerColor: AppColor.amber2,
                            height: 25.h,
                            width: 25.w,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Align(
                child: CustomImageView(
                  imagePath: "assets/images/edit_notification_img1.png",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _buildOnSwitchItem extends StatelessWidget {
  final double height;
  final double width;
  final Color containerColor;

  const _buildOnSwitchItem({
    super.key,
    required this.height,
    required this.width,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(3),
      elevation: 10,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3), color: containerColor),
      ),
    );
  }
}

class _buildOffSwitchItem extends StatelessWidget {
  final double height;
  final double width;
  final Color containerColor;

  const _buildOffSwitchItem({
    super.key,
    required this.height,
    required this.width,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(3),
      elevation: 10,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3), color: containerColor),
      ),
    );
  }
}

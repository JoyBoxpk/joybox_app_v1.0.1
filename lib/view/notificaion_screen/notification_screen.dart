import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/notificaion_screen/model/notification_model.dart';
import 'package:joy_box_app/view/notificaion_screen/widget/notification_item_widget.dart';

import 'model/notification_options_model.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  static const String routeName = "/notification-screen";

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int _selectedIndex = 0; // Track selected index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        text: "Notifications",
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Image.asset("assets/images/notification_screen_img1.png"),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 80.h, // Adjust the height as needed
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: notificationOptions.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index; // Update selected index
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            color: _selectedIndex == index
                                ? Colors.grey.withOpacity(
                                    0.1) // Change the color for selected item
                                : Colors.transparent,
                            child: Center(
                              child: Text(
                                notificationOptions[index].optionType,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 60.h,
                      width: 70.w,
                      color: AppColor.blue,
                    ),
                    Positioned(
                      right: 0,
                      bottom: 12.w,
                      child: Container(
                        height: 60.h,
                        width: 60.w,
                        color: AppColor.red1,
                        child: FittedBox(
                            child: Text(
                          "15",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 1.sp,
                                  color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                )
                // Add another widget here
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              color: AppColor.amber4,
              child: Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Expanded(
                        child: ListView.builder(
                      itemCount: notifications.length,
                      itemBuilder: (context, index) {
                        final notification = notifications[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.w),
                          child: NotificationItem(
                            notification: notification,
                            onDismissed: (dismissedNotification) {
                              setState(() {
                                notifications.remove(dismissedNotification);
                              });
                              // You can add additional logic here, such as marking the notification as read, etc.
                            },
                          ),
                        );
                      },
                    ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

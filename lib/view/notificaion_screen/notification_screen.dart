import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/chat_screen/chat_screen.dart';
import 'package:joy_box_app/view/notificaion_screen/model/notification_model.dart';
import 'package:joy_box_app/view/notificaion_screen/widget/notification_item_widget.dart';
import 'package:joy_box_app/view/notificaion_screen/widget/notification_tab_item.dart';

import 'model/notifcation_tab_item_model.dart';
import 'model/notification_options_model.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  static const String routeName = "/notification-screen";

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        isCircular: true,
        text: "Notifications",
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Image.asset("assets/images/notification_screen_img1.png"),
          )
        ],
      ),
      body: const Column(
        children: [_BuildOptionsTab(), _BuildNotificationContextWidget()],
      ),
    );
  }
}

class _BuildNotificationContextWidget extends StatefulWidget {
  const _BuildNotificationContextWidget({Key? key});

  @override
  State<_BuildNotificationContextWidget> createState() =>
      __BuildNotificationContextWidgetState();
}

class __BuildNotificationContextWidgetState
    extends State<_BuildNotificationContextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560.h,
      color: AppColor.amber4,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.w),
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
            ),
          ],
        ),
      ),
    );
  }
}

class _BuildOptionsTab extends StatefulWidget {
  const _BuildOptionsTab({super.key});

  @override
  State<_BuildOptionsTab> createState() => __buildOptionsTabState();
}

class __buildOptionsTabState extends State<_BuildOptionsTab> {
  int _selectedIndex = 0; // Track selected index

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Row(
              children: notificationTabItem.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;
                return NotificationTabItem(
                  item: item,
                  index: index,
                  selectedIndex: _selectedIndex,
                  routeNames: [
                    NotificationScreen.routeName,
                    ChatScreen.routeName
                  ],
                  // Pass a callback function to update the selected index
                  onTabSelected: (int newIndex) {
                    setState(() {
                      _selectedIndex = newIndex;
                    });
                  },
                );
              }).toList(),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 70.h, // Adjust the height as needed
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: notificationOptions.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            _selectedIndex = index; // Update selected index
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: Center(
                            child: Text(
                              notificationOptions[index].optionType,
                              style: const TextStyle(
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
                      child: Center(
                        child: Text(
                          "15",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 20.sp,
                                  color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              )
              // Add another widget here
            ],
          ),
        ),
      ],
    );
  }
}

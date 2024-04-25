import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/notificaion_screen/model/notification_model.dart';

class NotificationItem extends StatelessWidget {
  final NotificationModel notification;
  final Function(NotificationModel) onDismissed;

  const NotificationItem({
    super.key,
    required this.notification,
    required this.onDismissed,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(notification.time.toString()),
      onDismissed: (direction) {
        onDismissed(notification);
      },
      background: Container(
        color: Colors.red, // Background color when swiping to dismiss from left
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/notification_screen_img4.png",
              color: AppColor.white,
            ),
            Text(
              "Remove",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    color: AppColor.white,
                  ),
            )
          ],
        ),
      ),
      secondaryBackground: Container(
        color: AppColor.blue, ////
        alignment: Alignment.centerRight,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.archive,
              color: AppColor.white,
            ),
            Text(
              "Archive",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    color: AppColor.white,
                  ),
            )
          ],
        ),
      ),
      child: Container(
        color: Colors.amberAccent.shade100,
        height: 150.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              child: Text(
                notification.getFormattedTime(),
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w100,
                      fontSize: 12.sp,
                    ),
              ),
            ),
            ListTile(
              leading: Image.asset(notification.imageUrl),
              title: Text(
                notification.title,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
              ),
              subtitle: Text(
                notification.subtitle,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w100,
                      fontSize: 10.sp,
                    ),
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}

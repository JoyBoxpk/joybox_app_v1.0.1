import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/view/notificaion_screen/model/notification_model.dart';

class NotificationItem extends StatelessWidget {
  final NotificationModel notification;
  final Function(NotificationModel) onDismissed;

  const NotificationItem({
    Key? key,
    required this.notification,
    required this.onDismissed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(notification.time.toString()),
      onDismissed: (direction) {
        onDismissed(notification);
      },
      background: Container(
        color: Colors.red, // Background color when swiping to dismiss
        alignment: Alignment.centerRight,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Icon(Icons.delete, color: Colors.white),
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
                notification.time.toString(),
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

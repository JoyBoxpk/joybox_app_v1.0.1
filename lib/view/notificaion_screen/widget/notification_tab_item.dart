import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/notificaion_screen/edit_notification/edit_notification_screen.dart';
import 'package:joy_box_app/view/notificaion_screen/model/notifcation_tab_item_model.dart';

class NotificationTabItem extends StatelessWidget {
  final NotificationTabItemModel item;
  final int index;
  final int selectedIndex;
  final Function(int) onTabSelected;
  final List<String> routeNames; // List of route names for each tab

  const NotificationTabItem(
      {Key? key,
      required this.item,
      required this.index,
      required this.selectedIndex,
      required this.onTabSelected,
      required this.routeNames})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTabSelected(index);
        print(selectedIndex);
        Navigator.pushNamed(context, routeNames[index]);
      },
      child: Column(
        children: [
          SizedBox(
            height: 40.h,
            width: 192.w,
            child: ListTile(
              leading: CustomImageView(
                imagePath: item.itemImg,
              ),
              title: Text(
                item.itemName,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
              ),
              trailing: IconButton(
                onPressed: () => selectedIndex == 0
                    ? Navigator.pushNamed(context, EditNotification.routeName)
                    : "",
                icon: Icon(
                  Icons.edit_outlined,
                ),
                color: AppColor.amber1,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            height: 1.h,
            width: 192.w,
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? AppColor.amber2
                  : Colors.black.withOpacity(0.1),
            ),
          )
        ],
      ),
    );
  }
}

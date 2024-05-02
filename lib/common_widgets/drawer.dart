import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/view/Jb_pro_screen/jb_pro_screen.dart';
import 'package:joy_box_app/view/aboutus_screen/about_us_screen.dart';
import 'package:joy_box_app/view/chat_screen/chat_screen.dart';
import 'package:joy_box_app/view/dashboard_screen/dashboard_screen.dart';
import 'package:joy_box_app/view/notificaion_screen/notification_screen.dart';
import 'package:joy_box_app/view/offers_screen/offers_screen.dart';
import 'package:joy_box_app/view/ordering_recording/ordering_reordering.dart';
import 'package:joy_box_app/view/profile_screen/Profile.dart';
import 'package:joy_box_app/view/settings_screen/settings_screen.dart';
import 'package:joy_box_app/view/support/support_screen.dart';
import 'package:joy_box_app/view/transaction_screen/transactions_screen.dart';

import '../view/payment_method/payment_method_screen.dart';
import '../view/withdraw_your_wallet/withdraw_your_wallet_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget(
      {super.key, required void Function(bool isOpen) onDrawerStateChanged});

  @override
  Widget build(BuildContext context) {
    final devheight = MediaQuery.of(context).size.height;
    final devwidth = MediaQuery.of(context).size.width;
    final textstyle = Theme.of(context).textTheme;

    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Material(
              elevation: 10,
              color: const Color(0XFFFFD726),
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: CustomImageView(
                      fit: BoxFit.cover,
                      imagePath: 'assets/images/Group_289387.svg',
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    child: Row(
                      children: [
                        Text(
                          "Haris Ahmed",
                          style: textstyle.bodyMedium?.copyWith(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const Icon(Icons.edit)
                      ],
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: Text(
                "JB pays",
                style: textstyle.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.h,
                ),
              ),
              subtitle: Text(
                "Top up your offers",
                style: textstyle.bodyMedium,
              ),
              trailing: Container(
                height: devheight * 0.04,
                width: devwidth * 0.18,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "PKR 2.500",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              onTap: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute<void>(
                //     builder: (BuildContext context) => const MyHomePage(
                //       title: 'Houses',
                //     ),
                //   ),
                // );
              },
            ),
            const Divider(
              height: 10,
              thickness: 1,
              color: Color(0XFFFFD726),
            ),
            SizedBox(
              height: 380.h,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                shrinkWrap: false,
                itemCount: DrawerSettingItem
                    .drawerItems.length, // Accessing drawerItems from the class
                itemBuilder: (context, index) {
                  final item = DrawerSettingItem.drawerItems[
                      index]; // Accessing drawerItems from the class
                  return ListTile(
                    leading: CustomImageView(
                      fit: BoxFit.contain,
                      imagePath: item.iconpath,
                      height: 22.h,
                      width: 22.w,
                    ),
                    title: Text(
                      item.title,
                      style: textstyle.bodyMedium?.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                      ),
                    ),
                    onTap: () {
                      // Handle onTap action for each item if needed
                      _navigateToScreen(context, item.title);
                    },
                  );
                },
              ),
            ),
            const Divider(
              height: 10,
              thickness: 1,
              color: Color(0XFFFFD726),
            ),
            Container(
              height: devheight * 0.12,
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, SettingScreen.routeName),
                    child: Text(
                      "Settings",
                      style: textstyle.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, AboutUsScreen.routeName),
                    child: Text(
                      "Terms & Conditions / Privacy",
                      style: textstyle.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  Text(
                    "Log out",
                    style: textstyle.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void _navigateToScreen(BuildContext context, String title) {
  switch (title) {
    case "Support":
      Navigator.pushNamed(context, SupportScreen.routeName);
      break;
    case "Transactions":
      Navigator.pushNamed(context, TransactionsScreen.routeName);
      break;
    case "Withdraw your wallet":
      Navigator.pop(context);
      Navigator.pushNamed(context, WidthdrawYourWalletScreen.routeName);
      break;
    case "Profile":
      Navigator.pushNamed(context, ProfileScreen.routeName);
      break;
    case "Become JB Pro":
      Navigator.pushNamed(context, JbProScreen.routeName);
      break;

    case "Ordering & reordering":
      Navigator.pushNamed(context, OrderingReordering.routeName);
      break;

    case "Inbox":
      Navigator.pushNamed(context, ChatScreen.routeName);
      break;

    case "Language":
      Navigator.pop(context);
      Navigator.pushNamed(context, DashboardScreen.routeName);
      break;

    case "Offers & Voucher":
      Navigator.pushNamed(context, OffersScreen.routeName);
      break;

    case "Invite friends":
      Navigator.pushNamed(context, PaymentMethodScreen.routeName);
      break;

    case "Notifications":
      Navigator.pushNamed(context, NotificationScreen.routeName);
      break;

    // Add more cases for other screens
    default:
      // Do nothing or handle other cases
      break;
  }
}

class DrawerSettingItem {
  final iconpath;
  final String title;

  DrawerSettingItem({
    required this.iconpath,
    required this.title,
  });

  static final List<DrawerSettingItem> drawerItems = [
    DrawerSettingItem(
      iconpath: "assets/images/drawer_notiification_img.svg",
      title: 'Notifications',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_2.svg",
      title: 'Ordering & reordering',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_3.svg",
      title: 'Offers & Voucher',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_4.svg",
      title: 'Become JB Pro',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_5.svg",
      title: 'Profile',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_6.svg",
      title: 'Inbox',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_7.svg",
      title: 'Transactions',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_7.svg",
      title: 'Withdraw your wallet',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_8.svg",
      title: 'JB rewards',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_9.svg",
      title: 'JB memberships',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_10.svg",
      title: 'Support',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_11.svg",
      title: 'Invite friends',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_12.svg",
      title: 'Language',
    ),
    // Add more items as needed
  ];
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_bottom_app_bar.dart';
import 'package:joy_box_app/view/cart_screen/cart_screen.dart';
import 'package:joy_box_app/view/profile_screen/Profile.dart';
import 'package:joy_box_app/view/settings_screen/settings_screen.dart';
import 'package:joy_box_app/view/user_fav_restaurent/user_fav_restaurent_screen.dart';

import '../../res/color.dart';
import '../home_screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  static const String routeName = '/main-screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const UserFavRestaurentScreen(),
    const CartScreen(),
    const ProfileScreen(),
    const SettingScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // floatingActionButtonLocation:
        //     FloatingActionButtonLocation.miniCenterDocked,
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: AppColor.amber,
        //   shape: const CircleBorder(),
        //   elevation: 0.0,
        //   onPressed: () {},
        //   child: Icon(
        //     Icons.shopping_bag_outlined,
        //     size: 35.sp,
        //   ),
        // ),
        bottomNavigationBar: CommonBottomNavBar(
          onItemTapped: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          selectedIndex: selectedIndex,
        ),
        body: screens[selectedIndex],
      ),
    );
  }
}

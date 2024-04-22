import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/color.dart';

class CommonBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CommonBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.h,
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(12.0), // Clip content to circular border
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          iconSize: 25.sp,
          elevation: 8,
          backgroundColor: AppColor.blue, // Make the background transparent
          unselectedItemColor: AppColor.white,
          selectedItemColor: AppColor.red1,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '', // Remove the label
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: '', // Remove the label
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: '', // Remove the label
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: '', // Remove the label
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '', // Remove the label
            ),
          ],
          currentIndex: selectedIndex,
          onTap: (value) {
            onItemTapped(value);
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_bottom_app_bar.dart';
import 'package:joy_box_app/common_widgets/drawer.dart';
import 'package:joy_box_app/view/cart_screen/cart_screen.dart';
import 'package:joy_box_app/view/home_screen/widgets/custom_icon_button.dart';
import 'package:joy_box_app/view/profile_screen/Profile.dart';
import 'package:joy_box_app/view/settings_screen/settings_screen.dart';
import 'package:joy_box_app/view/user_fav_restaurent/user_fav_restaurent_screen.dart';

import '../../res/color.dart';
import '../home_screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const String routeName = '/main-screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Widget> screens = [
    const HomeScreen(),
    const UserFavRestaurentScreen(),
    const CartScreen(),
    ProfileScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: selectedIndex == 0
            ? DrawerWidget(
                onDrawerStateChanged: (bool isOpen) {},
              )
            : null,
        bottomNavigationBar: CommonBottomNavBar(
          onItemTapped: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          selectedIndex: selectedIndex,
        ),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            if (selectedIndex == 0) _buildAppBar(),
          ],
          body: screens[selectedIndex],
        ),
      ),
    );
  }

  SliverAppBar _buildAppBar() {
    return SliverAppBar(
      floating: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: CustomIconButton(
        onPressed: () {
          print("tabed");
          _scaffoldKey.currentState?.openDrawer();
        },
        imagePath: "assets/images/img1_home_screen.png",
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver to",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 15.sp,
                  color: AppColor.red1,
                  fontWeight: FontWeight.w400,
                ),
          ),
          Text(
            "4102 Pretty View Lane",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
          ),
        ],
      ),
      actions: [
        CustomIconButton(
          onPressed: () {},
          imagePath: "assets/images/img2_home_screen.jpg",
        ),
      ],
    );
  }
}

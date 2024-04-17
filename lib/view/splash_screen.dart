import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/view/aboutus_screen/about_us_screen.dart';
import 'package:joy_box_app/view/all_restaurents_screen/all_restaurents_screen_widget_model..dart';
import 'package:joy_box_app/view/transaction_screen/transactions_screen.dart';

import 'get_started_screen.dart';
import 'ordering_recording/ordering_reordering.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String routeName = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      context.goNamed(GetStartedScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //height: 100.w,
        width: double.infinity,
        child: Stack(
          //clipBehavior: Clip.none,
          //alignment: Alignment.topCenter,
          children: [
            Positioned(
              child: Image.asset(
                "assets/images/img1_splash_screen.png",
                // height:MediaQuery.of(context).size.height/2,
                fit: BoxFit.cover,
                width: double.infinity,
                //fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset("assets/images/img2_splash_screen.png",
                  width: double.infinity, fit: BoxFit.fitWidth),
            ),
          ],
        ),
      ),
    );
  }
}

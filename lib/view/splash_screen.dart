import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/view/aboutus_screen/about_us_screen.dart';
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
      body: SafeArea(
        child: SizedBox(
          height: 100.w,
          width: double.maxFinite,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                "assets/images/img1_splash_screen.png",
                fit: BoxFit.contain,
              ),
              Positioned(
                  bottom: 06,
                  child: Image.asset("assets/images/img2_splash_screen.png",
                      fit: BoxFit.cover)),
            ],
          ),
        ),
      ),
    );
  }
}

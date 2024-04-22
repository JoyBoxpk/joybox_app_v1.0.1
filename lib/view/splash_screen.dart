import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/view/notificaion_screen/notification_screen.dart';
import 'get_started_screen.dart';

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
      context.goNamed(NotificationScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: Image.asset(
                "assets/images/img1_splash_screen.png",
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

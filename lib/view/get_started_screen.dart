import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/view/signup_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../res/color.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  static const String routeName = '/get-started';

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                left: -120,
                top: -58,
                child: Container(
                  width: 480.w,
                  height: 510,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.blue,
                  ),
                ),
              ),
              Positioned(
                top: -44.h,
                right: -30.w,
                child: Image.asset(
                  "assets/images/img1_get_started_screen.png",
                  width: 200.w,
                  height: 890.w,
                ),
              ),
              Positioned(
                left: -100,
                bottom: 2,
                child: Image.asset(
                  "assets/images/img2_get_started_screen.png",
                  width: 540.w,
                  height: 477.w,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: -125.w,
                bottom: 5.h,
                child: Image.asset(
                  "assets/images/img3_get_started_screen.png",
                  width: 550.w,
                  height: 476.w,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                right: 20.w,
                bottom: 50.h,
                child: InkWell(
                  onTap: () => context.goNamed(SignUpScreen.routeName),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    width: 110.w,
                    height: 110.w,
                    decoration: const BoxDecoration(
                      color: AppColor.red1,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/images/img4_get_started_screen.png",
                      width: 50.w,
                      height: 50.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 40.w,
                top: 150.h,
                child: Text(
                  "Welcome to",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: Colors.white,
                        fontSize: 32.sp,
                      ),
                ),
              ),
              Positioned(
                left: 30.w,
                top: 180.h,
                child: Text(
                  "JoyBox!",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: Colors.white,
                    fontSize: 70.sp,
                  ),
                ),
              ),
              Positioned(
                left: 25.w,
                top: 390.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "We're so glad you're here",
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
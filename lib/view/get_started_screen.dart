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
                left: -105,
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
                right: -20,
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
                  width: 520.w,
                  height: 477.w,
                ),
              ),
              Positioned(
                left: -125,
                bottom: 5,
                child: Image.asset(
                  "assets/images/img3_get_started_screen.png",
                  width: 520.w,
                  height: 476.w,
                ),
              ),
              Positioned(
                right: 20,
                bottom: 50,
                child: InkWell(
                  onTap: () => context.goNamed(SignUpScreen.routeName),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    width: 117.w,
                    height: 117.w,
                    decoration: const BoxDecoration(
                      color: AppColor.red1,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/images/img4_get_started_screen.png",
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 150,
                child: Text(
                  "Welcome to",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white),
                ),

              ),
              Positioned(
                left: 40,
                top: 165,
                child: Text(
                  "JoyBox!",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 60.sp),
                ),
              ),
              Positioned(
                left: 25,
                top: 360,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "We're so glad you're here",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 90,
                left: 150,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 6,
                    activeDotColor: AppColor.blue,
                    dotColor: AppColor.blueGrey,
                    activeDotScale: 1.3,
                    dotHeight: 8.w,
                    dotWidth: 6.w,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common_widgets/custom_image_view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const String routeName = 'Profile-Screen';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              //alignment: Alignment.centerRight,
              children: [
                Column(
                  children: [
                    AppBarWidget(screenHeight: screenHeight),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomImageView(
                        fit: BoxFit.fill,
                        imagePath: "assets/images/profile_screen_img2 (2).svg",
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: 180,
                  left: 60, // Align left edge with the left edge of the screen
                  right: 60,
                  child: Profile_Stack_widget(
                      screenWidth: screenWidth, screenHeight: screenHeight),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const _RewardsWidget(),
            const _MyPhotosWidget()
          ],
        ),
      ),
    );
  }
}

class _MyPhotosWidget extends StatelessWidget {
  const _MyPhotosWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.shade100,
          spreadRadius: 1,
        )
      ]),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: CustomImageView(
                          fit: BoxFit.contain,
                          imagePath: "assets/images/profile_screen_img4 (2).svg",
                        ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                child: Text(
                  "My Photos",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        fit: BoxFit.contain,
                        imagePath: "assets/images/profile_screen_img3 (2).png",
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      CustomImageView(
                        fit: BoxFit.contain,
                        imagePath: "assets/images/profile_screen_img3 (2).png",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}

class _RewardsWidget extends StatelessWidget {
  const _RewardsWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            spreadRadius: 1,
          )
        ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
              child: Text(
                "My rewards",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  fit: BoxFit.contain,
                  imagePath: "assets/images/settings_screen_img6.svg",
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomImageView(
                        // fit: BoxFit.contain,
                        imagePath: "assets/images/settings_screen_img8.png",
                      ),
                      CustomImageView(
                        // fit: BoxFit.contain,
                        imagePath: "assets/images/settings_screen_img8.png",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.3,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.amberAccent),
      child: Align(
        alignment: Alignment.topLeft,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              child: Container(
                height: screenHeight * 0.04,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Center(
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 17,
                    ),
                    onPressed: () {
                      // Add your navigation logic here
                    },
                  ),
                ),
              ),
            ),
            const Text(
              "Profile",
              style: TextStyle(fontSize: 16.0),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Profile_Stack_widget extends StatelessWidget {
  const Profile_Stack_widget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Material(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          elevation: 2,
          child: Container(
            width: screenWidth * 0.7,
            height: screenHeight * 0.23,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 0.07 * screenHeight,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // Text("Haris Ahmed (24y)")
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Haris Ahmed ",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    TextSpan(
                                      text: '(24y)',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Icon(
                                Icons.edit_outlined,
                                color: Colors.red,
                                size: 0.02 * screenHeight,
                              )
                            ],
                          ),
                          const Text(
                            "Musician",
                            style: TextStyle(fontSize: 10),
                          ),
                          const Text(
                            "harisahmed@gm.com",
                            style: TextStyle(fontSize: 7),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        ProfileSettingItemWidget(
                          height: screenHeight,
                          width: screenWidth,
                          title: 'Favourities',
                          imagePath: "assets/images/profile_screen_img1.svg",
                        ),
                        ProfileSettingItemWidget(
                          height: screenHeight,
                          width: screenWidth,
                          title: 'Messages',
                          imagePath: "assets/images/profile_screen_img2.svg",
                        ),
                        ProfileSettingItemWidget(
                          height: screenHeight,
                          width: screenWidth,
                          title: 'Memberships',
                          imagePath: "assets/images/profile_screen_img3.svg",
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: -20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CustomImageView(
              fit: BoxFit.cover,
              height: screenHeight * 0.087,
              width: screenWidth * 0.16,
              imagePath: 'assets/images/46bed14295d9fecf2fb3de020613b62a.png',
            ),
          ),
        ),
        Positioned(
          top: 200,
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 110.h,
            width: 280.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Colors.amberAccent,
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.edit_outlined,
                      color: Colors.red,
                      size: 0.02 * screenHeight,
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    "It is a long established fact that a reader will be distracted by the readable content.",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileSettingItemWidget extends StatelessWidget {
  const ProfileSettingItemWidget({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.width,
    required this.height,
  }) : super(key: key);
  final String title;
  final String imagePath;
  final width;
  final height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
            color: Colors.white,
            border:
                Border.symmetric(vertical: BorderSide(color: Colors.black12))),
        child: Column(
          children: [
            CustomImageView(
              imagePath: imagePath,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/res/color.dart';

import '../../common_widgets/custom_image_view.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  static const String routeName = 'Profile-Screen';

  String selectedOption = "";
  // State variable for selected option
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
                  top: 180.h,
                  left:
                      60.w, // Align left edge with the left edge of the screen
                  right: 60.w,
                  child: Profile_Stack_widget(
                      screenWidth: screenWidth, screenHeight: screenHeight),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const _RewardsWidget(),
            const _MyPhotosWidget(),
          ],
        ),
      ),
    );
  }
}

class _MyPhotosWidget extends StatefulWidget {
  const _MyPhotosWidget();

  @override
  State<_MyPhotosWidget> createState() => _MyPhotosWidgetState();
}

class _MyPhotosWidgetState extends State<_MyPhotosWidget> {
  String selectedOption = "Location";
  // State variable for selected option
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
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 40.h,
                color: AppColor.amber1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedOption = "Location";
                        });
                      },
                      child: Text(
                        'Location',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                            ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedOption = "Contact";
                        });
                      },
                      child: Text(
                        'Contact',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                            ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedOption = "My orders";
                        });
                      },
                      child: Text(
                        'My orders',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                            ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedOption = "Payment methods";
                        });
                      },
                      child: Text(
                        'Payment methods',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              // Conditionally render content based on selectedOption
              if (selectedOption == "Location") _locationWidget(),
              if (selectedOption == "Contact") _contactWidget(),
              if (selectedOption == "My orders")
                _MyOrdersWidget(context), // Replace with your widget for orders
              if (selectedOption == "Payment methods")
                _PaymentMethodsWidget(
                    context), // Replace with your widget for methods
            ],
          ),
        ],
      ),
    );
  }
}

Widget _contactWidget() {
  return Container(
      color: AppColor.amber,
      height: 100.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: _buildProfileTextFeildWidget(
          hinttext: "+92 3030303030",
          suffixicon: Icon(Icons.mode_edit_rounded),
          prefixicon: Icon(Icons.phone)));
}

Widget _locationWidget() {
  return Container(
      color: AppColor.amber,
      height: 100.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: _buildProfileTextFeildWidget(
          hinttext: "Karachi Pakistan",
          suffixicon: Icon(Icons.mode_edit_rounded),
          prefixicon: Icon(Icons.location_on_outlined)));
}

class _buildProfileTextFeildWidget extends StatelessWidget {
  _buildProfileTextFeildWidget({
    super.key,
    required this.hinttext,
    required this.prefixicon,
    required this.suffixicon,
  });

  Icon prefixicon, suffixicon;
  final String hinttext;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.none,
      decoration: InputDecoration(
          errorStyle: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
          contentPadding:
              EdgeInsets.symmetric(vertical: 18.h, horizontal: 12.w),
          fillColor: Colors.white,
          filled: true,
          hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w300),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: hinttext,
          suffixIcon: suffixicon,
          prefixIcon: prefixicon),
    );
  }
}

Widget _MyOrdersWidget(BuildContext context) {
  return Container(
    color: AppColor.amber,
    height: 80.h,
    width: double.infinity,
    padding: EdgeInsets.all(10),
    child: Text(
      "No Data Available",
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
          ),
    ),
  );
}

Widget _PaymentMethodsWidget(BuildContext context) {
  return Container(
    color: AppColor.amber,
    height: 80.h,
    width: double.infinity,
    padding: EdgeInsets.all(10),
    child: Text(
      "No Payment method Added",
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
          ),
    ),
  );
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

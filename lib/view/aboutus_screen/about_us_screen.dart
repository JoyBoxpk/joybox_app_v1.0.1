import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  static const String routeName = "About-us-screen";

  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  ScrollController _scrollController = ScrollController();
  double _progressValue = 0.5;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _progressValue = (_scrollController.offset / _scrollController.position.maxScrollExtent) + 0.5;
        _progressValue = _progressValue.clamp(0.0, 1.0); // Clamp the value between 0 and 1
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        text: "About us",
      ),
      body: Stack(
        children: [
          CustomImageView(
            imagePath: "assets/images/about_us_img1.svg",
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.all(20.h),
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                height: 650.h,
                width: 500.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.h),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.6), // Top left color
                      Colors.white.withOpacity(0.6), // Bottom right color
                    ],
                    stops: [0.0, 1.0],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: NotificationListener<ScrollNotification>(
                  onNotification: (notification) {
                    if (notification is ScrollUpdateNotification) {
                      setState(() {
                        _progressValue = (_scrollController.offset / _scrollController.position.maxScrollExtent) + 0.5;
                        _progressValue = _progressValue.clamp(0.0, 1.0); // Clamp the value between 0 and 1
                      });
                    }
                    return true;
                  },
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About Us",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 26.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                         Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley.",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "Our Terms & Conditions",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 26.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                         Text(
                          "when an unknown printer took a galley. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley.",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "Our Privacy",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 26.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                         Text(
                          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley.he printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley.",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w300,
                            
                          ),
                        ),
                        SizedBox(height: 20.h), // Add some space at the bottom for better scrolling
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
               top: 40.h,
                right: 30.w,
                left: 359.w,
                bottom: 30.h,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: SizedBox(
                    width: 6.w,
                    child: LinearProgressIndicator(
                   
                      backgroundColor: Colors.black12,
                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
                      value: _progressValue,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: CustomImageView(
              imagePath: "assets/images/about_us_img2.svg",
            ),
          ),
        ],
      ),
    );
  }
}

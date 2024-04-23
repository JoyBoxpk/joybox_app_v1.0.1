import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/common_widgets/custom_rating_bar.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/reviews_screen/model/Review_inner_model.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({super.key});
  static const String routeName = "Reviews-Screen";

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  final ScrollController _scrollController = ScrollController();
  double _progressValue = 0.5;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _progressValue = (_scrollController.offset /
                _scrollController.position.maxScrollExtent) +
            0.5;
        _progressValue =
            _progressValue.clamp(0.0, 1.0); // Clamp the value between 0 and 1
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
        text: "Reviews",
        actions: [],
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(
            parent: NeverScrollableScrollPhysics()),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Image.asset(
                "assets/images/img1_fast_food_restaurant.png",
                width: 806.w,
                height: 126.h,
              ),
              Stack(
                children: [
                  Positioned(
                    right: 0,
                    child: CustomImageView(
                      imagePath: "assets/images/reviews_screen_img1.png",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: CustomImageView(
                      imagePath: "assets/images/about_us_img2.svg",
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.w, vertical: 10.h),
                        height: 566.h,
                        width: 500.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.h),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white.withOpacity(0.8), // Top left color
                              Colors.white
                                  .withOpacity(0.8), // Bottom right color
                            ],
                            stops: [0.0, 1.0],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white24.withOpacity(0.2),
                              blurRadius: 0.0,
                              spreadRadius: 2.0,
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),
                        child: NotificationListener<ScrollNotification>(
                          onNotification: (notification) {
                            if (notification is ScrollUpdateNotification) {
                              setState(() {
                                _progressValue = (_scrollController.offset /
                                        _scrollController
                                            .position.maxScrollExtent) +
                                    0.5;
                                _progressValue = _progressValue.clamp(0.0,
                                    1.0); // Clamp the value between 0 and 1
                              });
                            }
                            return true;
                          },
                          child: SingleChildScrollView(
                            controller: _scrollController,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ReviewsSectionWidget(
                                  reviews: [
                                    ReviewsInnerModel(
                                      name: 'Syed',
                                      reviewtext: 'Great food and service!',
                                      rating: 4,
                                      date: '3 days ago',
                                    ),

                                    ReviewsInnerModel(
                                      name: 'Syed',
                                      reviewtext:
                                          'Good Quality and quantity.Good experience!',
                                      rating: 5,
                                      date: '1 week ago',
                                    ),
                                    ReviewsInnerModel(
                                      name: 'Syed',
                                      reviewtext: 'Great food and service!',
                                      rating: 4,
                                      date: '3 days ago',
                                    ),

                                    ReviewsInnerModel(
                                      name: 'Syed',
                                      reviewtext:
                                          'Good Quality and quantity.Good experience!',
                                      rating: 5,
                                      date: '1 week ago',
                                    ),
                                    ReviewsInnerModel(
                                      name: 'Syed',
                                      reviewtext: 'Great food and service!',
                                      rating: 4,
                                      date: '3 days ago',
                                    ),

                                    ReviewsInnerModel(
                                      name: 'Syed',
                                      reviewtext:
                                          'Good Quality and quantity.Good experience!',
                                      rating: 5,
                                      date: '1 week ago',
                                    ),
                                    // Add more reviews as needed
                                  ],
                                ),

                                SizedBox(
                                    height: 20
                                        .h), // Add some space at the bottom for better scrolling
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
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  Colors.red),
                              value: _progressValue,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Positioned(
                  //   bottom: 0,
                  //   left: 0,
                  //   child: CustomImageView(
                  //     imagePath: "assets/images/about_us_img2.svg",
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReviewsSectionWidget extends StatelessWidget {
  final List<ReviewsInnerModel> reviews;

  const ReviewsSectionWidget({
    Key? key,
    required this.reviews,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(reviews.length, (index) {
          final review = reviews[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                horizontalTitleGap: 6,
                leading: CircleAvatar(
                    child:
                        Image.asset("assets/images/reviews_screen_img2.png")),
                title: Text(
                  review.name,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                trailing: CustomImageView(
                  imagePath: "assets/images/reviews_screen_img3.svg",
                  height: 30.h,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 230.w,
                    child: Text(
                      review.reviewtext,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonRatingBar(
                        color: Colors.red,
                        itemCount: 5,
                        initialRating: review.rating.toDouble(),
                        unselectedColor: Colors.black26,
                      ),
                      Text(
                        review.date,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
              //const SizedBox(height: 20), // Adjust as needed
              if (index != reviews.length - 1)
                const Divider(
                  color: AppColor.amber,
                  thickness: 1.3,
                ),
              const SizedBox(
                  height:
                      10), // Adjust as needed // Add a divider if not the last item
            ],
          );
        }),
      ),
    );
  }
}

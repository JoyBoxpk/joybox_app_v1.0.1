import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/common_icon_button.dart';
import 'package:joy_box_app/model/offer_widget_one_model.dart';
import 'package:joy_box_app/model/offer_widget_two_model.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/offers_screen/widgets/offer_widget_one.dart';
import 'package:joy_box_app/view/offers_screen/widgets/offer_widget_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../model/offer_item_model.dart';
import '../home_screen/widgets/offer_item_widget.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({super.key});

  static const String routeName = 'offers-screen';

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  final CarouselController carouselController1 = CarouselController();
  int activeIndex1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      appBar: const CommonAppBar(
        backgroundColor: AppColor.black,
        text: "Offers & Vouchers",
        titleColor: AppColor.white,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 15.h),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                width: double.infinity,
                height: 210.h,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 100.w,
                          height: 18.h,
                          color: AppColor.white,
                          child: Text(
                            "SPECIAL OFFER",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                    fontSize: 10.sp,
                                    color: AppColor.red1,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 0.5),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          "MEAT BIRYANI",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 16.sp,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Image.asset(
                      "assets/images/offers_screen_img1.png",
                      width: 300.w,
                      fit: BoxFit.cover,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonIconButton(
                          onPressed: () {},
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "EAT YOUR",
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    fontSize: 11.sp,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "FAVOURITE",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w700,
                                          color: AppColor.white,
                                        ),
                                  ),
                                  const TextSpan(
                                    text: " ",
                                  ),
                                  TextSpan(
                                    text: "BIRYANI",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(
                                          fontSize: 11.sp,
                                          color: AppColor.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2.h,
                thickness: 1.5.h,
              ),
              SizedBox(height: 40.h),
              Stack(
                children: [
                  Image.asset("assets/images/offers_screen_img8.png"),
                  CarouselSlider.builder(
                    itemCount: OfferItemModel.offerItemList.length,
                    options: CarouselOptions(
                      clipBehavior: Clip.none,
                      viewportFraction: 0.9999,
                      height: 215.h,
                      autoPlay: false,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                      onPageChanged: (index, reason) {},
                    ),
                    itemBuilder: (context, index, realIndex) {
                      final item = OfferItemModel.offerItemList[index];
                      return OfferItemWidget(
                        offerItem: item,
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              Container(
                margin: EdgeInsets.only(left: 15.w),
                height: 360.h,
                child: Expanded(
                  child: ListView.separated(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    itemCount: OfferWidgetOneModel.offerItemsList.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 15.h);
                    },
                    itemBuilder: (context, index) {
                      final item = OfferWidgetOneModel.offerItemsList[index];
                      return OfferWidgetOne(
                        item: item,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 90.h),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -80.h,
                    right: 1.w,
                    child: Image.asset(
                      "assets/images/offers_screen_img9.png",
                    ),
                  ),
                  CarouselSlider.builder(
                    itemCount: OfferWidgetTwoModel.offerItemsList.length,
                    options: CarouselOptions(
                      clipBehavior: Clip.none,
                      viewportFraction: 0.9999,
                      height: 220.h,
                      autoPlay: false,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex1 = index;
                        });
                      },
                    ),
                    itemBuilder: (context, index, realIndex) {
                      final item = OfferWidgetTwoModel.offerItemsList[index];
                      return OfferWidgetTwo(
                        item: item,
                      );
                    },
                    carouselController: carouselController1,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.center,
                child: AnimatedSmoothIndicator(
                  activeIndex: activeIndex1,
                  count: OfferWidgetTwoModel.offerItemsList.length,
                  effect: WormEffect(
                    dotHeight: 12.h,
                    dotWidth: 12.w,
                    activeDotColor: AppColor.red2,
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

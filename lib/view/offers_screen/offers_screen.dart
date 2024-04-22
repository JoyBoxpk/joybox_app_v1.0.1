import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/common_icon_button.dart';
import 'package:joy_box_app/common_widgets/custom_smooth_indicator.dart';
import 'package:joy_box_app/model/offer_item_model.dart';
import 'package:joy_box_app/model/offer_widget_one_model.dart';
import 'package:joy_box_app/model/offer_widget_two_model.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/home_screen/widgets/offer_item_widget.dart';
import 'package:joy_box_app/view/offers_screen/widgets/offer_widget_one.dart';
import 'package:joy_box_app/view/offers_screen/widgets/offer_widget_two.dart';

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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSpecialOffer(),
              Divider(height: 2.h, thickness: 1.5.h),
              SizedBox(height: 40.h),
              _buildOfferCarousel(),
              SizedBox(height: 40.h),
              _buildOfferWidgetList(),
              SizedBox(height: 90.h),
              _buildSpecialOfferCarousel(),
              SizedBox(height: 40.h),
              CustomSmoothIndicator(
                activeIndex: activeIndex1,
                itemCount: OfferWidgetTwoModel.offerItemsList.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSpecialOffer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      width: double.infinity,
      height: 220.h,
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
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 10.sp,
                      color: AppColor.red1,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.5),
                ),
              ),
              SizedBox(width: 5.w),
              Text(
                "MEAT BIRYANI",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
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
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
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
    );
  }

  Widget _buildOfferCarousel() {
    return Stack(
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
    );
  }

  Widget _buildOfferWidgetList() {
    return Container(
      margin: EdgeInsets.only(left: 20.w),
      height: 345.h,
      child: ListView.separated(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: OfferWidgetOneModel.offerItemsList.length,
        separatorBuilder: (context, index) {
          return SizedBox(width: 16.h);
        },
        itemBuilder: (context, index) {
          final item = OfferWidgetOneModel.offerItemsList[index];
          return OfferWidgetOne(
            item: item,
          );
        },
      ),
    );
  }

  Widget _buildSpecialOfferCarousel() {
    return Container(
      margin: EdgeInsets.only(left: 1.w),
      child: Stack(
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
              enlargeCenterPage: true,
              viewportFraction: 0.9999,
              height: 210.h,
              autoPlay: false,
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
    );
  }
}

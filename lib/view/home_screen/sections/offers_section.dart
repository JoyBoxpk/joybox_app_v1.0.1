import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_smooth_indicator.dart';
import '../../../model/offer_item_model.dart';
import '../../routes.dart';
import '../widgets/offer_item_widget.dart';

class OffersSection extends StatefulWidget {
  const OffersSection({super.key});

  @override
  State<OffersSection> createState() => _OffersSectionState();
}

class _OffersSectionState extends State<OffersSection> {
  int _activeIndex = 0;
  final _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.w),
      width: double.infinity,
      height: 280.h,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Offers",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.black, fontSize: 22.sp)),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, RoutePaths.offers),
                child: Text("View all",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                        )),
              )
            ],
          ),
          SizedBox(height: 20.h),
          CarouselSlider.builder(
            itemCount: OfferItemModel.offerItemList.length,
            options: CarouselOptions(
              clipBehavior: Clip.none,
              viewportFraction: 0.9999999,
              height: 210.h,
              autoPlay: false,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _activeIndex = index;
                });
              },
            ),
            itemBuilder: (context, index, realIndex) {
              final item = OfferItemModel.offerItemList[index];
              return OfferItemWidget(
                offerItem: item,
              );
            },
            carouselController: _carouselController,
          ),
          CustomSmoothIndicator(
            activeIndex: _activeIndex,
            itemCount: OfferItemModel.offerItemList.length,
          ),
        ],
      ),
    );
  }
}

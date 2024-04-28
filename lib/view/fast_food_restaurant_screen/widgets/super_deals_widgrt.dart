import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/common_widgets/custom_smooth_indicator.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/fast_food_restaurant_screen/model/super_deal_item_model.dart';

class SuperDealsWidget extends StatefulWidget {
  const SuperDealsWidget({Key? key}) : super(key: key);

  @override
  _SuperDealsWidgetState createState() => _SuperDealsWidgetState();
}

class _SuperDealsWidgetState extends State<SuperDealsWidget> {
  final ScrollController _scrollController = ScrollController();
  int _activeIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    setState(() {
      _activeIndex = (_scrollController.offset / 200.w).round();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Super Saver Deals",
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
        ),
        SizedBox(height: 30.h),
        Stack(
          children: [
            SingleChildScrollView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              controller: _scrollController,
              child: Row(
                children: [
                  for (var item in superDealItems)
                    Padding(
                      padding: EdgeInsets.only(right: 15.w),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                item.image,
                                width: 140.w,
                                height: 140.h,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 140.h,
                                width: 200.w,
                                decoration: BoxDecoration(
                                  color: AppColor.amber,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      item.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Text(
                                      item.description,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    CommonElevatedButton(
                                      onPressed: () {},
                                      text: item.price,
                                      height: 34.h,
                                      width: 95.w,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: -20.h,
                            left: 120.w,
                            child: Container(
                              alignment: Alignment.center,
                              width: 50.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.red1,
                              ),
                              child: Text(
                                item.discount,
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.white,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 30.h),
        CustomSmoothIndicator(
          activeIndex: _activeIndex,
          itemCount: superDealItems.length,
          height: 16.h,
          width: 16.w,
          activeColor: Colors.red,
          inactiveColor: AppColor.blueGrey,
        ),
      ],
    );
  }
}

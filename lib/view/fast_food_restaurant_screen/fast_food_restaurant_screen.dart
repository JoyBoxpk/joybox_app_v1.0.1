import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/fast_food_restaurant_screen/model/cart_item_model.dart';
import 'package:joy_box_app/view/fast_food_restaurant_screen/model/fast_food_rest_tab_model.dart';
import 'package:joy_box_app/view/fast_food_restaurant_screen/model/food_item_deal_model.dart';
import 'package:joy_box_app/view/fast_food_restaurant_screen/model/most_ordered_item_model.dart';
import 'package:joy_box_app/view/fast_food_restaurant_screen/model/slider_party_item_model.dart';
import 'package:joy_box_app/view/fast_food_restaurant_screen/widgets/cart_item_widget.dart';
import 'package:joy_box_app/view/fast_food_restaurant_screen/widgets/cricket_craze_deals_widget.dart';
import 'package:joy_box_app/view/fast_food_restaurant_screen/widgets/foodies_review_widget.dart';
import 'package:joy_box_app/view/fast_food_restaurant_screen/widgets/most_ordered_food_widget.dart';
import 'package:joy_box_app/view/fast_food_restaurant_screen/widgets/slider_party_widget.dart';

class FastFoodRestaurantScreen extends StatefulWidget {
  const FastFoodRestaurantScreen({Key? key});

  static const String routeName = "Restaurant-Screen";

  @override
  State<FastFoodRestaurantScreen> createState() =>
      _FastFoodRestaurantScreenState();
}

class _FastFoodRestaurantScreenState extends State<FastFoodRestaurantScreen> {
  int _selectedTabIndex = 0; // Variable to track selected tab index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        isCircular: true,
        text: "Restaurant",
        actions: [
          IconButton(
            icon: const Icon(
              Icons.share,
              color: Color(0xFFF14530),
            ),
            onPressed: () {
              // Add your navigation logic here
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Color(0xFFF14530),
            ),
            onPressed: () {
              // Add your navigation logic here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15.h),
            Image.asset(
              "assets/images/img1_fast_food_restaurant.png",
              width: 806.w,
              height: 126.h,
            ),
            SizedBox(height: 22.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.w),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFirstRow(context),
                  SizedBox(height: 20.h),
                  _buildSecondRow(context),
                  SizedBox(height: 20.h),
                  _buildTabs(),
                  // Conditionally render content based on selected tab index
                  _buildTabContent(),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
            FoodiesReviewWidget(),
            SizedBox(height: 30.h),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CricketCrazeDealWidget(),
                  SizedBox(height: 30.h),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      itemCount: sliderlist.length,
                      itemBuilder: (context, index) {
                        final item = sliderlist[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SlidersPartyItemWidget(item: item),
                            SizedBox(height: 10.h),
                            Divider(
                              color: AppColor.amber,
                              thickness: 1.2.h,
                            ),
                            SizedBox(height: 35.h),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Inside _FastFoodRestaurantScreenState build method
            CartWidget(
              cartItem: CartItemModel(itemCount: 1, totalPrice: 1599.00),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent() {
    // Conditionally render content based on selected tab index
    switch (_selectedTabIndex) {
      case 0:
        return MostOrderedFoodWidget(
          foodItemDealModel: popularFoodItemDealModelList,
          mostOrderitemModel: MostOrderedItemModel(
              imgPath: "assets/images/img2_fast_food_restaurant.png",
              Price: "Rs. 699"),
        );
      case 1:
        return Container(
          // Replace this with content for "Pizza" tab
          child: MostOrderedFoodWidget(
            mostOrderitemModel: MostOrderedItemModel(
                imgPath: "assets/images/pizza_banner_img1.png",
                Price: "Rs. 999"),
            foodItemDealModel: pizzaFoodItemDealModelList,
          ),
        );
      case 2:
        return Container(
          // Replace this with content for "Wings" tab
          child: Text("Wings Tab Content"),
        );
      case 3:
        return Container(
          // Replace this with content for "Rolls" tab
          child: Text("Rolls Tab Content"),
        );
      case 4:
        return Container(
          // Replace this with content for "Sandwich" tab
          child: Text("Sandwich Tab Content"),
        );
      case 5:
        return Container(
          // Replace this with content for "Nuggets" tab
          child: Text("Nuggets Tab Content"),
        );
      default:
        return Container();
    }
  }

  Widget _buildSecondRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.star_border_outlined,
                  color: AppColor.red2,
                  size: 25.sp,
                ),
                SizedBox(width: 5.w),
                Text(
                  "4.1 \t15000+ rating",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 14.sp,
                      ),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            SizedBox(
              width: 140.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.timer,
                    color: AppColor.red2,
                    size: 25.sp,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Delivery: 35 min",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Text(
          "See reviews",
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.red2,
              ),
        ),
      ],
    );
  }

  Widget _buildFirstRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "0.9km away | Free delivery",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 14.sp),
            ),
            SizedBox(height: 5.w),
            Text(
              "Rs.249.00 Minimum",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 14.sp),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Opening 12pm - 2am",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Text(
              "More info",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.red2,
                  ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTabs() {
    return SizedBox(
      height: 50.h,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: FastFoodRestaurantTabModel.fastFoodItemList.length,
        separatorBuilder: (context, index) {
          return SizedBox(width: 5.h);
        },
        itemBuilder: (context, index) {
          final tab = FastFoodRestaurantTabModel.fastFoodItemList[index];
          return FastFoodRestaurantTab(
            index: index,
            tab: tab,
            isSelected: index == _selectedTabIndex,
            onTap: () {
              setState(() {
                _selectedTabIndex = index; // Update selected tab index
              });
            },
          );
        },
      ),
    );
  }
}

class FastFoodRestaurantTab extends StatelessWidget {
  final int index;
  final FastFoodRestaurantTabModel tab;
  final bool isSelected;
  final VoidCallback onTap;

  const FastFoodRestaurantTab({
    required this.index,
    required this.tab,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColor.amber : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: FittedBox(
          alignment: Alignment.center,
          fit: BoxFit.none,
          child: Text(
            tab.title,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
        ),
      ),
    );
  }
}

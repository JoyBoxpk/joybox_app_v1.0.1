import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../model/traditional_restaurants_item_model.dart';
import '../../traditional_restaurant/traditional_restaurant_screen.dart';
import '../widgets/traditional_item_widget.dart';

class TraditionalRestaurantsSection extends StatelessWidget {
  const TraditionalRestaurantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250.h,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Traditional Restaurants",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.black, fontSize: 22.sp)
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, TraditionalRestaurantScreen.routeName),
                child: Text(
                  "See all",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: Colors.black,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  )
                ),
              )
            ],
          ),
          SizedBox(height: 70.h),
          Expanded(
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: TraditionalRestaurantsItemModel.itemsList.length,
              separatorBuilder: (context, index) {
                return SizedBox(width: 20.h);
              },
              itemBuilder: (context, index) {
                final item = TraditionalRestaurantsItemModel.itemsList[index];
                return TraditionalItemWidget(
                  traditionalItem: item,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

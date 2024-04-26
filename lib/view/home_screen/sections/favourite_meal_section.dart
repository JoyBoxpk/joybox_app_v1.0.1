import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../model/your_favourite_meal_item_model.dart';
import '../../routes.dart';
import '../widgets/your_favourite_meal_item.dart';

class FavouriteMealSection extends StatelessWidget {
  const FavouriteMealSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 310.h,
      margin: EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Your Favourite meal",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.black, fontSize: 22.sp)),
              GestureDetector(
                onTap: ()=> Navigator.pushNamed(context, RoutePaths.favMeal),
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
          Expanded(
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: YourFavouriteMealItemModel.favouriteItemList.length,
              separatorBuilder: (context, index) {
                return SizedBox();
              },
              itemBuilder: (context, index) {
                final item =
                YourFavouriteMealItemModel.favouriteItemList[index];
                return YourFavouriteMealItem(
                  itemModel: item,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

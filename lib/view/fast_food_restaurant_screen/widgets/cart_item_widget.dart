import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/fast_food_restaurant_screen/model/cart_item_model.dart';

class CartWidget extends StatelessWidget {
  final CartItemModel cartItem;

  const CartWidget({Key? key, required this.cartItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.red1,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        width: double.infinity,
        height: 100.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColor.white),
                  ),
                  child: FittedBox(
                    alignment: Alignment.center,
                    fit: BoxFit.none,
                    child: Text(
                      cartItem.itemCount.toString(),
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: AppColor.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                Text(
                  "View your cart",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColor.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w800,
                      ),
                )
              ],
            ),
            Text(
              "PKR. ${cartItem.totalPrice.toStringAsFixed(2)}",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: AppColor.white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w800,
                  ),
            )
          ],
        ),
      ),
    );
  }
}

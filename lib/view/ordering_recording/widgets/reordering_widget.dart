import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/ordering_recording/model/recorder_food_item_model.dart';

class ReorderInnerWidet extends StatelessWidget {
  final ReorderFoodItemModel foodItem;

  const ReorderInnerWidet({
    Key? key,
    required this.foodItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: "assets/images/transactions_screen_img3.jpg",
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodItem.name,
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                ),
                      ),
                      Text(
                        foodItem.category,
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "PKR. ${foodItem.price.toStringAsFixed(0)}",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                  ),
                  Text(
                    "${foodItem.date.day} ${_getMonthName(foodItem.date.month)} ${foodItem.date.year}",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                  ),
                ],
              )
            ],
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(const Color(0XFFFFC727)),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Soon",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  String _getMonthName(int month) {
    switch (month) {
      case 1:
        return 'Jan';
      case 2:
        return 'Feb';
      case 3:
        return 'Mar';
      case 4:
        return 'Apr';
      case 5:
        return 'May';
      case 6:
        return 'Jun';
      case 7:
        return 'Jul';
      case 8:
        return 'Aug';
      case 9:
        return 'Sep';
      case 10:
        return 'Oct';
      case 11:
        return 'Nov';
      case 12:
        return 'Dec';
      default:
        return '';
    }
  }
}

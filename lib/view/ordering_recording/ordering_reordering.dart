import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/ordering_recording/model/order_food_item_model.dart';

// Define a model class for items
class ItemModel {
  final String name;

  ItemModel({
    required this.name,
  });
}

class OrderingReordering extends StatelessWidget {
  OrderingReordering({super.key});

  static const String routeName = "Ordering-screen";

  // Sample list of items
  final List<ItemModel> items = [
    ItemModel(name: 'Order'),
    ItemModel(name: 'Reordering'),
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        text: "Order and reordering",
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildTabs(context, items),
              // Add your tab content here
              OrderingInnerWidet(
                foodItem: OrderFoodItemModel(
                    name: 'Burger O’Clock',
                    category: 'Chicken Sliders Deal for  4',
                    price: 3000,
                    date: DateTime.now()), // Provide a placeholder instance
              ),
              const Divider(),
              OrderingInnerWidet(
                foodItem: OrderFoodItemModel(
                    name: 'Burger O’Clock',
                    category: 'Chicken Sliders',
                    price: 3000,
                    date: DateTime.now()), // Provide a placeholder instance
              ),
              const Divider(),
              OrderingInnerWidet(
                foodItem: OrderFoodItemModel(
                    name: 'Burger O’Clock',
                    category: 'Chicken Sliders Cricket Deal',
                    price: 3000,
                    date: DateTime.now()), // Provide a placeholder instance
              ),
              const Divider(),
              OrderingInnerWidet(
                foodItem: OrderFoodItemModel(
                    name: 'Burger O’Clock',
                    category: 'Chicken Sliders',
                    price: 3000,
                    date: DateTime.now()), // Provide a placeholder instance
              ),
              const Divider(),
              OrderingInnerWidet(
                foodItem: OrderFoodItemModel(
                    name: 'Burger O’Clock',
                    category: 'Chicken Sliders',
                    price: 3000,
                    date: DateTime.now()), // Provide a placeholder instance
              ),
              const Divider()
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget BuildTabs(BuildContext context, List<ItemModel> items) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Row(
        children: items.map((item) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: items.indexOf(item) == 0
                  ? AppColor.amber // Apply amber color to the first item
                  : null, // No background color for other items
            ),
            child: buildTabItem(item.name, context),
          );
        }).toList(),
      ),
    ),
  );
}

Widget buildTabItem(String text, BuildContext context) {
  bool isSelected = false; // Set this to true for selected tab
  return GestureDetector(
    onTap: () {
      // Handle tab selection
      // You can navigate to a different screen or update the UI based on the selected tab
    },
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: isSelected
                  ? Colors.white
                  : Colors.black, // Set text color based on selection
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
      ),
    ),
  );
}

class OrderingInnerWidet extends StatelessWidget {
  final OrderFoodItemModel foodItem;

  const OrderingInnerWidet({
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
              backgroundColor: MaterialStateProperty.all(const Color(0XFFFFC727)),
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
              "Status",
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

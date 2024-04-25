import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/ordering_recording/model/order_food_item_model.dart';
import 'package:joy_box_app/view/ordering_recording/model/recorder_food_item_model.dart';
import 'package:joy_box_app/view/ordering_recording/widgets/ordering_widget.dart';
import 'package:joy_box_app/view/ordering_recording/widgets/reordering_widget.dart';

// Define a model class for items
class ItemModel {
  final String name;

  ItemModel({
    required this.name,
  });
}

class OrderingReordering extends StatefulWidget {
  OrderingReordering({super.key});

  static const String routeName = "Ordering-screen";

  @override
  State<OrderingReordering> createState() => _OrderingReorderingState();
}

class _OrderingReorderingState extends State<OrderingReordering> {
  late int selectedIndex; // Track the selected tab index

  // Sample list of items
  final List<ItemModel> items = [
    ItemModel(name: 'Order'),
    ItemModel(name: 'Reordering'),
    // Add more items as needed
  ];
  @override
  void initState() {
    super.initState();
    selectedIndex = 0; // Initialize the selected index
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        isCircular: true,
        text: "Order and reordering",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildTabs(context, items),
              // Conditionally render the content based on the selected tab index
              // Conditionally render the content based on the selected tab index
              selectedIndex == 1
                  ? Column(
                      children: ReorderFoodItemModel.reorderFoodItemtList
                          .map((foodItem) => Column(
                                children: [
                                  ReorderInnerWidet(foodItem: foodItem),
                                  if (ReorderFoodItemModel
                                          .reorderFoodItemtList.last !=
                                      foodItem)
                                    _buildDivider(), // Add divider if it's not the last item
                                ],
                              ))
                          .toList(),
                    )
                  : Column(
                      children: OrderFoodItemModel.orderFoodItemtList
                          .map((foodItem) => Column(
                                children: [
                                  OrderingInnerWidet(foodItem: foodItem),
                                  if (OrderFoodItemModel
                                          .orderFoodItemtList.last !=
                                      foodItem)
                                    _buildDivider(), // Add divider if it's not the last item
                                ],
                              ))
                          .toList(),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget BuildTabs(BuildContext context, List<ItemModel> items) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: Row(
          children: items.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;
            return buildTabItem(item.name, context, index);
          }).toList(),
        ),
      ),
    );
  }

  Widget buildTabItem(String text, BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        print("Tabbed Successfully");
        // Handle tab selection
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: selectedIndex == index ? AppColor.amber : null,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: selectedIndex == index ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
        ),
      ),
    );
  }
}

class _buildDivider extends StatelessWidget {
  const _buildDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: const Divider(
        thickness: 1.4,
      ),
    );
  }
}

// ignore: non_constant_identifier_names


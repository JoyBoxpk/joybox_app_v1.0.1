import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/core/utils/padding_extension.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/transaction_screen/widgets/transaction_balance_widget.dart';
import 'package:joy_box_app/view/transaction_screen/widgets/transaction_inner_widget.dart';

import '../../common_widgets/common_payment_method_widget.dart';
import 'model/transactions_inner_widget_model.dart';

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({super.key});

  static const String routeName = 'Transactions-screen';

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  int selectedIndex = 0;
  int selectedTransactionIndex = 0;

  final List items = [
    "All",
    "Earned",
    "Spend"
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        isCircular: true,
        text: "Transaction",
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTabs(context),
            const TransactionBalanceWidget(),
            SizedBox(
              height: 25.h,
            ),
            CommonPaymentMethodWidget(containerHeight: 265.h),
            Material(
              elevation: 20,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Transactions",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 40.h,
                      width: 370.w,
                      decoration: BoxDecoration(
                          color: AppColor.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(5)),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          final item = items[index];
                          return buildTransactionTabItem(item, context, index);
                        },
                      ),
                    ),
                    SizedBox(
                        height: 250.h,
                        child:
                            TransactionInnerWidet(transactions: transactions))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTabs(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          children: [
            Container(
              child: buildTopTabItem("Card", context, selectedIndex == 0, 0),
            ),
            const SizedBox(width: 10), // Add space between tabs
            buildTopTabItem("JB Wallet", context, selectedIndex == 1, 1),
          ],
        ),
      ),
    );
  }

  Widget buildTopTabItem(
      String text, BuildContext context, bool isSelected, int index) {
    bool isSelected = index == selectedIndex;

    return GestureDetector(
      onTap: () {
        setState(() {
          // Handle tab selection
          selectedIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: selectedIndex == index ? AppColor.amber : null,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 14.sp,
              ),
        ),
      ),
    );
  }

  Widget buildTransactionTabItem(String text, BuildContext context, int index) {
    bool isSelected = index == selectedTransactionIndex;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTransactionIndex = index;
        });
      },
      child: Container(
        width: 118.w,
        decoration: BoxDecoration(
          color: isSelected ? Colors.red : null,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.sp,
                ),
          ),
        ),
      ),
    );
  }
}

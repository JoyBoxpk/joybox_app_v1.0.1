import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';

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
        text: "Transaction",
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildTabs(context),
            const TransactionBalanceWidget(),
            CustomImageView(
              fit: BoxFit.cover,
              imagePath: "assets/images/Group 289413.png",
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Transactions",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 40.h,
                    width: 400.w,
                    color: AppColor.black.withOpacity(0.1),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return buildTransactionTabItem(item, context, index);
                      },
                    ),
                  ),
                  const TransactionInnerWidet(),
                  const Divider(),
                  const TransactionInnerWidet(),
                  const Divider(),
                  const TransactionInnerWidet(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget BuildTabs(BuildContext context) {
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
          print("Tabbed");
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
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
          print("Tabbed");
        });
      },
      child: Container(
        width: 120.w,
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

class TransactionBalanceWidget extends StatelessWidget {
  const TransactionBalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                  blurStyle: BlurStyle.outer,
                  offset: Offset(2, 1),
                  spreadRadius: 2)
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your balance",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      // fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'RS .',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            // fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    TextSpan(
                      text: ' 130.000',
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                // fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 50.w,
        ),
        Column(
          children: [
            Text(
              "18 Jan 2019",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    // fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.amberAccent),
                  borderRadius: BorderRadius.circular(6.h)),
              child: const Icon(
                Icons.add,
                color: Colors.red,
              ),
            )
          ],
        )
      ],
    );
  }
}

class TransactionInnerWidet extends StatelessWidget {
  const TransactionInnerWidet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
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
                    "Burger O’Clock",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                  ),
                  Text("Food n Drinks",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ))
                ],
              ),
            ],
          ),
          Column(
            children: [
              Text("Rs. 3000",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: Colors.red)),
              Text("24th Nov 2023",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ))
            ],
          )
        ],
      ),
    );
  }
}

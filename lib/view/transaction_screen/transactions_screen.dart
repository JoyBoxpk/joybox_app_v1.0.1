import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});
  static const String routeName = 'Transactions-screen';

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
                  Container(
                    color: const Color(0XFFD9D9D9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildTabItem("All", context),
                        //SizedBox(width: 10), // Add space between tabs
                        buildTabItem("Earned", context),
                        //SizedBox(width: 10), // Add space between tabs
                        buildTabItem("Spend", context),
                      ],
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
          padding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(
                            // fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    TextSpan(
                      text: ' 130.000',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
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
              padding: EdgeInsets.symmetric(
                  horizontal: 20.w, vertical: 20.h),
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

Widget BuildTabs(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColor.amber),
              child: buildTabItem("Card", context)),
          const SizedBox(width: 10), // Add space between tabs
          buildTabItem("JB Wallet", context),
          // Add space between tabs
        ],
      ),
    ),
  );
}

Widget buildTabItem(String text, BuildContext context) {
  bool isSelected = false; // Set this to true for selected tab
  return GestureDetector(
    onTap: () {
      // Handle tab selection
    },
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected
            ? const Color(0xFFFFD726)
            : null, // Set selected background color
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: isSelected
                  // ignore: dead_code
                  ? Colors.white
                  : Colors.black, // Set text color based on selection
              fontWeight: FontWeight.normal,
              fontSize: 14.sp,

              // color: isSelected
              //     ? Colors.white
              //     : Colors.black, // Set text color based on selection
              // fontWeight: FontWeight.bold,
            ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/view/cart_screen/cart_screen.dart';
import '../../../common_widgets/custom_checkbox_button.dart';
import '../../../common_widgets/custom_image_view.dart';
import '../../../res/color.dart';

class InnerFastFoodResScreen extends StatelessWidget {
  const InnerFastFoodResScreen({super.key});

  static const String routeName = 'Innerfastfood';

  @override
  Widget build(BuildContext context) {
    final textstyle = Theme.of(context).textTheme;

    return Scaffold(
      appBar: CommonAppBar(
        isCircular: true,
        backgroundColor: Colors.red,
        backArrowColor: Colors.red,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.share,
              color: Colors.white,
            ),
            onPressed: () {
              // Add your navigation logic here
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
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
            SizedBox(
              height: 10.h,
            ),
            CustomImageView(
              imagePath: "assets/images/Mask group.png",
              height: 240.w,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sliders Party in the Box',
                        style: textstyle.bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "RS. 1599.00",
                        style: textstyle.bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text(
                      'Any 4 chicken sliders with 1 gourmet fries from mayo garlic or wild fries and 2 soft drinks'),
                  SizedBox(
                    height: 10.h,
                  ),
                  const PurchuseDetails(
                    itemTxt: "Choose your 1st Chicken Slider",
                    iscompeleted: false,
                    state: 'Required',
                  ),
                  SizedBox(
                    height: 20.w,
                  ),
                  const PurchuseDetails(
                    itemTxt: "Choose your 2nd Chicken Slider",
                    iscompeleted: false,
                    state: "Required",
                  ),
                  SizedBox(
                    height: 20.w,
                  ),
                  const PurchuseDetails(
                    itemTxt: "Choose your 3rd Chicken Slider",
                    iscompeleted: false,
                    state: "Required",
                  ),
                  SizedBox(
                    height: 20.w,
                  ),
                  const PurchuseDetails(
                    itemTxt: "Choose your Gourmet Fries",
                    iscompeleted: true,
                    state: "Completed",
                  ),
                  SizedBox(
                    height: 20.w,
                  ),
                  const Frequently_bought(),
                  SizedBox(
                    height: 20.w,
                  ),
                  const RemoveProductWidget(),
                ],
              ),
            ),
            const cart_navbar()
          ],
        ),
      ),
    );
  }
}

class cart_navbar extends StatelessWidget {
  const cart_navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textstyle = Theme.of(context).textTheme;

    return Material(
      elevation: 20,
      child: Container(
        height: 100.w,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
          //padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          //width: double.infinity,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0XFFF14530)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Increment_Decrement_Widget(
                    text: "-",
                    Border_Color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "1",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Increment_Decrement_Widget(
                    text: "+",
                    Backgroundcolor: Colors.amberAccent,
                    Border_Color: Colors.amberAccent,
                  ),
                ],
              ),
              InkWell(
                onTap: () => context.goNamed(CartScreen.routeName),
                child: Container(
                  width: 160.h,
                  height: 80.w,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amberAccent),
                  child: Center(
                      child: Text(
                    "Add to cart",
                    style: textstyle.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15.h),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Increment_Decrement_Widget extends StatelessWidget {
  const Increment_Decrement_Widget({
    super.key,
    this.Border_Color,
    this.Backgroundcolor,
    required this.text,
  });

  final Color? Border_Color, Backgroundcolor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.h,
      height: 50.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Backgroundcolor,
          border: Border.all(color: Border_Color!, strokeAlign: 1)),
      child: Center(
          child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              //fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: AppColor.white,
            ),
      )),
    );
  }
}

class RemoveProductWidget extends StatelessWidget {
  const RemoveProductWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "If this product is not availabe",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.amberAccent),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Remove it from my order",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.normal,
                        color: AppColor.black,
                      ),
                ),
                const Icon(
                  Icons.arrow_right_sharp,
                  color: Colors.amberAccent,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PurchuseDetails extends StatelessWidget {
  const PurchuseDetails(
      {required this.itemTxt,
      required this.state,
      required this.iscompeleted,
      Key? key})
      : super(key: key);

  final String itemTxt;
  final String state;
  final bool iscompeleted;

  @override
  Widget build(BuildContext context) {
    final textstyle = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      height: 250.w,
      decoration: BoxDecoration(
        color: iscompeleted ? Colors.red : const Color(0XFFFFD726),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(itemTxt,
                      style: TextStyle(
                          color: iscompeleted ? Colors.white : Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold)),
                  Text(
                    iscompeleted ? "Done" : 'Select one',
                    style: iscompeleted
                        ? textstyle.bodyMedium!.copyWith(color: Colors.white)
                        : textstyle.bodyMedium,
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.all(13.0),
                decoration: BoxDecoration(
                    color: iscompeleted ? Colors.white : Colors.redAccent,
                    borderRadius: BorderRadius.circular(13)),
                child: Text(state,
                    style: iscompeleted
                        ? textstyle.bodyMedium
                        : textstyle.bodyMedium!.copyWith(color: Colors.white)),
              )
            ],
          ),
          PurchuseDetailsSection(
            text: "Chick n Crisp Slider",
            isCompleted: iscompeleted,
          ),
          PurchuseDetailsSection(
            text: "Fire Bird Slider",
            isCompleted: iscompeleted,
          ),
          PurchuseDetailsSection(
            text: "Chick n Crisp jalapeno spark slider",
            isCompleted: iscompeleted,
          ),
          PurchuseDetailsSection(
            text: "Chick n Crisp Smokey tang Slider",
            isCompleted: iscompeleted,
          )
        ],
      ),
    );
  }
}

class PurchuseDetailsSection extends StatelessWidget {
  const PurchuseDetailsSection({
    required this.isCompleted,
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    final textstyle = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomCheckboxButton(
                checkColor: isCompleted ? AppColor.amber : AppColor.red1,
                bordercolor: Colors.white,
                initialValue: false, // Set initial value of checkbox
                onChanged: (value) {
                  // Handle checkbox value change here
                  print('Checkbox value: $value');
                },
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                text,
                style: isCompleted
                    ? textstyle.bodyMedium!
                        .copyWith(color: Colors.white, fontSize: 12.h)
                    : textstyle.bodyMedium!.copyWith(fontSize: 12.h),
                maxLines: 2,
              )
            ],
          ),
          Text(
            "Free",
            style: isCompleted
                ? textstyle.bodyMedium!
                    .copyWith(color: Colors.white, fontSize: 12.h)
                : textstyle.bodyMedium!.copyWith(fontSize: 12.h),
          )
        ],
      ),
    );
  }
}

class Frequently_bought extends StatelessWidget {
  const Frequently_bought({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textstyle = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(9),
      margin: const EdgeInsets.all(9),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text("Frequently bought together",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
              Material(
                elevation: 10, // Set elevation value as needed
                borderRadius: BorderRadius.circular(13),
                child: Container(
                  padding: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Text(
                    "Optional",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                          color: AppColor.white,
                        ),
                  ),
                ),
              )
            ],
          ),
          const FrequentRowSection(
            title: 'Fries',
            price: "199.00",
            imagpath: "assets/images/French fries.png",
          ),
          const FrequentRowSection(
            title: 'Fries',
            price: "199.00",
            imagpath:
                "assets/images/Grilled cheeseburger on sesame bun with fresh toppings generative ai.png",
          ),
          const FrequentRowSection(
            title: 'Fries',
            price: "199.00",
            imagpath: "assets/images/xxxxxd 1.png",
          ),
          SizedBox(
            height: 20.w,
          ),
          Row(
            children: [
              const Icon(
                Icons.arrow_drop_down,
                color: Colors.red,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "View 7 more",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                      color: AppColor.red1,
                    ),
              ),
            ],
          ),
          SizedBox(
            height: 20.w,
          ),
          const InstrctionsWidget(),
        ],
      ),
    );
  }
}

class InstrctionsWidget extends StatelessWidget {
  const InstrctionsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Special instructions",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.w,
          ),
          Text(
            "Please let us know if you are allergic to anything or if we need to avoid anything",
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                  color: AppColor.black,
                ),
            maxLines: 2,
          ),
          SizedBox(
            height: 20.w,
          ),
          const TextField(
            style: TextStyle(fontSize: 10),
            maxLines: 4,
            decoration: InputDecoration(
              fillColor: Color(0XFFF7F7F7),
              filled: true,
              border: OutlineInputBorder(borderSide: BorderSide.none),
              hintText: "e.g no mayo",
            ),
          ),
        ],
      ),
    );
  }
}

class FrequentRowSection extends StatelessWidget {
  const FrequentRowSection(
      {super.key,
      required this.price,
      required this.title,
      required this.imagpath});

  final String price, title, imagpath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomCheckboxButton(
              checkColor: AppColor.amber,
              bordercolor: Colors.red,
              initialValue: false, // Set initial value of checkbox
              onChanged: (value) {
                // Handle checkbox value change here
                print('Checkbox value: $value');
              },
            ),
            SizedBox(
              width: 5.w,
            ),
            CustomImageView(
              imagePath: imagpath,
              fit: BoxFit.cover,
              width: 80.h,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(title)
          ],
        ),
        Text(price)
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/common_widgets/common_dropdown_button.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/common_widgets/common_switch_widget.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/checkout_presentation/checkout_screen.dart';

import '../../common_widgets/common_appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static const String routeName = 'cart-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        isCircular: true,
        text: "Cart",
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 60.h, bottom: 60.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProgressIndicator(),
              SizedBox(height: 15.h),
              _buildPaymentMethodSection(),
              SizedBox(height: 60.h),
              _buildPaymentButtons(),
              SizedBox(height: 30.h),
              _buildCartItem(),
              SizedBox(height: 30.h),
              _buildAdditionalItemsSection(),
              SizedBox(height: 50.h),
              _buildFreeDeliverySection(),
              SizedBox(height: 30.h),
              _buildSummarySection(context),
              SizedBox(height: 30.h),
              _buildPromotionalImage(context),
              SizedBox(height: 20.h),
              _buildCutlerySection(),
              SizedBox(height: 20.h),
              _buildFooterImage(context),
              SizedBox(height: 45.h),
              Align(
                alignment: Alignment.center,
                child: CommonElevatedButton(
                  borderRadius: 12.0,
                  height: 60.h,
                  width: 260.w,
                  onPressed: ()=> context.goNamed(CheckoutScreen.routeName),
                  text: "Confirm payment and address",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return SizedBox(
      height: 60.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Divider(
            color: AppColor.amber,
            thickness: 1.2,
          ),
          Positioned.fill(
            top: -10.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildProgressStep("1", "Menu"),
                _buildProgressStep("2", "Cart"),
                _buildProgressStep("3", "Checkout"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressStep(String step, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 36.w,
          height: 36.h,
          decoration: BoxDecoration(
            color: title == "Checkout" ? AppColor.white : AppColor.amber,
            borderRadius: BorderRadius.circular(8.0),
            border: title == "Checkout"
                ? Border.all(
                    color: AppColor.amber,
                  )
                : null,
          ),
          child: Text(
            step,
            style: TextStyle(
              color: AppColor.black,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          title,
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w300),
        )
      ],
    );
  }

  Widget _buildPaymentMethodSection() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 155,
          color: AppColor.red2,
        ),
        Positioned(
          top: 15.h,
          right: 50.w,
          left: 50.w,
          child: const Text(
            textAlign: TextAlign.center,
            "Payment method",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Positioned(
            bottom: -30.h,
            right: -5.w,
            left: -5.w,
            child: CustomImageView(
              imagePath: "assets/images/cart_screen_img1.svg",
            )),
        Positioned(
            bottom: -30.h,
            right: 30.w,
            child: CustomImageView(
              imagePath: "assets/images/cart_screen_img2.svg",
            )),
      ],
    );
  }

  Widget _buildPaymentButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CommonElevatedButton(
          onPressed: () {},
          buttonColor: AppColor.amber,
          textColor: AppColor.black,
          width: 108.w,
          height: 48.h,
          text: "Cash",
          borderRadius: 8.0,
        ),
        CommonElevatedButton(
          onPressed: () {},
          buttonColor: AppColor.blueGrey,
          textColor: AppColor.grey2,
          width: 108.w,
          height: 48.h,
          text: "Online",
          borderRadius: 8.0,
        ),
        CommonElevatedButton(
          onPressed: () {},
          buttonColor: AppColor.blueGrey,
          textColor: AppColor.grey2,
          width: 108.w,
          height: 48.h,
          text: "JB Wallet",
          borderRadius: 8.0,
        ),
      ],
    );
  }

  Widget _buildCartItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CommonDropdownButton(
          hintText: "No.",
          items: [
            "1",
            "2",
            "3",
          ],
        ),
        SizedBox(width: 5.w),
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            "assets/images/Mask group.png",
            width: 80.w,
            height: 70.h,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 5.w),
        Container(
          width: 200.w,
          height: 70.h,
          decoration: const BoxDecoration(
            color: Color(0xFFFFD726),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Chicken\nSlider"),
              SizedBox(width: 2),
              Text("Rs. 1799.00"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAdditionalItemsSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Add more items",
            style: TextStyle(
              color: AppColor.red2,
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            "Popular with your order",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 160.h,
                width: 108.w,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      "assets/images/cart_screen_img4.png",
                      width: 130.w,
                      height: 100.h,
                      fit: BoxFit.contain,
                    ),
                    Positioned(
                      top: 18.h,
                      right: -6.w,
                      child: Image.asset(
                        "assets/images/cart_screen_img5.png",
                        width: 130.w,
                        height: 90.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        alignment: Alignment.center,
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF14530),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 18.0,
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("Rs. 199.00\nFries")),
                  ],
                ),
              ),
              Container(
                height: 160.h,
                width: 108.w,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      "assets/images/cart_screen_img6.png",
                      width: 140.w,
                      height: 120.h,
                      fit: BoxFit.contain,
                    ),
                    Positioned(
                      top: 25.h,
                      right: -8.w,
                      child: Image.asset(
                        "assets/images/cart_screen_img7.png",
                        width: 115.w,
                        height: 75.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        alignment: Alignment.center,
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF14530),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 18.0,
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("Rs. 199.00\nWrap")),
                  ],
                ),
              ),
              Container(
                height: 160.h,
                width: 108.w,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      "assets/images/cart_screen_img8.png",
                      width: 130.w,
                      height: 100.h,
                      fit: BoxFit.contain,
                    ),
                    Positioned(
                      top: 40.h,
                      right: -10.w,
                      child: Image.asset(
                        "assets/images/cart_screen_img9.png",
                        width: 120.w,
                        height: 80.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        alignment: Alignment.center,
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF14530),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 18.0,
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("Rs. 200.00\nZinger")),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFreeDeliverySection() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Material(
          elevation: 3.0,
          child: Container(
            height: 80.h,
            width: double.infinity,
            color: Color(0xFF2099AA),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/cart_screen_img10.png",
                  width: 55.w,
                  height: 55.h,
                  fit: BoxFit.cover,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Get free delivery with pro"),
                    SizedBox(height: 6.h),
                    Text("Subscribe from Rs. 150.00/\nmonth"),
                  ],
                ),
                Text(
                  "Add to cart",
                  style: TextStyle(color: Color(0xFFFFD726)),
                ),
              ],
            ),
          ),
        ),
        // const Positioned.fill(
        //   child: Center(
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         // Image.asset("assets/images/cart_img11.png"),
        //         Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Text("Get free delivery with pro"),
        //             SizedBox(height: 10),
        //             Text("Subscribe from Rs. 150.00/\nmonth"),
        //           ],
        //         ),
        //         Text(
        //           "Add to cart",
        //           style: TextStyle(color: Color(0xFFFFD726)),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        Positioned(
          top: -25.h,
          right: 70.w,
          child: Container(
            alignment: Alignment.center,
            width: 45,
            height: 45,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF14530),
            ),
            child: const Text(
              "PRO",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSummarySection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Subtotal"), Text("Rs. 1799.01")],
          ),
          SizedBox(height: 15.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Delivery Fee"),
                  Text("Welcome gift: free delivery"),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 25.h,
                width: 60.w,
                decoration: BoxDecoration(
                  color: AppColor.amber,
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Text(
                  "Free",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("Platform Fee"),
                  SizedBox(width: 5.w),
                  Icon(Icons.info_outlined)
                ],
              ),
              const Text("Rs. 10.00"),
            ],
          ),
          SizedBox(height: 15.h),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("VAT (value added tax)"),
              Text("Rs. 250.00"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPromotionalImage(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            height: 55.h,
            width: 160.w,
            decoration: const BoxDecoration(
                color: AppColor.red2,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(6.0),
                  bottomRight: Radius.circular(6.0),
                )),
            child: Text(
              "Apply a Voucher",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 14.sp,
                    color: AppColor.white,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ),
        Text(
          "OR",
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            height: 55.h,
            width: 160.w,
            decoration: const BoxDecoration(
                color: AppColor.red2,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6.0),
                  bottomLeft: Radius.circular(6.0),
                )),
            child: Text(
              "Apply a Promocode",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 14.sp,
                    color: AppColor.white,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCutlerySection() {
    final ValueNotifier<bool> _controller = ValueNotifier(true);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Cutlery"),
          CommonSwitch(controller: _controller)
        ],
      ),
    );
  }

  Widget _buildFooterImage(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 50.h,
      decoration: const BoxDecoration(
        color: AppColor.amber,
      ),
      child: Text(
        "Total Rs. 2.059",
        style: Theme.of(context).textTheme.displaySmall!.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }
}

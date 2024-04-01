import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/view/checkout_presentation/widgets/Payment_details_widget.dart';
import 'package:joy_box_app/view/checkout_presentation/widgets/Progress_Indicator.dart';

import '../../common_widgets/common_appbar.dart';
import '../../common_widgets/common_elevated_button.dart';
import '../../common_widgets/custom_image_view.dart';
import 'widgets/Delivery_widget.dart';
import 'widgets/Order_summary_widget.dart';

class CheckoutScreen extends StatelessWidget {
  CheckoutScreen({Key? key}) : super(key: key);


  static const String routeName = "checkout-scren";

  final _controller = ValueNotifier<bool>(false);
  

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    bool? isSelected = false;

    return Scaffold(
      appBar: const CommonAppBar(
        text: "Checkout",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: buildProgressIndicator()),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(height: screenHeight * 0.080),
                  // SizedBox(height: screenHeight * 0.020),
                  Delivery_widget(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      controller: _controller),
                  SizedBox(height: screenHeight * 0.050),
                  PaymentdetailsWidget(
                      screenHeight: screenHeight,
                      isSelected: isSelected,
                      screenWidth: screenWidth),
                  SizedBox(height: screenHeight * 0.050),
                  OrderSummaryWidget(
                    Delivery_cintainercolor: const Color(0XFFFFD726),
                    screenHeight: screenHeight,
                    bgcolor: Colors.white,
                    elevation: 10.0,
                  ),
                  SizedBox(height: screenHeight * 0.016),
                  Container(
                    width: screenWidth * 0.7,
                    child: TermsAndConditionsWidget(
                      onTermsAndConditionsPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            TotalPayWidget(
                screenWidth: screenWidth, screenHeight: screenHeight),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              //margin: EdgeInsets.all(20),
              width: screenWidth * 0.70,
              height: screenHeight * 0.080,
              //decoration: BoxDecoration(color: Colors.amberAccent),
              child: CommonElevatedButton(
                onPressed: () =>
                    showCustomDialogue(context), // Pass the context
                text: 'Confirm Checkout',
              ),
            ),
          ],
        ),
      ),
    
    );
    
  }
}

void showCustomDialogue(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AnimatedBuilder(
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: ModalRoute.of(context)!.animation!,
            curve: Curves.bounceInOut,
          ),
        ),
        builder: (context, child) {
          return Opacity(
            opacity: ModalRoute.of(context)!.animation!.value,
            child: Dialog(
              backgroundColor: Colors.transparent,
              insetPadding: const EdgeInsets.all(10),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.7,
                color: const Color(0XFFFFD726),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomImageView(
                                width: 13,
                                height: 10,
                                fit: BoxFit.cover,
                                imagePath: "assets/images/Vector_2.png",
                              ),
                              CustomImageView(
                                width: 24,
                                height: 10,
                                fit: BoxFit.cover,
                                imagePath: "assets/images/Group_38389.svg",
                              )
                            ],
                          ),
                          CustomImageView(
                            imagePath:
                                'assets/images/checkout_screen_alert_Vector.svg',
                          )
                        ],
                      ),
                    ),
                    const Text(
                      "Thank you",
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    const Icon(Icons.keyboard_arrow_down),
                    OrderSummaryWidget(
                      Delivery_cintainercolor: Colors.white,
                      screenHeight: MediaQuery.of(context).size.height,
                      bgcolor: const Color(0XFFFFD726),
                      elevation: 0.0,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // CustomButton(
                        //   txt: "Status",
                        //   borderColor: Colors.red,
                        //   bgColor: Colors.red,
                        //   textColor: Colors.white,
                        // ),
                        CustomButtom(

                          txt: "Status",
                          Bordercolor: Colors.red,
                          bgColor: Colors.red,
                          Txtcolor: Colors.white,
                        ),
                        CustomButtom(
                          txt: "Home",
                          Bordercolor: Colors.black,
                          bgColor: Colors.amberAccent,
                          Txtcolor: Colors.black,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}


class CustomButtom extends StatelessWidget {
  const CustomButtom({
    Key? key,
    required this.Txtcolor,
    required this.Bordercolor,
    required this.bgColor,
    required this.txt,
  }) : super(key: key);

  final Color Txtcolor, Bordercolor, bgColor;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pop(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: BoxDecoration(
            border: Border.all(color: Bordercolor),
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            color: bgColor),
        child: Text(
          txt,
          style: TextStyle(color: Txtcolor, fontSize: 10),
        ),
      ),
    );
  }
}

class TotalPayWidget extends StatelessWidget {
  const TotalPayWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      //margin: EdgeInsets.all(20),
      width: screenWidth,
      height: screenHeight * 0.080,
      decoration: const BoxDecoration(color: Colors.amberAccent),
      child: const Center(
          child: Text(
        "Total Rs. 2.059",
        maxLines: 3,
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
      )),
    );
  }
}

class TermsAndConditionsWidget extends StatelessWidget {
  final Function() onTermsAndConditionsPressed;

  const TermsAndConditionsWidget({
    Key? key,
    required this.onTermsAndConditionsPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "By completing this order, I agree to all ",
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: "terms & conditions",
            style: const TextStyle(
              color: Colors.red,
              //decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = onTermsAndConditionsPressed,
          ),
          const TextSpan(
            text: ".",
          ),
        ],
      ),
    );
  }
}


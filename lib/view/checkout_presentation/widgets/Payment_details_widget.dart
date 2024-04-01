import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/common_elevated_button.dart';

class PaymentdetailsWidget extends StatelessWidget {
  const PaymentdetailsWidget({
    Key? key,
    required this.screenHeight,
    required this.isSelected,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final bool? isSelected;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.amberAccent, width: 1),
      ),
      elevation: 20,
      child: Container(
        height: 400,
        //width: 300,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const PaymentdetailsInnerWidget(
              text_1: "Payment method",
              text_2: "Switch",
            ),
            const PaymentdetailsInnerWidget(
              text_1: "Cash",
              text_2: "Total Rs. 2.059",
            ),
            const PaymentdetailsInnerWidget(
              text_1: "Delivery details",
              text_2: "Change",
            ),
            SizedBox(height: screenHeight * 0.020),
            const CustomTxtField(
              hinttxt: "Name",
            ),
            SizedBox(height: screenHeight * 0.020),
            const CustomTxtField(
              hinttxt: "Phone number",
            ),
            SizedBox(height: screenHeight * 0.020),
            const CustomTxtField(
              hinttxt: "Address",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Checkbox(
                  fillColor: const MaterialStatePropertyAll(Colors.white),
                  value: isSelected,
                  onChanged: (value) {
                    // setState(() {
                    //   isSelected = value;
                    // });
                  },
                ),
                const Text("Remeber me")
              ],
            ),
            SizedBox(
              width: 200.w,
              child: CommonElevatedButton(
                onPressed: () {
                  
                },
                width: screenWidth*0.8,
                text: "Confirm address"),
            )
          ],
        ),
      ),
    );
  }
}
class CustomTxtField extends StatelessWidget {
  const CustomTxtField({
    Key? key,
    this.hinttxt,
  }) : super(key: key);

  final hinttxt;

  @override
  Widget build(BuildContext context) {

    return Material(
      elevation: 5,
      child: SizedBox(
        child: TextFormField(
          
          
            style: const TextStyle(color: Colors.black,fontSize: 15),
            cursorColor: Colors.amberAccent,
            decoration: InputDecoration(
                hintText: hinttxt,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)))),
      ),
    );
  }
}
class PaymentdetailsInnerWidget extends StatelessWidget {
  const PaymentdetailsInnerWidget({
    Key? key,
    this.text_1,
    this.text_2,
  }) : super(key: key);

  final text_1;
  final text_2;

  @override
  Widget build(BuildContext context) {
        final textstyle = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text_1,
          style: textstyle.bodyMedium,
        ),
        Text(
          text_2,
          style: textstyle.bodyMedium?.copyWith(
            color: Colors.red
          ),
        )
      ],
    );
  }
}

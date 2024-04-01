import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class OrderSummaryWidget extends StatelessWidget {
  const OrderSummaryWidget({
    Key? key,
    required this.screenHeight, required this.bgcolor,required this.elevation, required this.Delivery_cintainercolor,
  }) : super(key: key);

  final double screenHeight;
  final Color bgcolor,Delivery_cintainercolor;
  final double elevation;
  

  @override
  Widget build(BuildContext context) {
  final textstyle = Theme.of(context).textTheme;

    return Material(
      color: bgcolor,
      shape: RoundedRectangleBorder(
        
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.amberAccent, width: 1),
      ),
      elevation: elevation,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            //height: 400,
            //width: 300,
            margin:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Order summary",
                  style: textstyle.bodyMedium,
                ),
                const SummaryRowTextWidget(
                  keytxt: "1 x Chicken Sliders",
                  valuetxt: "Rs. 1799.00",
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.amberAccent,
            thickness: 2,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            margin:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
    
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
              //crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SummaryRowTextWidget(
                  keytxt: "Subtotal",
                  valuetxt: "Rs. 1799.00",
                ),
                SizedBox(height: screenHeight * 0.020),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Delivery Fee"),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(13),
                              color: Delivery_cintainercolor),
                          child: const Text("Free"),
                        )
                      ],
                    ),
                    const Text("Welcome gift: free delivery")
                  ],
                ),
                const SummaryRowTextWidget(
                  keytxt: "Platform Fee",
                  valuetxt: "Rs. 10.00",
                ),
                const SummaryRowTextWidget(
                  keytxt: "VAT (value added tax)",
                  valuetxt: "Rs. 250.00",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SummaryRowTextWidget extends StatelessWidget {
  const SummaryRowTextWidget({
    Key? key,
    required this.keytxt,
    required this.valuetxt,
  }) : super(key: key);

  final String keytxt, valuetxt;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(keytxt), Text(valuetxt)],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/res/color.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key});

  static const String routeName = 'payment-method-screen';

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  final List<String> paymentMethodList = ["Card", "Jazzcash", "Easypaisa"];
  bool _isChecked = false;
  String _selectedPaymentMethod = "Card";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: 550.h,
          child: Stack(
            children: [
              _buildBackgroundImage(),
              _buildPaymentMethodForm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Image.asset("assets/images/payment_method_screen_img2.png"),
    );
  }

  Widget _buildPaymentMethodForm() {
    return Container(
      height: 495.h,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildPaymentMethodHeader(),
          SizedBox(height: 5.h),
          _buildPaymentMethodRow(),
          SizedBox(height: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Delivery details",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontSize: 14.sp,
                  letterSpacing: 0.10,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Change",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: 15.sp,
                    letterSpacing: 0.10,
                    fontWeight: FontWeight.w500,
                    color: AppColor.red2,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          if (_selectedPaymentMethod == "Jazzcash" ||
              _selectedPaymentMethod == "Easypaisa") ...[
            _buildTextField("Phone Number"),
            SizedBox(height: 30.h),
            _buildTextField("Card Number"),
          ] else ...[
            _buildTextField("Card Name"),
            SizedBox(height: 30.h),
            _buildTextField("Card Number"),
            SizedBox(height: 30.h),
            _buildExpirationDateRow(),
          ],
          SizedBox(height: 20.h),
          _buildRememberMeCheckbox(),
          SizedBox(height: 20.h),
          CommonElevatedButton(
            height: 52.h,
            width: 250.w,
            onPressed: () {},
            fontSize: 16.sp,
            borderRadius: 8.0,
            text: "Confirm payment",
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentMethodHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Payment method",
          style: Theme.of(context).textTheme.headline6!.copyWith(
              fontSize: 15.sp,
              letterSpacing: 0.10,
              fontWeight: FontWeight.w500),
        ),
        PopupMenuButton<String>(
          padding: EdgeInsets.zero,
          itemBuilder: (BuildContext context) {
            return paymentMethodList.map((String value) {
              return PopupMenuItem<String>(
                value: value,
                child: Text(value,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 16.sp,
                      color: Colors.black,
                    )),
              );
            }).toList();
          },
          onSelected: (String value) {
            setState(() {
              _selectedPaymentMethod = value;
            });
          },
          child: Text(
            "Switch",
            style: Theme.of(context).textTheme.headline6!.copyWith(
              fontSize: 15.sp,
              color: AppColor.red2,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentMethodRow() {
    String paymentMethodImage;
    switch (_selectedPaymentMethod) {
      case "Card":
        paymentMethodImage = "assets/images/payment_method_screen_img1.png";
        break;
      case "Jazzcash":
        paymentMethodImage = "assets/images/payment_method_screen_img3.png";
        break;
      case "Easypaisa":
        paymentMethodImage = "assets/images/payment_method_screen_img4.png";
        break;
      default:
        paymentMethodImage = "assets/images/default_image.png";
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              paymentMethodImage,
              width: 50.w,
              height: 50.h,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 5.w),
            Text(
              _selectedPaymentMethod,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontSize: 13.sp,
                  letterSpacing: 0.10,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Text(
          "Total Rs. 2.059",
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontSize: 13.sp,
              letterSpacing: 0.10,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _buildTextField(String hintText) {
    return SizedBox(
      height: 55.h,
      child: Material(
        borderRadius: BorderRadius.circular(8.0),
        elevation: 3.0,
        child: TextField(
          style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w300),
          decoration: InputDecoration(
            errorStyle: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w300),
            fillColor: Colors.white,
            filled: true,
            hintStyle: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w300),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            hintText: hintText,
          ),
        ),
      ),
    );
  }

  Widget _buildExpirationDateRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 55.h,
          width: 130.w,
          child: _buildTextField("Code"),
        ),
        SizedBox(
          height: 55.h,
          width: 130.w,
          child: _buildTextField("DD/MM/YY"),
        ),
      ],
    );
  }

  Widget _buildRememberMeCheckbox() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Checkbox(
          checkColor: Colors.white,
          activeColor: Colors.red,
          value: _isChecked,
          onChanged: (bool? value) {
            setState(() {
              _isChecked = value!;
            });
          },
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.red, width: 0.2.h),
            borderRadius: BorderRadius.circular(2.0),
          ),
        ),
        SizedBox(width: 10.w),
        GestureDetector(
          onTap: () {
            setState(() {
              _isChecked = !_isChecked;
            });
          },
          child: Text(
            "Remember me",
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColor.red1,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/common_widgets/custom_smooth_indicator.dart';
import 'package:joy_box_app/res/color.dart';

class WYWSectionFour extends StatefulWidget {
  const WYWSectionFour({Key? key}) : super(key: key);

  @override
  _WYWSectionFourState createState() => _WYWSectionFourState();
}

class _WYWSectionFourState extends State<WYWSectionFour> {
  int activeIndex = 0;
  final _cardNameController = TextEditingController(text: "Haris Ahmed");
  final _cardNumberController =
  TextEditingController(text: "**** **** ***** 9123");
  final _cvcController = TextEditingController(text: "***");
  final _validUntilController = TextEditingController(text: "05/25");

  List<String> valuesUrl = [
    "assets/images/widthdraw_your_wallet_img2.png",
    "assets/images/widthdraw_your_wallet_img3.png",
    "assets/images/widthdraw_your_wallet_img4.png",
  ];

  @override
  void dispose() {
    _cardNameController.dispose();
    _cardNumberController.dispose();
    _cvcController.dispose();
    _validUntilController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildCardHeader(),
          _buildSwiper(),
          CustomSmoothIndicator(
            activeIndex: activeIndex,
            itemCount: valuesUrl.length,
            activeColor: AppColor.amber2,
          ),
          SizedBox(height: 35.h),
          _buildCardForm(),
        ],
      ),
    );
  }

  Widget _buildCardHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Your Card",
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: 22.sp,
                fontWeight: FontWeight.w400,
                color: AppColor.black)),
        CommonElevatedButton(
          height: 40.h,
          width: 100.w,
          onPressed: () {},
          text: "Add card",
        ),
      ],
    );
  }

  Widget _buildSwiper() {
    return Swiper(
      curve: Curves.ease,
      itemCount: valuesUrl.length,
      layout: SwiperLayout.STACK,
      itemWidth: 300.w,
      itemHeight: 320.h,
      loop: true,
      duration: 1200,
      scrollDirection: Axis.horizontal,
      onIndexChanged: (index) {
        setState(() {
          activeIndex = index;
        });
      },
      itemBuilder: (context, index) {
        return Container(
          width: 350.w,
          height: 350.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(valuesUrl[index]),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        );
      },
    );
  }

  Widget _buildCardForm() {
    return Material(
      elevation: 3.0,
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 25.h),
        height: 320.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextField("Card name", _cardNameController, TextInputType.text),
            SizedBox(height: 20.h),
            _buildTextField("Card Number", _cardNumberController, TextInputType.number),
            SizedBox(height: 20.h),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTextField("CVC", _cvcController, TextInputType.number),
                    ],
                  ),
                ),
                SizedBox(width: 20.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTextField("Valid until", _validUntilController, TextInputType.number),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller, TextInputType textInputType) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.35)),
        ),
        TextField(
          controller: controller,
          keyboardType: textInputType,
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            prefixIconConstraints: BoxConstraints(minWidth: 20.w),
            errorStyle: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
            contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 3.w),
            hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }
}

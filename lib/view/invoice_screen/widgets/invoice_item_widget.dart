import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_elevated_button.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/invoice_screen/model/invoice_items_model.dart';

class InvoiceItemWidget extends StatelessWidget {
  final InvoiceItemModel itemModel;
  const InvoiceItemWidget({
    super.key,
    required this.itemModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: 375.w,
      height: 136.h,
      decoration: ShapeDecoration(
        color: Colors.white.withOpacity(0.7900000214576721),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Invoice id
              Text(
                'Invoice ID #ORD-0000312',
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 17.sp,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(
                height: 10.h,
              ),

              //address title
              Text(
                'Sultan Dine',
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 17.sp,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
              ),
              SizedBox(
                height: 05.h,
              ),

              //other address details
              SizedBox(
                width: 246.w,
                child: Text(
                  '250 W 72nd St, Karachi Pakistan\nOpens at 09:00 AM - Closes at 11:00 PM',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 13.sp,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                ),
              )
            ],
          ),
          Positioned(
            bottom: -25,
            right: 0,
            child: CommonElevatedButton(
                width: 70.w,
                height: 30.h,
                buttonColor: AppColor.blue,
                onPressed: () {},
                text: "View"),
          )
        ],
      ),
    );
  }
}

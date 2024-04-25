import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

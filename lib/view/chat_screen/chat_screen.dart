import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/res/color.dart';
import 'package:joy_box_app/view/chat_screen/widgets/chat_message';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  static const String routeName = "chat-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: 18.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 15.w),
              Image.asset(
                "assets/images/chat_screen_img1.png",
                width: 60.w,
                height: 60.h,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nida",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    "Active",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                  )
                ],
              ),
            ],
          ),
        ),
        backgroundColor: AppColor.amber,
        elevation: 5.0,
        toolbarHeight: 120.h,
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        actions: [
          Icon(Icons.phone, color: AppColor.red1, size: 25.sp),
          SizedBox(width: 8.w),
          Icon(Icons.videocam_rounded, color: AppColor.red1, size: 28.sp),
          SizedBox(width: 2.w),
          Icon(Icons.more_horiz, color: AppColor.red1, size: 35.sp),
          SizedBox(width: 20.w),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 30.h),
              reverse: true, // Reverse the order of the list
              children: const [
                ChatMessage(
                  messageRight:
                      "Ut enim ad minima veniam, quis nostrum exercitationem ullam ?",
                  timeRight: "7:30 PM",
                ),
                ChatMessage(
                  messageRight: "Nemo enim ipsam voluptatemt",
                ),
                ChatMessage(
                  messageLeft: "vel illum qui dolorem eum",
                  timeLeft: "6:13 PM",
                ),
                ChatMessage(
                  messageRight:
                      "Ut enim ad minima veniam, quis nostrum exercitationem ullam ?",
                  timeRight: "7:30 PM",
                ),
                ChatMessage(
                  messageLeft: "vel illum qui dolorem eum",
                  timeLeft: "6:13 PM",
                ),
                ChatMessage(
                  messageRight: "Nemo enim ipsam voluptatemt",
                  timeRight: "3:15 PM",
                ),
                ChatMessage(
                  messageRight:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing",
                ),
                ChatMessage(
                  messageLeft:
                      "Sed ut perspiciatis unde omnis iste natus error sit",
                  timeLeft: "6:13 PM",
                ),
                ChatMessage(
                  messageRight: "Lorem ipsum",
                  timeRight: "8:42 AM",
                ),
                ChatMessage(
                  messageLeft: "Lorem ipsum dolor sit amet, consectetur",
                  timeLeft: "8:20 AM",
                ),
              ],
            ),
          ),
          Container(
            height: 50.h,
            margin: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  blurStyle: BlurStyle.outer,
                    color: Colors.grey.shade600,
                    spreadRadius: 1,
                    blurRadius: 2,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child: Icon(Icons.mic),
                  onTap: (){},
                ),
                InkWell(
                  child: Icon(Icons.attach_file),
                  onTap: (){},
                ),
                SizedBox(width: 2.w),
                InkWell(
                  child: Icon(Icons.emoji_emotions_outlined),
                  onTap: (){},
                ),
                VerticalDivider(),
                Expanded(
                  child: TextFormField(
                    style: TextStyle(fontSize: 14.sp),
                    decoration: InputDecoration(
                      hintText: 'Type your message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 10.h,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 15.w),
                InkWell(
                  child: Icon(Icons.send),
                  onTap: (){},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
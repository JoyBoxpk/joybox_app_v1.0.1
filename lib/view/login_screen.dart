import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/view/home_screen/home_screen.dart';
import 'package:joy_box_app/view/signup_screen.dart';
import '../common_widgets/common_elevated_button.dart';
import '../common_widgets/common_social_icon_button.dart';
import '../common_widgets/common_text_form_field.dart';
import '../res/color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                right: -45,
                bottom: -80,
                child: Image.asset(
                  "assets/images/img1_signup_screen.png",
                  width: 412.w,
                  height: 453.h,
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 40.h,
                ),
                height: 760.h,
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF2099AA),
                      Colors.white,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                  ),
                ),
                child: _LoginForm(
                    screenWidth: screenWidth, screenHeight: screenHeight),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  const _LoginForm({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 25.sp,
            ),
          ),
          SizedBox(height: 40.h),
          _buildFieldText("Email address"),
          SizedBox(height: 6.h),
          const CommonTextFormField(
            suffixIcon: Icon(
              Icons.check_circle,
              color: Colors.red,
              size: 20.0,
            ), hintText: "helloworld@gmail.com",
          ),
          SizedBox(height: 15.h),
          _buildFieldText("Password"),
          SizedBox(height: 6.h),
          CommonTextFormField(
            isPassword: true,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.visibility_off_outlined,
                size: 20.0,
              ),
            ), hintText: '* * * * * *',
          ),
          SizedBox(height: 10.h),
          const Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          CommonElevatedButton(
            onPressed: () => context.goNamed(HomeScreen.routeName),
            text: "Login",
          ),
          SizedBox(height: 20.h),
          _buildRichText(context),
          SizedBox(height: 25.h),
          _socialRow(),
          SizedBox(height: screenHeight * 0.040),
          SvgPicture.asset(
            "assets/images/svg1_login_screen.svg",
            width: 97.w,
            height: 93.h,
          ),
        ],
      ),
    );
  }

  Widget _buildFieldText(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 12.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildRichText(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don't have an account?",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 13.sp),
          ),
          TextSpan(
            text: " ",
          ),
          TextSpan(
            text: "Sign up",
            style: TextStyle(
              color: AppColor.red1,
              fontSize: 13.sp,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => context.goNamed(SignUpScreen.routeName),
          ),
        ],
      ),
    );
  }

  Widget _socialRow() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommonSocialIconButton(
            imagePath: "assets/images/svg1_signup_screen.svg"),
        CommonSocialIconButton(
            imagePath: "assets/images/svg2_signup_screen.svg"),
        CommonSocialIconButton(
            imagePath: "assets/images/svg3_signup_screen.svg"),
      ],
    );
  }
}

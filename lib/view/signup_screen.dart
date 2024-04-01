import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../common_widgets/common_elevated_button.dart';
import '../common_widgets/common_social_icon_button.dart';
import '../common_widgets/common_text_form_field.dart';
import '../res/color.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String routeName = '/signup';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
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
                    vertical: 30.h,
                  ),
                  height: 760.h,
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  width: double.infinity,
                  decoration: const BoxDecoration(
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
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;


  const _LoginForm({required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "SignUp",
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 25.sp,
              ),
            ),
            SizedBox(height: 40.h),
            _buildFieldText("Email", context),
            SizedBox(height: 6.h),
            const CommonTextFormField(
              hintText: 'Your email',
            ),
            SizedBox(height: 14.h),
            _buildFieldText("Password", context),
            SizedBox(height: 6.h),
            CommonTextFormField(
              isPassword: true,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility_off_outlined,
                  size: 20.0,
                ),
              ), hintText: '* * * * * *',
            ),
            SizedBox(height: screenHeight * 0.020),
            _buildFieldText("Confirm Password", context),
            SizedBox(height: screenHeight * 0.005),
            CommonTextFormField(
              isPassword: true,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility_outlined,
                  size: 20.0,
                ),
              ), hintText: 'repeat password',
            ),
            SizedBox(height: 18.h),
            Row(
              children: [
                Container(
                  width: screenWidth * 0.036,
                  height: screenHeight * 0.020,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                  child:
                  const Icon(Icons.check, color: Colors.white, size: 14.0),
                ),
                SizedBox(width: 15.w),
                Text(
                  "I accept the terms and policy",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 12.sp),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            CommonElevatedButton(
              onPressed: () {
              },
              text: "Signup",
            ),
            SizedBox(height: 30.h),
            _socialRow(),
            SizedBox(height: 50.h),
            _buildRichText(context),
          ],
        ),
      ),
    );
  }

  Widget _buildFieldText(String text, BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style:
        Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 13.sp),
      ),
    );
  }

  Widget _buildRichText(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account?",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 13.sp),
          ),
          const TextSpan(
            text: " ",
          ),
          TextSpan(
            text: "Log in",
            style: TextStyle(
              color: AppColor.red1,
              fontSize: 13.sp,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => context.goNamed(LoginScreen.routeName),
          ),
        ],
      ),
    );
  }

  Widget _socialRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CommonSocialIconButton(
            imagePath: "assets/images/svg1_signup_screen.svg"),
        SizedBox(width: 2.w),
        const CommonSocialIconButton(
            imagePath: "assets/images/svg2_signup_screen.svg"),
        SizedBox(width: 2.w),
        const CommonSocialIconButton(
            imagePath: "assets/images/svg3_signup_screen.svg"),
      ],
    );
  }
}

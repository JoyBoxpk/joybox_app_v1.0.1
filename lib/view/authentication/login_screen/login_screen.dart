import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/core/utils/field_validator.dart';
import 'package:joy_box_app/view/authentication/widgets/common_email_textfield.dart';
import 'package:joy_box_app/view/authentication/widgets/common_password_textfield.dart';
import 'package:joy_box_app/view/authentication/widgets/social_buttons.dart';
import 'package:joy_box_app/view/authentication/widgets/switch_screen_option.dart';
import 'package:joy_box_app/view/home_screen/home_screen.dart';

import '../../../common_widgets/common_elevated_button.dart';
import '../../../res/color.dart';
import '../sign_up_screen/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isButtonPressed = false; // Track if the login button is pressed

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _loginFunction() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isButtonPressed = true; // Set the button pressed state to true
      });
      try {
        context.goNamed(HomeScreen.routeName);
      } catch (e) {
        // Catch all other unexpected errors
        print('Unexpected Error: $e');
        // You might want to show a snackbar or dialog to inform the user
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: -102.h,
              right: -32.w,
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
                vertical: _isButtonPressed ? 10.h : 40.h,
              ),
              height: _isButtonPressed ? 640.h : 760.h,
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColor.blue,
                    AppColor.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                ),
              ),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 38.sp,
                        ),
                      ),
                      SizedBox(height: 40.h),
                      _buildFieldText("Email address"),
                      SizedBox(height: 6.h),
                      CommonEmailTextField(
                        emailController: _emailController,
                        emailHintText: "helloworld@gmail.com",
                        suffixIcon: Icons.check_circle,
                      ),
                      SizedBox(height: 18.h),
                      _buildFieldText("Password"),
                      SizedBox(height: 6.h),
                      CommonPasswordTextField(
                        passController: _passwordController,
                        validator: FieldValidator.validatePassword,
                        passwordHintText: "* * * * * *",
                      ),
                      SizedBox(height: 10.h),
                      _buildFieldText(
                        "Forgot Password?",
                        alignment: Alignment.centerRight,
                      ),
                      SizedBox(height: 20.h),
                      CommonElevatedButton(
                        borderRadius: 12.0,
                        width: 105.w,
                        height: 50.h,
                        onPressed: _loginFunction,
                        text: "Login",
                      ),
                      SizedBox(height: 20.h),
                      const SwitchScreenOption(
                        text1: "Don't have an account?",
                        text2: "Sign up",
                        routeName: SignUpScreen.routeName,
                      ),
                      SizedBox(height: 30.h),
                      const SocialButtons(),
                      SizedBox(height: 25.h),
                      SvgPicture.asset(
                        "assets/images/svg1_login_screen.svg",
                        width: 97.w,
                        height: 93.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Common text widget
  Widget _buildFieldText(String text, {Alignment alignment = Alignment.centerLeft}) {
    return Align(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: _isButtonPressed ? 12.sp : 14.sp, // Adjust font size based on button press
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/core/utils/field_validator.dart';
import 'package:joy_box_app/view/authentication/widgets/common_email_textfield.dart';
import 'package:joy_box_app/view/authentication/widgets/common_password_textfield.dart';
import 'package:joy_box_app/view/authentication/widgets/switch_screen_option.dart';
import 'package:joy_box_app/view/routes.dart';

import '../../../common_widgets/common_elevated_button.dart';
import '../../../res/color.dart';
import '../widgets/social_buttons.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String routeName = '/signup';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isChecked = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _singUpFunction() {
    if (_formKey.currentState!.validate()) {
      try {
        Navigator.pushReplacementNamed(context, RoutePaths.login);
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
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Stack(
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
                    vertical: 30.h,
                  ),
                  height: 760.h,
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColor.blue,
                        AppColor.white1,
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
                            "SignUp",
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 38.sp,
                                    ),
                          ),
                          SizedBox(height: 30.h),
                          _buildFieldText("Email"),
                          SizedBox(height: 6.h),
                          CommonEmailTextField(
                            emailController: _emailController,
                            emailHintText: "Your email",
                          ),
                          SizedBox(height: 14.h),
                          _buildFieldText("Password"),
                          SizedBox(height: 6.h),
                          CommonPasswordTextField(
                            passController: _passwordController,
                            validator: FieldValidator.validatePassword,
                            passwordHintText: "* * * * * *",
                          ),
                          SizedBox(height: 18.h),
                          _buildFieldText("Confirm Password"),
                          SizedBox(height: 6.h),
                          CommonPasswordTextField(
                            passController: _confirmPasswordController,
                            validator: (value) {
                              return FieldValidator.validateConfirmPassword(
                                value,
                                _passwordController.text,
                              );
                            },
                            passwordHintText: "repeat password",
                          ),
                          SizedBox(height: 18.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Checkbox(
                                checkColor: AppColor.white,
                                activeColor: AppColor.red1,
                                value: _isChecked,
                                // Define _isChecked variable to track the checkbox state
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked = value!;
                                  });
                                },
                              ),
                              SizedBox(width: 15.w),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _isChecked = !_isChecked;
                                  });
                                },
                                child: Text(
                                  "I accept the terms and privacy policy",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30.h),
                          CommonElevatedButton(
                            borderRadius: 12.0,
                            width: 105.w,
                            height: 50.h,
                            onPressed: _singUpFunction,
                            text: "Signup",
                          ),
                          SizedBox(height: 30.h),
                          const SocialButtons(),
                          SizedBox(height: 40.h),
                          const SwitchScreenOption(
                            text1: "Already have an account?",
                            text2: "Log in",
                            routeName: RoutePaths.login,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFieldText(String text,
      {Alignment alignment = Alignment.centerLeft}) {
    return Align(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.sp, // Adjust font size based on button press
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

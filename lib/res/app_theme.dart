import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'color.dart';

final ThemeData appTheme = ThemeData(
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      color: AppColor.black,
      fontSize: 50.sp,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w900,
    ),
    bodyMedium: TextStyle(
      color: AppColor.black,
      fontSize: 14.sp,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      color: AppColor.black,
      fontSize: 22.sp,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    ),
    displayMedium: const TextStyle(
      color: AppColor.black,
      fontSize: 45,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    ),
    headlineLarge: const TextStyle(
      color: AppColor.black,
      fontSize: 32,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    ),
    labelLarge: const TextStyle(
      color: AppColor.black,
      fontSize: 15,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    ),
    labelMedium: const TextStyle(
      color: AppColor.black,
      fontSize: 10,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    ),
    titleLarge: const TextStyle(
      color: AppColor.black,
      fontSize: 24,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    ),
    titleMedium: const TextStyle(
      color: AppColor.black,
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    ),
    titleSmall: const TextStyle(
      color: AppColor.black,
      fontSize: 14,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    ),
    displayLarge: const TextStyle(
      color: AppColor.black,
      fontSize: 80,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent),
  useMaterial3: true,
);

import 'dart:ui';

import '../res/color.dart';

class JbProItemModel {
  final String title;
  final String subTitle;
  final String duration;
  final double price;


  JbProItemModel({
    required this.title,
    required this.subTitle,
    required this.duration,
    required this.price,
  });

  static List<JbProItemModel> offerItemList = [
    JbProItemModel(
      title: "Monthly",
      subTitle: "mo.",
      duration: "monthly",
      price: 249.00,
    ),
    JbProItemModel(
      title: "Yearly",
      subTitle: "yr.",
      duration: "yearly",
      price: 1699.00,
    ),
    JbProItemModel(
      title: "Weekly",
      subTitle: "wk.",
      duration: "weekly",
      price: 52.00,
    ),
  ];
}
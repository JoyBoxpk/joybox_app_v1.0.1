import 'package:flutter/material.dart';
import 'package:joy_box_app/res/color.dart';

class TraditionalRestaurantsItemModel {
  final String title;
  final String imagePath;
  final Color? color;

  TraditionalRestaurantsItemModel({
    required this.title,
    required this.imagePath,
    this.color = Colors.white,
  });

  static final List<TraditionalRestaurantsItemModel> itemsList = [
    TraditionalRestaurantsItemModel(
      title: "The East End",
      imagePath: "assets/images/img16_home_screen.png",
    ),
    TraditionalRestaurantsItemModel(
      title: "Bam-Bau",
      imagePath: "assets/images/img17_home_screen.png",
      color: AppColor.amber,
    ),
    TraditionalRestaurantsItemModel(
      title: "Lotus Court",
      imagePath: "assets/images/img18_home_screen.png",
    ),
    TraditionalRestaurantsItemModel(
      title: "Coconut Grove",
      imagePath: "assets/images/img16_home_screen.png",
    ),
    TraditionalRestaurantsItemModel(
      title: "Cafe Mist",
      imagePath: "assets/images/img18_home_screen.png",
    ),
  ];
}
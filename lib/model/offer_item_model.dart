import 'dart:ui';

import '../res/color.dart';

class OfferItemModel {
  final String title;
  final String subTitle;
  final String offerLabel;
  final String imageUrl;
  final Color color;

  OfferItemModel({
    required this.title,
    required this.subTitle,
    required this.offerLabel,
    required this.imageUrl,
    required this.color,
  });

  static List<OfferItemModel> offerItemList = [
    OfferItemModel(
      title: "Get 20% Off",
      subTitle: "Clock Tower",
      offerLabel: "Ramadan Offer",
      imageUrl: "assets/images/img21_home_screen.png.png",
      color: AppColor.red3,
    ),
    OfferItemModel(
      title: "Get 30% Off",
      subTitle: "Burger O' Clock",
      offerLabel: "Combo  Offer",
      imageUrl: "assets/images/img21_home_screen.png.png",
      color: AppColor.orange,
    ),
    OfferItemModel(
      title: "Get 49% Off",
      subTitle: "Rosati Bistro",
      offerLabel: "Day Night Offer",
      imageUrl: "assets/images/img21_home_screen.png.png",
      color: AppColor.blue,
    ),
  ];
}
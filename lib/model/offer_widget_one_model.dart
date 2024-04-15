import 'package:joy_box_app/res/color.dart';

class OfferWidgetOneModel {
  final String restaurantName;
  final String imageOnePath;
  final String imageTwoPath;
  final int price;

  OfferWidgetOneModel({
    required this.restaurantName,
    required this.imageOnePath,
    required this.imageTwoPath,
    required this.price,
  });

  static final List<OfferWidgetOneModel> offerItemsList = [
    OfferWidgetOneModel(
      restaurantName: "FoodInn",
      imageOnePath: "assets/images/offers_screen_img2.png",
      imageTwoPath: "assets/images/offers_screen_img3.png",
      price: 599
    ),
    OfferWidgetOneModel(
        restaurantName: "Broadway",
        imageOnePath: "assets/images/offers_screen_img4.png",
        imageTwoPath: "assets/images/offers_screen_img5.png",
        price: 850
    ),
    OfferWidgetOneModel(
        restaurantName: "Vintage",
        imageOnePath: "assets/images/offers_screen_img2.png",
        imageTwoPath: "assets/images/offers_screen_img3.png",
        price: 400
    ),
    OfferWidgetOneModel(
        restaurantName: "Pizza Hut",
        imageOnePath: "assets/images/offers_screen_img4.png",
        imageTwoPath: "assets/images/offers_screen_img5.png",
        price: 500
    ),
  ];
}
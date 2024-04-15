
class OfferWidgetTwoModel {
  final String restaurantName;
  final String imageOnePath;
  final String imageTwoPath;
  final int price;

  OfferWidgetTwoModel({
    required this.restaurantName,
    required this.imageOnePath,
    required this.imageTwoPath,
    required this.price,
  });

  static final List<OfferWidgetTwoModel> offerItemsList = [
    OfferWidgetTwoModel(
      restaurantName: "Burgerlab",
      imageOnePath: "assets/images/offers_screen_img6.png",
      imageTwoPath: "assets/images/offers_screen_img7.png",
      price: 599
    ),
    OfferWidgetTwoModel(
        restaurantName: "Burgerlab",
        imageOnePath: "assets/images/offers_screen_img6.png",
        imageTwoPath: "assets/images/offers_screen_img7.png",
        price: 600
    ),
    OfferWidgetTwoModel(
        restaurantName: "Burgerlab",
        imageOnePath: "assets/images/offers_screen_img6.png",
        imageTwoPath: "assets/images/offers_screen_img7.png",
        price: 601
    ),
  ];
}
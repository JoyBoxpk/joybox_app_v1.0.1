class FavoriteMealModel {
  final String name;
  final String imagePath;
  final String price;
  final String hotelImgPath;

  FavoriteMealModel({
    required this.hotelImgPath,
    required this.name,
    required this.imagePath,
    required this.price,
  });

  List<FavoriteMealModel> favoriteMeals = [
    FavoriteMealModel(
        name: "Matka\nBiryani",
        imagePath: "assets/images/fav_meal_img3.png",
        price: "RS 999.0",
        hotelImgPath: "assets/images/fav_meal_img5.png"),
    FavoriteMealModel(
        name: "Nali\nNihari",
        imagePath: "assets/images/fav_meal_img3.png",
        price: "RS 599.0",
        hotelImgPath: "assets/images/fav_meal_img5.png"),
    FavoriteMealModel(
        name: "Matka\nBiryani",
        imagePath: "assets/images/fav_meal_img3.png",
        price: "RS 899.0",
        hotelImgPath: "assets/images/fav_meal_img5.png"),
    // Add more favorite meals as needed
  ];
}

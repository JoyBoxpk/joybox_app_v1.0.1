

class YourFavouriteMealItemModel {
  final String title;
  final String subTitle;
  final String imageUrl;

  YourFavouriteMealItemModel({
    required this.title,
    required this.subTitle,
    required this.imageUrl,

  });

  static List<YourFavouriteMealItemModel> favouriteItemList = [
    YourFavouriteMealItemModel(
      title: "McDonald's",
      subTitle: "DHA Phase 8",
      imageUrl: "assets/images/img24_home_screen.png",
    ),
    YourFavouriteMealItemModel(
      title: "KFC",
      subTitle: "Gulshan block 6",
      imageUrl: "assets/images/img25_home_screen.png",
    ),
    YourFavouriteMealItemModel(
      title: "Kababjess",
      subTitle: "Jauhar",
      imageUrl: "assets/images/img24_home_screen.png",
    ),
    YourFavouriteMealItemModel(
      title: "Hardees",
      subTitle: "UNiversity Road",
      imageUrl: "assets/images/img25_home_screen.png",
    ),
  ];
}
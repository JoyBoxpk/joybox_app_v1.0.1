class YourFavouriteItemWidgetModel {
  final String restaurantName;
  final double restaurantRating;

  YourFavouriteItemWidgetModel({
    required this.restaurantName,
    required this.restaurantRating,
  });

  static final List<YourFavouriteItemWidgetModel> yourFavouriteList = [
    YourFavouriteItemWidgetModel(
      restaurantName: "The East End",
      restaurantRating: 4.1,
    ),
    YourFavouriteItemWidgetModel(
      restaurantName: "Big Tree House",
      restaurantRating: 3.9,
    ),
    YourFavouriteItemWidgetModel(
      restaurantName: "Lasania Restaurant",
      restaurantRating: 5.0,
    ),
    YourFavouriteItemWidgetModel(
      restaurantName: "The East End",
      restaurantRating: 4.1,
    ),
    YourFavouriteItemWidgetModel(
      restaurantName: "Big Tree House",
      restaurantRating: 3.9,
    ),
    YourFavouriteItemWidgetModel(
      restaurantName: "Lasania Restaurant",
      restaurantRating: 5.0,
    ),

  ];
}

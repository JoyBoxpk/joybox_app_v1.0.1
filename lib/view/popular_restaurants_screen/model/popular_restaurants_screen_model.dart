class PopularRestaurantsScreenModel {
  final String restaurantName;

  PopularRestaurantsScreenModel({
    required this.restaurantName,
  });

  static final List<PopularRestaurantsScreenModel> popularRestaurantList = [
    PopularRestaurantsScreenModel(
      restaurantName: "Royal Taj Restaurant",
    ),
    PopularRestaurantsScreenModel(
      restaurantName: "LalQila Restaurant",
    ),
    PopularRestaurantsScreenModel(
      restaurantName: "Lasania Restaurant",
    ),
    PopularRestaurantsScreenModel(
      restaurantName: "Bismillah Restaurant",
    ),
    PopularRestaurantsScreenModel(
      restaurantName: "Anwar Baloch",
    ),
    PopularRestaurantsScreenModel(
      restaurantName: "Second Wife",
    ),

  ];
}
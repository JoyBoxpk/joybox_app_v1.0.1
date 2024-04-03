class FastFoodRestaurantTabModel {
  final String title;

  FastFoodRestaurantTabModel({
    required this.title,
  });

  static final List<FastFoodRestaurantTabModel> fastFoodItemList = [
    FastFoodRestaurantTabModel(
      title: "Popular",
    ),
    FastFoodRestaurantTabModel(
      title: "Pizza",
    ),
    FastFoodRestaurantTabModel(
      title: "Wings",
    ),
    FastFoodRestaurantTabModel(
      title: "Rolls",
    ),
    FastFoodRestaurantTabModel(
      title: "Sandwich",
    ),
    FastFoodRestaurantTabModel(
      title: "Nuggets",
    ),

  ];
}
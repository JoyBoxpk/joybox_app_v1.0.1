class NearRestaurentListModel {
  final String restaurantName, restaurantlocation;

  NearRestaurentListModel({
    required this.restaurantName,
    required this.restaurantlocation,
  });

  static final List<NearRestaurentListModel> NearRestaurantList = [
    NearRestaurentListModel(
      restaurantName: "Royal Taj Restaurant",
      restaurantlocation: '2 km away',
    ),
    NearRestaurentListModel(
      restaurantName: "LalQila Restaurant",
      restaurantlocation: '2 km away',
    ),
    NearRestaurentListModel(
      restaurantName: "Lasania Restaurant",
      restaurantlocation: '2 km away',
    ),
    NearRestaurentListModel(
      restaurantName: "Bismillah Restaurant",
      restaurantlocation: '2 km away',
    ),
    NearRestaurentListModel(
      restaurantName: "Anwar Baloch",
      restaurantlocation: '2 km away',
    ),
    NearRestaurentListModel(
      restaurantName: "Second Wife",
      restaurantlocation: '2 km away',
    ),
  ];
}

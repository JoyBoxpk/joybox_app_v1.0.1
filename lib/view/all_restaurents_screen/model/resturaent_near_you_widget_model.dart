class NearRestaurentListWidegtModel {
  final String restaurantName, restaurantlocation;

  NearRestaurentListWidegtModel({
    required this.restaurantName,
    required this.restaurantlocation,
  });

  static final List<NearRestaurentListWidegtModel> NearRestaurantList = [
    NearRestaurentListWidegtModel(
      restaurantName: "Royal Taj Restaurant",
      restaurantlocation: '2 km away',
    ),
    NearRestaurentListWidegtModel(
      restaurantName: "LalQila Restaurant",
      restaurantlocation: '2 km away',
    ),
    NearRestaurentListWidegtModel(
      restaurantName: "Lasania Restaurant",
      restaurantlocation: '2 km away',
    ),
    NearRestaurentListWidegtModel(
      restaurantName: "Bismillah Restaurant",
      restaurantlocation: '2 km away',
    ),
    NearRestaurentListWidegtModel(
      restaurantName: "Anwar Baloch",
      restaurantlocation: '2 km away',
    ),
    NearRestaurentListWidegtModel(
      restaurantName: "Second Wife",
      restaurantlocation: '2 km away',
    ),
  ];
}

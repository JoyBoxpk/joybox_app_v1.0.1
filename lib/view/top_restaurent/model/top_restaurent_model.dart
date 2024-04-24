class TopRestaurantModel {
  final String name;
  final String description;
  final String openingHours;
  final double rating;
  final String imageUrl;

  TopRestaurantModel({
    required this.name,
    required this.description,
    required this.openingHours,
    required this.rating,
    required this.imageUrl,
  });
}

final List<TopRestaurantModel> restaurants = [
  TopRestaurantModel(
    name: "LalQila Restaurant",
    description: "A Mughal Buffet restaurant",
    openingHours: "Opening 12pm - 12am",
    rating: 4.9,
    imageUrl: "assets/images/top_restaurent_screen_img1.png",
  ),
  TopRestaurantModel(
    name: "LalQila Restaurant",
    description: "A Mughal Buffet restaurant",
    openingHours: "Opening 12pm - 12am",
    rating: 4.9,
    imageUrl: "assets/images/top_restaurent_screen_img1.png",
  ),
  TopRestaurantModel(
    name: "LalQila Restaurant",
    description: "A Mughal Buffet restaurant",
    openingHours: "Opening 12pm - 12am",
    rating: 4.9,
    imageUrl: "assets/images/top_restaurent_screen_img1.png",
  ),
  TopRestaurantModel(
    name: "LalQila Restaurant",
    description: "A Mughal Buffet restaurant",
    openingHours: "Opening 12pm - 12am",
    rating: 4.9,
    imageUrl: "assets/images/top_restaurent_screen_img1.png",
  ),
  // Add more restaurant data as needed
];

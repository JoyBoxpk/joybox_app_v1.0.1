class TraditionalRestaurantModel {
  final String name;
  final double rating;
  final int reviewCount;
  final bool isFree;
  final String imageAsset;
  final String imageUrl;

  TraditionalRestaurantModel({
    required this.name,
    required this.rating,
    required this.reviewCount,
    required this.isFree,
    required this.imageAsset,
    required this.imageUrl,
  });
}

final List<TraditionalRestaurantModel> restaurants = [
  TraditionalRestaurantModel(
    name: 'LalQila',
    rating: 4.9,
    reviewCount: 3000,
    isFree: true,
    imageAsset: "assets/images/lal-qila-restaurant-in.jpg",
    imageUrl: "https://example.com/lalqila_image.jpg",
  ),
  TraditionalRestaurantModel(
    name: 'LalQila',
    rating: 4.9,
    reviewCount: 3000,
    isFree: true,
    imageAsset: "assets/images/lal-qila-restaurant-in.jpg",
    imageUrl: "https://example.com/lalqila_image.jpg",
  ),
  TraditionalRestaurantModel(
    name: 'LalQila',
    rating: 4.9,
    reviewCount: 3000,
    isFree: true,
    imageAsset: "assets/images/lal-qila-restaurant-in.jpg",
    imageUrl: "https://example.com/lalqila_image.jpg",
  ),
  // Add more restaurants here
];

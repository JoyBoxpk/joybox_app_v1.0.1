class TopRestaurantWidgetModel {
  final String name;
  final String imagePath;
  final String openingHours;
  final String description;
  final int rating;

  TopRestaurantWidgetModel({
    required this.description,
    required this.rating,
    required this.name,
    required this.imagePath,
    required this.openingHours,
  });

  static final List<TopRestaurantWidgetModel> topRestaurantsList = [
    TopRestaurantWidgetModel(
      rating: 3,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    TopRestaurantWidgetModel(
      rating: 4,
      name: "Big Tree House",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    TopRestaurantWidgetModel(
      rating: 5,
      name: "Chaupal",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    TopRestaurantWidgetModel(
      rating: 1,
      name: "Cafe Bistro",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
  ];
}

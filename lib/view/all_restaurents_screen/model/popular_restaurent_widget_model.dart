class PopularRestaurantWidgetModel {
  final String name;
  final String imagePath;
  final String openingHours;
  final String description;
  final int rating;

  PopularRestaurantWidgetModel({
    required this.description,
    required this.rating,
    required this.name,
    required this.imagePath,
    required this.openingHours,
  });

  static final List<PopularRestaurantWidgetModel> popularRestaurantsList = [
    PopularRestaurantWidgetModel(
      rating: 4,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    PopularRestaurantWidgetModel(
      rating: 4,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    PopularRestaurantWidgetModel(
      rating: 3,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    PopularRestaurantWidgetModel(
      rating: 3,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
  ];
}

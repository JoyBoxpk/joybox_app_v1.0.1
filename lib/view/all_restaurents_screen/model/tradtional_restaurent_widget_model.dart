class TraditionalRestaurantsWidgetModel {
  final String name;
  final String imagePath;
  final String openingHours;
  final String description;
  final int rating;

  TraditionalRestaurantsWidgetModel({
    required this.description,
    required this.rating,
    required this.name,
    required this.imagePath,
    required this.openingHours,
  });

  static final List<TraditionalRestaurantsWidgetModel> traditionalRestaurantsLists = [
    TraditionalRestaurantsWidgetModel(
      rating: 2,
      name: "The East End",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    TraditionalRestaurantsWidgetModel(
      rating: 4,
      name: "Bam-Bou",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    TraditionalRestaurantsWidgetModel(
      rating: 3,
      name: "Rosati",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    TraditionalRestaurantsWidgetModel(
      rating: 3,
      name: "Coconut Grove",
      imagePath: "assets/images/top_restaurent_widget_img1.png",
      openingHours: "Opening 11pm - 12am",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
  ];
}

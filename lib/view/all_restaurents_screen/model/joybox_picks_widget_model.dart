class JoyBoxPicksWidgetModel {
  final String name;
  final String imagePath;
  final String description;
  final int rating;

  JoyBoxPicksWidgetModel({
    required this.description,
    required this.rating,
    required this.name,
    required this.imagePath,
  });

  static final List<JoyBoxPicksWidgetModel> joyBoxPicksList = [
    JoyBoxPicksWidgetModel(
      rating: 4,
      name: "Lachine",
      imagePath: "assets/images/Joybox_picks_widget_img1.png",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    JoyBoxPicksWidgetModel(
      rating: 4,
      name: "Movenpick",
      imagePath: "assets/images/Joybox_picks_widget_img1.png",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    JoyBoxPicksWidgetModel(
      rating: 3,
      name: "Bam-Bou",
      imagePath: "assets/images/Joybox_picks_widget_img1.png",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
    JoyBoxPicksWidgetModel(
      rating: 3,
      name: "Movenpick",
      imagePath: "assets/images/Joybox_picks_widget_img1.png",
      description: 'Lebanese restaurant & an Italian eatery',
    ),
  ];
}

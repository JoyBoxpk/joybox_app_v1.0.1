class CustomItemModel {
  final String text;
  final String imagePath;

  CustomItemModel({required this.text, required this.imagePath});


  static List<CustomItemModel> customItemModelList = [
    CustomItemModel(text: "Food", imagePath: "assets/images/img6_home_screen.png"),
    CustomItemModel(text: "Education", imagePath: "assets/images/img7_home_screen.png"),
    CustomItemModel(text: "Health", imagePath: "assets/images/img8_home_screen.png"),
    CustomItemModel(text: "Furniture", imagePath: "assets/images/img9_home_screen.png"),
  ];

}

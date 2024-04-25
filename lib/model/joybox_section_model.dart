
class JoyBoxSectionModel {
  final String dealName;
  final String imagePath;
  final String itemsName;
  final double itemPrice;

  JoyBoxSectionModel({
    required this.dealName,
    required this.imagePath,
    required this.itemsName,
    required this.itemPrice,
  });

  static final List<JoyBoxSectionModel> joyBoxSectionItemsList = [
    JoyBoxSectionModel(
        dealName: "Mac Combo Deal",
        imagePath: "assets/images/joybox_section_img1.png",
        itemsName: "Burger+Frise+Drink",
        itemPrice: 799.00,
    ),
    JoyBoxSectionModel(
        dealName: "Masala Wings",
        imagePath: "assets/images/joybox_section_img2.png",
        itemsName: "Wings+Drink",
        itemPrice: 899.00,
    ),
    JoyBoxSectionModel(
      dealName: "Mac Combo Deal",
      imagePath: "assets/images/joybox_section_img1.png",
      itemsName: "Burger+Frise+Drink",
      itemPrice: 999.00,
    ),
    JoyBoxSectionModel(
      dealName: "Masala Wings",
      imagePath: "assets/images/joybox_section_img2.png",
      itemsName: "Wings+Drink",
      itemPrice: 1099.00,
    ),
  ];
}
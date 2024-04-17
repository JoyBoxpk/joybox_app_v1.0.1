
class JoyBoxChoiceWidgetOneModel {
  final String dealName;
  final String imagePath;
  final int price;

  JoyBoxChoiceWidgetOneModel({
    required this.dealName,
    required this.imagePath,
    required this.price,
  });

  static final List<JoyBoxChoiceWidgetOneModel> joyBoxChoiceItemsList = [
    JoyBoxChoiceWidgetOneModel(
        dealName: "Mac Combo Deals",
        imagePath: "assets/images/joybox_choice_screen_img1.png",
        price: 799
    ),
    JoyBoxChoiceWidgetOneModel(
        dealName: "Fiesta Combo Deals",
        imagePath: "assets/images/joybox_choice_screen_img1.png",
        price: 250,
    ),
    JoyBoxChoiceWidgetOneModel(
        dealName: "Mac Combo Deals",
        imagePath: "assets/images/joybox_choice_screen_img1.png",
        price: 799
    ),
    JoyBoxChoiceWidgetOneModel(
      dealName: "Fiesta Combo Deals",
      imagePath: "assets/images/joybox_choice_screen_img1.png",
      price: 250,
    ),
  ];
}
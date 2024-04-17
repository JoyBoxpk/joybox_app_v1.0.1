
class JoyBoxChoiceWidgetTwoModel {
  final String itemName;
  final String imageOnePath;
  final String imageTwoPath;
  final int price;

  JoyBoxChoiceWidgetTwoModel({
    required this.itemName,
    required this.imageOnePath,
    required this.imageTwoPath,
    required this.price,
  });

  static final List<JoyBoxChoiceWidgetTwoModel> joyBoxChoiceItemsList = [
    JoyBoxChoiceWidgetTwoModel(
        itemName: "Cup Cake",
        imageOnePath: "assets/images/joybox_choice_screen_img4.png",
        imageTwoPath: "assets/images/joybox_choice_screen_img5.png",
        price: 200
    ),
    JoyBoxChoiceWidgetTwoModel(
        itemName: "Cup Cake",
        imageOnePath: "assets/images/joybox_choice_screen_img4.png",
        imageTwoPath: "assets/images/joybox_choice_screen_img5.png",
        price: 150
    ),
    JoyBoxChoiceWidgetTwoModel(
        itemName: "Cup Cake",
        imageOnePath: "assets/images/joybox_choice_screen_img4.png",
        imageTwoPath: "assets/images/joybox_choice_screen_img5.png",
        price: 400
    ),
  ];
}
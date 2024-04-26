class NotificationTabItemModel {
  final String itemName;
  final String itemImg;
  NotificationTabItemModel({required this.itemName, required this.itemImg});
}

final List<NotificationTabItemModel> notificationTabItem = [
  NotificationTabItemModel(
      itemName: "Notifcation",
      itemImg: "assets/images/drawer_notiification_img.svg"),
  NotificationTabItemModel(
      itemName: "Messages", itemImg: "assets/images/drawer_img_6.svg"),
];

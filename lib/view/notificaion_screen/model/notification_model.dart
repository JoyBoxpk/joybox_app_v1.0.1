class NotificationModel {
  final String title;
  final String subtitle;
  final String imageUrl;
  final DateTime time;

  NotificationModel({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.time,
  });
}

List<NotificationModel> notifications = [
  NotificationModel(
    title: "Hi, Haris",
    subtitle:
        "Zaid just grabbed your order from the kitchen. Your delivery is on schedule for 5:15pm. Cash on delivery",
    imageUrl: "assets/images/notification_screen_img2.png",
    time: DateTime.now().subtract(Duration(minutes: 10)),
  ),
  NotificationModel(
    title: "Hi, Haris",
    subtitle:
        "Zaid just grabbed your order from the kitchen. Your delivery is on schedule for 5:15pm. Cash on delivery",
    imageUrl: "assets/images/notification_screen_img2.png",
    time: DateTime.now().subtract(Duration(minutes: 10)),
  ),
  NotificationModel(
    title: "Hi, Haris",
    subtitle:
        "Zaid just grabbed your order from the kitchen. Your delivery is on schedule for 5:15pm. Cash on delivery",
    imageUrl: "assets/images/notification_screen_img2.png",
    time: DateTime.now().subtract(Duration(minutes: 10)),
  ),
  // Add more notifications as needed
];

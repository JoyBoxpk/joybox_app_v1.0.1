import 'package:timeago/timeago.dart' as timeago;

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

  String getFormattedTime() {
    // Use timeago package to format the time
    return timeago.format(time, locale: 'en_short');
  }
}

List<NotificationModel> notifications = [
  NotificationModel(
    title: "Hi, Haris",
    subtitle:
        "Zaid just grabbed your order from the kitchen. Your delivery is on schedule for 5:15pm. Cash on delivery",
    imageUrl: "assets/images/notification_screen_img2.png",
    time: DateTime.now().subtract(const Duration(minutes: 10)),
  ),

  NotificationModel(
    title: "",
    subtitle:
        "Carving deep dishes? Use JB wallet and get 25% discount on any regular pizza from any restaurant",
    imageUrl: "assets/images/notification_screen_img3.png",
    time: DateTime.now().subtract(const Duration(minutes: 100)),
  ),
  NotificationModel(
    title: "Hi, Haris",
    subtitle:
        "Zaid just grabbed your order from the kitchen. Your delivery is on schedule for 5:15pm. Cash on delivery",
    imageUrl: "assets/images/notification_screen_img2.png",
    time: DateTime.now().subtract(const Duration(minutes: 200)),
  ),
  NotificationModel(
    title: "Congratulations",
    subtitle: "You just gain 200 JB rewards",
    imageUrl: "assets/images/notification_screen_img3.png",
    time: DateTime.now().subtract(const Duration(minutes: 40)),
  ),
  // Add more notifications as needed
];

class NotificationOptionsModel {
  final String optionType;
  NotificationOptionsModel({required this.optionType});
}

final List<NotificationOptionsModel> notificationOptions = [
  NotificationOptionsModel(optionType: "All"),
  NotificationOptionsModel(optionType: "Read"),
  NotificationOptionsModel(optionType: "Unread"),
  NotificationOptionsModel(optionType: "Archive"),
];

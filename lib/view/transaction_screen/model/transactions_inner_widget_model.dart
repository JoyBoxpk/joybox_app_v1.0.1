class TransactionInnerWidgetModel {
  final String imagePath;
  final String title;
  final String category;
  final double amount;
  final String date;

  TransactionInnerWidgetModel({
    required this.imagePath,
    required this.title,
    required this.category,
    required this.amount,
    required this.date,
  });
}

List<TransactionInnerWidgetModel> transactions = [
  TransactionInnerWidgetModel(
    imagePath: "assets/images/transactions_screen_img3.jpg",
    title: "Burger O’Clock",
    category: "Food n Drinks",
    amount: 3000,
    date: "24th Nov 2023",
  ),
  TransactionInnerWidgetModel(
    imagePath: "assets/images/transactions_screen_img3.jpg",
    title: "Burger O’Clock",
    category: "Food n Drinks",
    amount: 8000,
    date: "24th Nov 2023",
  ),
  TransactionInnerWidgetModel(
    imagePath: "assets/images/transactions_screen_img3.jpg",
    title: "Burger O’Clock",
    category: "Food n Drinks",
    amount: 2000,
    date: "23th Nov 2023",
  ),
  TransactionInnerWidgetModel(
    imagePath: "assets/images/transactions_screen_img3.jpg",
    title: "Burger O’Clock",
    category: "Food n Drinks",
    amount: 6000,
    date: "22th Nov 2023",
  ),
  // Add more transactions as needed
];

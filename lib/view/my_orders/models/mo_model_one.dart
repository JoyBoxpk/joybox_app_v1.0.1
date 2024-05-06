class MOModelOne {
  final String imagePath;
  final double amount;
  final int quantity;
  final String foodName;
  final String restaurantName;
  final String date;

  MOModelOne({
    required this.imagePath,
    required this.amount,
    required this.quantity,
    required this.foodName,
    required this.restaurantName,
    required this.date,
  });

  static final List<MOModelOne> ordersList = [
    MOModelOne(
      imagePath: "assets/images/transactions_screen_img3.jpg",
      amount: 700,
      quantity: 2,
      foodName: "Crunch Burger",
      restaurantName: "MacDonald",
      date: "24/03/2023",
    ),
    MOModelOne(
      imagePath: "assets/images/transactions_screen_img3.jpg",
      amount: 200,
      quantity: 3,
      foodName: "Crunch Burger",
      restaurantName: "KFC",
      date: "05/04/2023",
    ),
    MOModelOne(
      imagePath: "assets/images/transactions_screen_img3.jpg",
      amount: 300,
      quantity: 4,
      foodName: "Mighty Burger",
      restaurantName: "KFC",
      date: "20/04/2023",
    ),
    MOModelOne(
      imagePath: "assets/images/transactions_screen_img3.jpg",
      amount: 300,
      quantity: 4,
      foodName: "Mighty Burger",
      restaurantName: "KFC",
      date: "10/05/2023",
    ),
    MOModelOne(
      imagePath: "assets/images/transactions_screen_img3.jpg",
      amount: 300,
      quantity: 4,
      foodName: "Mighty Burger",
      restaurantName: "Burger Lab",
      date: "28/05/2023",
    ),
    MOModelOne(
      imagePath: "assets/images/transactions_screen_img3.jpg",
      amount: 300,
      quantity: 4,
      foodName: "Mighty Burger",
      restaurantName: "Kababjees",
      date: "16/06/2023",
    ),
  ];
}

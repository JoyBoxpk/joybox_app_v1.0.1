class OrderFoodItemModel {
  final String name;
  final String category;
  final double price;
  final DateTime date;

  OrderFoodItemModel({
    required this.name,
    required this.category,
    required this.price,
    required this.date,
  });

  static final List<OrderFoodItemModel> orderFoodItemtList = [
    OrderFoodItemModel(
        name: 'Burger O’Clock',
        category: 'Chicken Sliders Deal for 4',
        price: 3000,
        date: DateTime.now()),
    OrderFoodItemModel(
        name: 'Burger O’Clock',
        category: 'Chicken Sliders',
        price: 3000,
        date: DateTime.now()),
    OrderFoodItemModel(
        name: 'Burger O’Clock',
        category: 'Chicken Sliders Deal for 4',
        price: 3000,
        date: DateTime.now()),
    OrderFoodItemModel(
        name: 'Burger O’Clock',
        category: 'Chicken Sliders',
        price: 3000,
        date: DateTime.now()),
    OrderFoodItemModel(
        name: 'Burger O’Clock',
        category: 'Chicken Sliders Deal for 4',
        price: 3000,
        date: DateTime.now()),
  ];
}

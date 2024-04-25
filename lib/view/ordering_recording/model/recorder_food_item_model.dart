class ReorderFoodItemModel {
  final String name;
  final String category;
  final double price;
  final DateTime date;

  ReorderFoodItemModel({
    required this.name,
    required this.category,
    required this.price,
    required this.date,
  });

  static final List<ReorderFoodItemModel> reorderFoodItemtList = [
    ReorderFoodItemModel(
        name: 'Chicken Sliders Deal for 4',
        category: 'Chicken Sliders',
        price: 3000,
        date: DateTime.now()),
    ReorderFoodItemModel(
        name: 'Burger O’Clock',
        category: 'Chicken Sliders',
        price: 3000,
        date: DateTime.now()),
    ReorderFoodItemModel(
        name: 'Chicken Sliders Deal for 4',
        category: 'Chicken Sliders',
        price: 3000,
        date: DateTime.now()),
    ReorderFoodItemModel(
        name: 'Burger O’Clock',
        category: 'Chicken Sliders',
        price: 3000,
        date: DateTime.now()),
    ReorderFoodItemModel(
        name: 'Chicken Sliders Deal for 4',
        category: 'Chicken Sliders',
        price: 3000,
        date: DateTime.now()),
  ];
}

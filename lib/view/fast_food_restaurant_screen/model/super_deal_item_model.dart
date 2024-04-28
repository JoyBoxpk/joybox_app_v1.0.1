class SuperDealItemModel {
  final String image;
  final String name;
  final String description;
  final String price;
  final String discount;

  SuperDealItemModel({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.discount,
  });
}

final List<SuperDealItemModel> superDealItems = [
  SuperDealItemModel(
    image: "assets/images/img10_fast_food_restaurant.png",
    name: "Super Saver Deal 1",
    description: "Any One Wrap from creamy,\nfiery, and smokey with 1 drink",
    price: "Rs. 559",
    discount: "18% OFF",
  ),
  SuperDealItemModel(
    image: "assets/images/img10_fast_food_restaurant.png",
    name: "Super Saver Deal 2",
    description: "Any One Burger from creamy,\nzinger, and smokey with 1 drink",
    price: "Rs. 789",
    discount: "25% OFF",
  ),
  SuperDealItemModel(
    image: "assets/images/img10_fast_food_restaurant.png",
    name: "Super Saver Deal 3",
    description: "Any One Burger from creamy,\nzinger, and smokey with 2 drink",
    price: "Rs. 900",
    discount: "30% OFF",
  ),
  SuperDealItemModel(
    image: "assets/images/img10_fast_food_restaurant.png",
    name: "Super Saver Deal 4",
    description:
        "Any Four Burger from creamy,\nzinger, and smokey with 4 drink",
    price: "Rs. 2000",
    discount: "35% OFF",
  ),
];

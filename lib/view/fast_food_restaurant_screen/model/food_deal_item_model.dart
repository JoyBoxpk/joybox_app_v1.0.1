class FoodDealItemModel {
  final String image;
  final String buttonText;
  final String price;
  final String dealName;

  FoodDealItemModel({
    required this.image,
    required this.buttonText,
    required this.price,
    required this.dealName,
  });
}

final List<FoodDealItemModel> fooddealitems = [
  FoodDealItemModel(
    image: "assets/images/img3_fast_food_restaurant.png",
    buttonText: "Rs. 799",
    price: "Rs. 799",
    dealName: "Deal 1",
  ),
  FoodDealItemModel(
    image: "assets/images/img6_fast_food_restaurant.png",
    buttonText: "Rs. 1599",
    price: "Rs. 1599",
    dealName: "Deal 2",
  ),
  FoodDealItemModel(
    image: "assets/images/img6_fast_food_restaurant.png",
    buttonText: "Rs. 1199",
    price: "Rs. 1199",
    dealName: "Deal 3",
  ),
];

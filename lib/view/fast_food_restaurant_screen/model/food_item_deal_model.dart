class FoodItemDealModel {
  final String imagePath;
  final String price;
  final String? dealTitle;

  FoodItemDealModel({
    required this.imagePath,
    required this.price,
    this.dealTitle,
  });
}

List<FoodItemDealModel> popularFoodItemDealModelList = [
  FoodItemDealModel(
      dealTitle: "Deal 1",
      imagePath: "assets/images/img5_fast_food_restaurant.png",
      price: "Rs. 799"),
  FoodItemDealModel(
      dealTitle: "Deal 2",
      imagePath: "assets/images/img8_fast_food_restaurant.png",
      price: "Rs. 1599"),
  FoodItemDealModel(
      dealTitle: "Deal 3",
      imagePath: "assets/images/img9_fast_food_restaurant.png",
      price: "Rs. 1199")
];

List<FoodItemDealModel> pizzaFoodItemDealModelList = [
  FoodItemDealModel(
      dealTitle: "Deal 1",
      imagePath: "assets/images/pizza_img1.png",
      price: "Rs. 799"),
  FoodItemDealModel(
      dealTitle: "Deal 2",
      imagePath: "assets/images/pizza_img2.png",
      price: "Rs. 1599"),
  FoodItemDealModel(
      dealTitle: "Deal 3",
      imagePath: "assets/images/pizza_img2.png",
      price: "Rs. 1199")
];

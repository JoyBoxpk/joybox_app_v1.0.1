import 'package:flutter/foundation.dart';

class TabListModel {
  final String imagePath;
  final String title1;
  final String title2;
  final String subTitle;
  final int? discount;
  final String? welcomeGift; // Nullable welcomeGift
  final VoidCallback onPressed;

   TabListModel({
    required this.imagePath,
    required this.title1,
    required this.title2,
    required this.subTitle,
    this.discount,
    this.welcomeGift, // Made welcomeGift nullable
    required this.onPressed,
  });


  static final List<TabListModel> burgersRestaurantList = [
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Red Apple",
      title2: "Burgers, Wraps and Rolls",
      discount: 20,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Red Apple - Lucky One Mall",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Red Apple",
      title2: "Burgers, Wraps and Rolls",
      discount: 15,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Red Apple - Dolmen Mall",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Burger Lab",
      title2: "Burgers, Wraps and Rolls",
      subTitle: "Burger Lab - Jauhar",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Red Apple",
      title2: "Burgers, Wraps and Rolls",
      discount: 30,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Red Apple - DHA",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Burger Lab",
      title2: "Burgers, Wraps and Rolls",
      subTitle: "Burger Lab - Muhammad Society",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Red Apple",
      title2: "Burgers, Wraps and Rolls",
      discount: 10,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Red Apple - Highway",
      onPressed: (){},
    ),
  ];

  static final List<TabListModel> pizzaRestaurantList = [
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Pizza Max",
      title2: "Fajita Pizza",
      discount: 10,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Pizza Max - RJ Mall",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Pizza 360",
      title2: "Fajita Pizza",
      discount: 15,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Pizza 360 - Dolmen Mall",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Broadway",
      title2: "Chicken Spicy Pizza",
      subTitle: "Broadway - Jauhar",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Pizza Hut",
      title2: "Chicken Mayo Garlic Pizza",
      discount: 30,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Pizza Hut - DHA",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Broadway",
      title2: "Chicken Spicy Pizza",
      subTitle: "Broadway - Jauhar",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Pizza Hut",
      title2: "Chicken Mayo Garlic Pizza",
      discount: 30,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Pizza Hut - DHA",
      onPressed: (){},
    ),
  ];

  static final List<TabListModel> wingsRestaurantList = [
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Red Apple",
      title2: "Burgers, Wraps and Rolls",
      discount: 20,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Red Apple - Lucky One Mall",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Red Apple",
      title2: "Burgers, Wraps and Rolls",
      discount: 15,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Red Apple - Dolmen Mall",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Burger Lab",
      title2: "Burgers, Wraps and Rolls",
      subTitle: "Burger Lab - Jauhar",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Red Apple",
      title2: "Burgers, Wraps and Rolls",
      discount: 30,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Red Apple - DHA",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Burger Lab",
      title2: "Burgers, Wraps and Rolls",
      subTitle: "Burger Lab - Muhammad Society",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Red Apple",
      title2: "Burgers, Wraps and Rolls",
      discount: 10,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Red Apple - Highway",
      onPressed: (){},
    ),
  ];

  static final List<TabListModel> rollsRestaurantList = [
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Pizza Max",
      title2: "Fajita Pizza",
      discount: 10,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Pizza Max - RJ Mall",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Pizza 360",
      title2: "Fajita Pizza",
      discount: 15,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Pizza 360 - Dolmen Mall",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Broadway",
      title2: "Chicken Spicy Pizza",
      subTitle: "Broadway - Jauhar",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Pizza Hut",
      title2: "Chicken Mayo Garlic Pizza",
      discount: 30,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Pizza Hut - DHA",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Broadway",
      title2: "Chicken Spicy Pizza",
      subTitle: "Broadway - Jauhar",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Pizza Hut",
      title2: "Chicken Mayo Garlic Pizza",
      discount: 30,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Pizza Hut - DHA",
      onPressed: (){},
    ),
  ];

  static final List<TabListModel> sandwichRestaurantList = [
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Red Apple",
      title2: "Burgers, Wraps and Rolls",
      discount: 20,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Red Apple - Lucky One Mall",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Red Apple",
      title2: "Burgers, Wraps and Rolls",
      discount: 15,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Red Apple - Dolmen Mall",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Burger Lab",
      title2: "Burgers, Wraps and Rolls",
      subTitle: "Burger Lab - Jauhar",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Red Apple",
      title2: "Burgers, Wraps and Rolls",
      discount: 30,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Red Apple - DHA",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Burger Lab",
      title2: "Burgers, Wraps and Rolls",
      subTitle: "Burger Lab - Muhammad Society",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Red Apple",
      title2: "Burgers, Wraps and Rolls",
      discount: 10,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Red Apple - Highway",
      onPressed: (){},
    ),
  ];

  static final List<TabListModel> nuggetsRestaurantList = [
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Pizza Max",
      title2: "Fajita Pizza",
      discount: 10,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Pizza Max - RJ Mall",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Pizza 360",
      title2: "Fajita Pizza",
      discount: 15,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Pizza 360 - Dolmen Mall",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Broadway",
      title2: "Chicken Spicy Pizza",
      subTitle: "Broadway - Jauhar",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Pizza Hut",
      title2: "Chicken Mayo Garlic Pizza",
      discount: 30,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Pizza Hut - DHA",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Broadway",
      title2: "Chicken Spicy Pizza",
      subTitle: "Broadway - Jauhar",
      onPressed: (){},
    ),
    TabListModel(
      imagePath: "assets/images/hotel_img.png",
      title1: "Pizza Hut",
      title2: "Chicken Mayo Garlic Pizza",
      discount: 30,
      welcomeGift: "Welcome gift: free delivery",
      subTitle: "Pizza Hut - DHA",
      onPressed: (){},
    ),
  ];
}
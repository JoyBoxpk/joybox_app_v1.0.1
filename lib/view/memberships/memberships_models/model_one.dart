class ModelOne {
  final int actualPrice;
  final int discountPrice;
  final int rating;
  final String passName;
  final String infoOne;
  final String infoTwo;
  final String infoThree;
  final String infoFour;
  final String imageUrl;

  ModelOne({
    required this.actualPrice,
    required this.discountPrice,
    required this.rating,
    required this.passName,
    required this.infoOne,
    required this.infoTwo,
    required this.infoThree,
    required this.infoFour,
    required this.imageUrl,
  });

  static List<ModelOne> membershipList = [
    ModelOne(
      actualPrice: 25000,
      discountPrice: 10000,
      rating: 4,
      passName: "VIP E-Shopper Pass",
      infoOne: "Two Platinum Membership",
      infoTwo: "Two Gold Membership",
      infoThree: "Two Silver Membership",
      infoFour: "Four Bronze Membership",
      imageUrl: "assets/images/memberships_screen_img1.png",
    ),
    ModelOne(
      actualPrice: 5000,
      discountPrice: 2500,
      rating: 3,
      passName: "Gold Retailer Club",
      infoOne: "One Platinum Membership",
      infoTwo: "One Gold Membership",
      infoThree: "One Silver Membership",
      infoFour: "One Bronze Membership",
      imageUrl: "assets/images/memberships_screen_img3.png",
    ),
    ModelOne(
      actualPrice: 3000,
      discountPrice: 1000,
      rating: 5,
      passName: "Prime Shopper Club",
      infoOne: "Four Platinum Membership",
      infoTwo: "Five Gold Membership",
      infoThree: "Six Silver Membership",
      infoFour: "Eight Bronze Membership",
      imageUrl: "assets/images/memberships_screen_img4.png",
    ),
  ];
}

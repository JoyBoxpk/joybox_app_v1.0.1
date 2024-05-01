class PickUpOrderModel {
  final String orderspeed;
  final String price;
  final String ordercount;
  PickUpOrderModel({
    required this.orderspeed,
    required this.price,
    required this.ordercount,
  });
}

List<PickUpOrderModel> pickUpModelList = [
  PickUpOrderModel(orderspeed: "10X", price: "50", ordercount: "0"),
  PickUpOrderModel(orderspeed: "20X", price: "100", ordercount: "1"),
  PickUpOrderModel(orderspeed: "30X", price: "150", ordercount: "2")
];

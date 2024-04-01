// import 'package:flutter/material.dart';
// import 'custom_item_model.dart';
// import 'data.dart';
//
// class CustomItem extends StatelessWidget {
//   final CustomItemModel item;
//
//   const CustomItem({Key? key, required this.item}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       clipBehavior: Clip.none,
//       children: [
//         Container(
//           alignment: Alignment.bottomCenter,
//           padding: EdgeInsets.only(bottom: 8),
//           width: 95,
//           height: 95,
//           decoration: BoxDecoration(
//             color: Colors.red,
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//           child: Text(
//             item.text,
//             style: Theme.of(context).textTheme.displaySmall!.copyWith(
//               color: Colors.amber,
//               fontSize: 14,
//             ),
//           ),
//         ),
//         Positioned(
//           top: -30,
//           child: Image.asset(
//             item.imagePath,
//             width: 94,
//             height: 84,
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class CommonWidget extends StatelessWidget {
//   final List<CustomItemModel> items;
//
//   const CommonWidget({Key? key, required this.items}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       bottom: -25,
//       left: 20,
//       child: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           children: [
//             ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: items.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: EdgeInsets.only(right: 15),
//                   child: CustomItem(item: items[index]),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ExampleScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Other widgets of your screen
//           CommonWidget(items: items),
//         ],
//       ),
//     );
//   }
// }

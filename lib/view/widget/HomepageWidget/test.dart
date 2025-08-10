// import 'package:ecommerce_app/controller/homepageController.dart';
// import 'package:ecommerce_app/data/model/itemsModel.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../../core/constant/linkApi.dart';
//
// class itemsTest extends GetView<HomepagecontrollerImp> {
//   const itemsTest({super.key,required this.items});
// final itemsModel items;
//   @override
//   Widget build(BuildContext context) {
//     return  SizedBox(
//       height: 120,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: controller.items.length,
//         itemBuilder: (context, i) => Stack(
//           children: [
//             Image.network(
//               "${LinkApi.imageItems}/${itemsModel.fromJson(controller.items[i])}",
//               width: 120,
//               height: 120,
//               fit: BoxFit.contain,
//             ),
//           ],
//         ),
//       ),
//     ),;
//   }
// }
// //controller.items[i]["items_image"]

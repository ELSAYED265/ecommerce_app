import 'package:ecommerce_app/controller/productDetailsController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPrice extends GetView<ProductDetailsImp> {
  const ProductPrice({required this.priceNew, required this.priceOld});
  final String priceNew;
  final String priceOld;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "\$" + "${priceNew}",
          style: TextStyle(color: Colors.red, fontFamily: "sans"),
        ),
        SizedBox(width: 13),
        Text(
          "\$" + priceOld,
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            color: Colors.grey,
            fontFamily: "sans",
          ),
        ),
      ],
    );
  }
}

import 'package:ecommerce_app/controller/productDetailsController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductChooseColor extends GetView<ProductDetailsImp> {
  const ProductChooseColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          controller.subitem.length,
          (index) => Container(
            child: Center(
              child: Text(
                controller.subitem[index]["name"],
                style: TextStyle(fontSize: 15),
              ),
            ),
            margin: EdgeInsets.only(left: 12),
            height: 40,
            width: 70,
            decoration: BoxDecoration(
              color: controller.subitem[index]["active"] == "1"
                  ? Colors.grey[600]
                  : Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}

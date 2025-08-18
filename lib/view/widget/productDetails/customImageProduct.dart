import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/controller/productDetailsController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/Color.dart';
import '../../../core/constant/linkApi.dart';

class CustomImageproduct extends GetView<ProductDetailsImp> {
  const CustomImageproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: controller.items.itemsId,
          child: CachedNetworkImage(
            imageUrl:
                "${LinkApi.imageItems}/"
                "${controller.items.itemsImage}",
          ),
        ),
        Positioned(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: AppColor.OrangeColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "20%-",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "sans",
              ),
            ),
          ),
          left: 15,
          top: 20,
        ),
        Positioned(
          right: 1,
          top: 6,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(5),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, size: 28, color: Colors.grey[700]),
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: IconButton(
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Scaffold(
                    backgroundColor: Colors.white,
                    //  appBar: AppBar(backgroundColor: Colors.black),
                    body: Center(
                      child: InteractiveViewer(
                        minScale: 0.8,
                        maxScale: 4,
                        child: Hero(
                          tag: controller.items.itemsId,
                          child: CachedNetworkImage(
                            imageUrl:
                                "${LinkApi.imageItems}/" +
                                controller.items.itemsImage,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
            icon: Icon(Icons.open_in_full),
          ),
        ),
      ],
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/controller/MyfavoriteController.dart';
import 'package:ecommerce_app/controller/itemsController.dart';
import 'package:ecommerce_app/data/model/MyFavoriteModel.dart';
import 'package:ecommerce_app/data/model/itemsModel.dart';
import 'package:ecommerce_app/view/screen/items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/favoriteController.dart';
import '../../../core/constant/linkApi.dart';
import '../../../core/function/transualtDataBase.dart';

class CustomlistFavoriteItems extends GetView<Myfavoritecontroller> {
  const CustomlistFavoriteItems({super.key, required this.myfavoriteModel});
  final MyfavoriteModel myfavoriteModel;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Myfavoritecontroller>(
      builder: (controller) => Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: myfavoriteModel.itemsId,
                child: CachedNetworkImage(
                  imageUrl:
                      LinkApi.imageItems + "/${myfavoriteModel.itemsImage}",
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 6),
              Text(
                TransulateDataBase(
                  myfavoriteModel.itemsNameAr,
                  myfavoriteModel.itemsNameEn,
                ),

                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rating 3.5",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "sans",
                      color: Colors.grey[600],
                    ),
                  ),
                  //Spacer(),
                  Row(
                    children: [
                      Icon(Icons.star, size: 15),
                      Icon(Icons.star, size: 15),
                      Icon(Icons.star, size: 15),
                      Icon(Icons.star, size: 15),
                      Icon(Icons.star, size: 15),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "200.10\$",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'sans',
                      color: Colors.red,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.removeFromMyfavorite(
                        myfavoriteModel.favoriteId.toString(),
                      );
                    },
                    icon: Icon(Icons.delete_outline, color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// final itemId = controller.items[i].itemsId;
//         controllerfav.isfavorite[controller.items[i].itemsId] =
//             controller.items[i].favorite;

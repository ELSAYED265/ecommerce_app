import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/controller/itemsController.dart';
import 'package:ecommerce_app/data/model/itemsModel.dart';
import 'package:ecommerce_app/view/screen/items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/favoriteController.dart';
import '../../../core/constant/linkApi.dart';
import '../../../core/function/transualtDataBase.dart';

class CustomlistItems extends GetView<itemsControllerImp> {
  const CustomlistItems({super.key});
  @override
  Widget build(BuildContext context) {
    FavoriteController controllerfav = Get.find();
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .77,
      ),
      itemCount: controller.items.length,
      itemBuilder: (context, i) {
        final itemId = controller.items[i].itemsId;
        controllerfav.isfavorite[controller.items[i].itemsId] =
            controller.items[i].favorite;
        return InkWell(
          onTap: () {
            // controller.gotoProductDetails(controller.items[i]);
            controller.gotoProductDetails(controller.items[i]);
          },
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: controller.items[i].itemsId,
                    child: CachedNetworkImage(
                      imageUrl:
                          LinkApi.imageItems +
                          "/${controller.items[i].itemsImage}",
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    TransulateDataBase(
                      controller.items[i].itemsNameAr,
                      controller.items[i].itemsNameEn,
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
                      GetBuilder<FavoriteController>(
                        builder: (controller) => IconButton(
                          onPressed: () {
                            if (controller.isfavorite[itemId] == "1") {
                              controller.setFavorite(itemId, "0");
                              controller.removefavorite(itemId.toString());
                            } else {
                              controller.setFavorite(itemId, "1");
                              controller.addfavorite(itemId.toString());
                            }
                          },
                          icon: Icon(
                            controller.isfavorite[itemId] == "1"
                                ? Icons.favorite
                                : Icons.favorite_outline,
                            // Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

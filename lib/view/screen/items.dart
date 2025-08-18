import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/controller/favoriteController.dart';
import 'package:ecommerce_app/controller/itemsController.dart';
import 'package:ecommerce_app/core/class/handlingDataView.dart';
import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:ecommerce_app/core/constant/imageAsset.dart';
import 'package:ecommerce_app/core/constant/linkApi.dart';
import 'package:ecommerce_app/view/widget/generalWidget/customAppBar.dart';
import 'package:ecommerce_app/view/widget/items/customList_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widget/items/listCategoriesItems.dart';

class Items extends StatelessWidget {
  Items({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(itemsControllerImp());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: GetBuilder<itemsControllerImp>(
          builder: (controller) => ListView(
            children: [
              CustomAppBar(
                hintText: "46".tr,
                onPressedNotfi: () {},
                onPressedFavori: () {
                  Get.toNamed(AppRoote.myFavorite);
                },
                onPressedsearch: () {},
              ),
              ListcategoriesItems(),
              //SizedBox(height: 20),
              Handlingdataview(
                statusRequest: controller.statusRequest,
                widget: CustomlistItems(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

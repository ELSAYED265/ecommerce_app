import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/controller/productDetailsController.dart';
import 'package:ecommerce_app/core/constant/Color.dart';
import 'package:ecommerce_app/core/constant/linkApi.dart';
import 'package:ecommerce_app/view/widget/productDetails/CustomButtomForBuy.dart';
import 'package:ecommerce_app/view/widget/productDetails/ProductReview.dart';
import 'package:ecommerce_app/view/widget/productDetails/Product_choose_quantaties.dart';
import 'package:ecommerce_app/view/widget/productDetails/addProduct.dart';
import 'package:ecommerce_app/view/widget/productDetails/customImageProduct.dart';
import 'package:ecommerce_app/view/widget/productDetails/productPrice.dart';
import 'package:ecommerce_app/view/widget/productDetails/product_choose_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../widget/generalWidget/customButton.dart';
import '../widget/items/customBottomItems.dart';

class Productdetails extends StatelessWidget {
  const Productdetails({super.key});
  @override
  Widget build(BuildContext context) {
    ProductDetailsImp controller = Get.put(ProductDetailsImp());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageproduct(),
            SizedBox(height: 5),
            Text(controller.items.itemsNameEn),
            SizedBox(height: 5),
            ProductPrice(
              priceNew: "${controller.items.itemsPrice}",
              priceOld: '500',
            ),
            SizedBox(height: 4),
            ProductReview(),
            SizedBox(height: 8),
            Text(
              controller.items.itemsDescEn,
              style: TextStyle(color: Colors.grey[700], fontSize: 14.5),
            ),
            Text("Choose Color", style: TextStyle(fontSize: 20)),
            SizedBox(height: 8),
            ProductChooseColor(),
            SizedBox(height: 8),
            Text("choose Quantaies", style: TextStyle(fontSize: 20)),
            SizedBox(height: 7),
            ProductChooseQuantaties(onAdd: () {}, onRemove: () {}, text: "1"),
            SizedBox(height: 20),
            Custombuttomforbuy(),
          ],
        ),
      ),
    );
  }
}

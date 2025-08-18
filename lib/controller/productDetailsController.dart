import 'package:ecommerce_app/data/model/itemsModel.dart';
import 'package:get/get.dart';

abstract class ProductDetails extends GetxController {
  initailData();
}

class ProductDetailsImp extends ProductDetails {
  late itemsModel items;
  @override
  initailData() {
    items = Get.arguments['itemsmodel'];
    print("${items.itemsNameEn}/////////////////////////////");
  }

  List subitem = [
    {"name": "offwhite", "id": "1", "active": "1"},
    {"name": "grey", "id": "2", "active": "0"},
    {"name": "black", "id": "3", "active": "0"},
  ];

  @override
  void onInit() {
    initailData();
    super.onInit();
  }
}

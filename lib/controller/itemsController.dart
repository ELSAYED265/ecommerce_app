import 'package:dartz/dartz_unsafe.dart';
import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:ecommerce_app/core/services/sevices.dart';
import 'package:ecommerce_app/data/datasource/remote/itemsData.dart';
import 'package:ecommerce_app/data/model/itemsModel.dart';
import 'package:get/get.dart';

import '../core/class/statusRequest.dart';
import '../core/function/handligDataController.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

abstract class itemsController extends GetxController {
  onintialData();
  changcate(int i, String cat);
  gotoProductDetails(itemsModel itemsmodel);
}

class itemsControllerImp extends itemsController {
  MySevices sevices = Get.find();
  List Categories = [];
  int? selectcat;
  String? CategoriesId;
  String? choose;
  Itemsdata itemsdata = Itemsdata(Get.find());
  late StatusRequest statusRequest;
  List data = [];
  List<itemsModel> items = [];
  getData(CategoriesId) async {
    items.clear();
    statusRequest = StatusRequest.loading;
    var respons = await itemsdata.getData(
      CategoriesId!,
      sevices.sharedPreferences.getString("id")!,
    );
    statusRequest = HandlingData(respons);
    if (statusRequest == StatusRequest.success) {
      if (respons["status"] == 'success') {
        data = respons["data"];
        for (var element in data) {
          items.add(itemsModel.fromJson(element));
        }
      } else {
        statusRequest = StatusRequest.failer;
      }
    }

    update();
  }

  @override
  onintialData() {
    Categories = Get.arguments["categories"];
    selectcat = Get.arguments['selectcat'];
    CategoriesId = Get.arguments['categoriersid'];
  }

  @override
  changcate(i, cat) {
    selectcat = i;
    choose = cat;
    getData(choose);
    update();
  }

  gotoProductDetails(itemsmodel) {
    Get.toNamed(AppRoote.productDetails, arguments: {"itemsmodel": itemsmodel});
    print("${itemsmodel}///////////////////");
  }

  @override
  void onInit() {
    onintialData();
    getData(CategoriesId);
    super.onInit();
  }
}

//for remo cathsh
// removecathsh() async {
//   await DefaultCacheManager().emptyCache();
// }

import 'package:ecommerce_app/core/class/statusRequest.dart';
import 'package:ecommerce_app/core/services/sevices.dart';
import 'package:ecommerce_app/data/model/MyFavoriteModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/data/datasource/remote/myFavoriteData.dart';
import '../core/function/handligDataController.dart';

class Myfavoritecontroller extends GetxController {
  MySevices mySevices = Get.find();
  Myfavoritedata favoritedata = Myfavoritedata(Get.find());
  late StatusRequest statusRequest;
  List<MyfavoriteModel> data = [];
  getData() async {
    statusRequest = StatusRequest.loading;
    var respons = await favoritedata.getData(
      mySevices.sharedPreferences.getString("id")!,
    );
    statusRequest = HandlingData(respons);
    if (statusRequest == StatusRequest.success) {
      if (respons["status"] == 'success') {
        List responsedata = respons['data'];
        data.addAll(responsedata.map((e) => MyfavoriteModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failer;
      }
    }

    update();
  }

  removeFromMyfavorite(String favoriteId) async {
    statusRequest = StatusRequest.loading;
    update();

    var respons = await favoritedata.removeFavorite(favoriteId);
    data.removeWhere(
      (element) => element.favoriteId.toString() == favoriteId.toString(),
    );
    update();
  }

  // removefavorite(String itemid) async {
  //   var respons = await favorite.RemoveData(
  //     mySevices.sharedPreferences.getString("id")!,
  //     itemid,
  //   );
  //   statusRequest = HandlingData(respons);
  //   if (statusRequest == StatusRequest.success) {
  //     if (respons["status"] == 'success') {
  //       Get.rawSnackbar(
  //         title: "✅ Success",
  //         messageText: Text(
  //           "Item remove to favorites successfully!",
  //           style: TextStyle(color: Colors.white, fontSize: 14),
  //         ),
  //         backgroundColor: Colors.green,
  //         snackPosition: SnackPosition.TOP,
  //         margin: EdgeInsets.all(10),
  //         borderRadius: 8,
  //         duration: Duration(seconds: 2),
  //       );
  //     } else {
  //       statusRequest = StatusRequest.failer;
  //     }
  //     update();
  //   }
  // }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}

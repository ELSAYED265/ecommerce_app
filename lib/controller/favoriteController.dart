import 'dart:math';

import 'package:ecommerce_app/core/class/statusRequest.dart';
import 'package:ecommerce_app/core/services/sevices.dart';
import 'package:ecommerce_app/data/datasource/remote/favoriteData.dart';
import 'package:ecommerce_app/data/model/itemsModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/function/handligDataController.dart';

class FavoriteController extends GetxController {
  Favoritedata favoritedata = Favoritedata(Get.find());
  MySevices mySevices = Get.find();
  late StatusRequest statusRequest;

  Map isfavorite = {};

  setFavorite(id, val) {
    isfavorite[id] = val;
    update();
  }

  addfavorite(String itemid) async {
    statusRequest = StatusRequest.loading;
    var respons = await favoritedata.addData(
      mySevices.sharedPreferences.getString("id")!,
      itemid,
    );
    statusRequest = HandlingData(respons);
    if (statusRequest == StatusRequest.success) {
      if (respons["status"] == 'success') {
        Get.rawSnackbar(
          title: "✅ Success",
          messageText: Text(
            "Item added to favorites successfully!",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          backgroundColor: Colors.green,
          snackPosition: SnackPosition.TOP,
          margin: EdgeInsets.all(10),
          borderRadius: 8,
          duration: Duration(seconds: 2),
        );
      } else {
        statusRequest = StatusRequest.failer;
      }
      update();
    }
  }

  removefavorite(String itemid) async {
    statusRequest = StatusRequest.loading;
    var respons = await favoritedata.RemoveData(
      mySevices.sharedPreferences.getString("id")!,
      itemid,
    );
    statusRequest = HandlingData(respons);
    if (statusRequest == StatusRequest.success) {
      if (respons["status"] == 'success') {
        Get.rawSnackbar(
          title: "✅ Success",
          messageText: Text(
            "Item remove to favorites successfully!",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          backgroundColor: Colors.green,
          snackPosition: SnackPosition.TOP,
          margin: EdgeInsets.all(10),
          borderRadius: 8,
          duration: Duration(seconds: 2),
        );
      } else {
        statusRequest = StatusRequest.failer;
      }
      update();
    }
  }
}

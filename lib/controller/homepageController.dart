import 'dart:math';

import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:ecommerce_app/core/services/sevices.dart';
import 'package:ecommerce_app/data/datasource/remote/homeData.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:ecommerce_app/data/model/itemsModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../core/class/statusRequest.dart';
import '../core/function/handligDataController.dart';
import '../data/model/categoriesmode.dart';

abstract class Homepagecontroller extends GetxController {
  MySevices mySevices = Get.find();

  getData() {}
  goToItem(List categories, int selectCat, String categoriesid) {}
}

class HomepagecontrollerImp extends Homepagecontroller {
  String? username;
  String? id;
  Homedata homedata = Homedata(Get.find());
  late StatusRequest statusRequest;
  List<CategoriesModel> Categories = [];
  List<itemsModel> items = [];
  List item = [];
  String? postionCardHome;
  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var respons = await homedata.getData();
    statusRequest = HandlingData(respons);
    if (statusRequest == StatusRequest.success) {
      if (respons["status"] == 'success') {
        Categories = List<CategoriesModel>.from(
          respons['categories'].map((e) => CategoriesModel.fromJson(e)),
        );
        ////////////////////الطريقتين نفس الحاجه///////////////////////
        item = respons["items"];
        for (var element in item) {
          items.add(itemsModel.fromJson(element));
        }
      } else {
        statusRequest = StatusRequest.failer;
      }
    }

    update();
  }

  intialData() {
    username = mySevices.sharedPreferences.getString('username');
    id = mySevices.sharedPreferences.getString("id");
    postionCardHome = mySevices.sharedPreferences.getString("lang");
  }

  @override
  goToItem(categories, selectCat, categorisId) {
    Get.toNamed(
      AppRoote.items,
      arguments: {
        "categories": categories,
        "selectcat": selectCat,
        "categoriersid": categorisId,
        "userid": id,
      },
    );
  }

  @override
  void onInit() {
    getData();
    intialData();
    super.onInit();
  }
}

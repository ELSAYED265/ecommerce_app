import 'package:ecommerce_app/controller/MyfavoriteController.dart';
import 'package:ecommerce_app/controller/homepageController.dart';
import 'package:ecommerce_app/core/class/handlingDataView.dart';
import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:ecommerce_app/view/widget/generalWidget/customAppBar.dart';
import 'package:ecommerce_app/view/widget/HomepageWidget/customCardHome.dart';
import 'package:ecommerce_app/view/widget/HomepageWidget/cutomTitleHome.dart';
import 'package:ecommerce_app/view/widget/HomepageWidget/listCategoriesHome.dart';
import 'package:ecommerce_app/view/widget/HomepageWidget/listItemsHome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomepagecontrollerImp());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: GetBuilder<HomepagecontrollerImp>(
        builder: (controller) => HandlingdataRequest(
          statusRequest: controller.statusRequest,
          widget: ListView(
            children: [
              CustomAppBar(
                onPressedsearch: () {},
                hintText: '41'.tr,
                onPressedFavori: () {
                  Get.toNamed(AppRoote.myFavorite);
                },
              ),
              SizedBox(height: 10),
              CustomCardHome(title: "42".tr, body: "43".tr),
              SizedBox(height: 10),
              Listcategorieshome(),
              CustomTitleHome(title: "44".tr),
              ListItemsHome(),
              CustomTitleHome(title: "45".tr),
              ListItemsHome(),
            ],
          ),
        ),
      ),
    );
  }
}

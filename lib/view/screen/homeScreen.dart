import 'package:ecommerce_app/controller/homeScreenController.dart';
import 'package:ecommerce_app/controller/homepageController.dart';
import 'package:ecommerce_app/core/constant/Color.dart';
import 'package:ecommerce_app/view/widget/HomepageWidget/CustomBottomAppbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/HomepageWidget/bottomNavigationBar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Scaffold(
        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.redAccent,
          backgroundColor: Colors.white,
          onPressed: () {},
          child: Icon(Icons.shopping_basket_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomBottomNavigationBar(),
        body: controller.pageList.elementAt(controller.currenPage),
      ),
    );
  }
}

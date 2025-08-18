import 'package:ecommerce_app/controller/homeScreenController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'CustomBottomAppbar.dart';

class CustomBottomNavigationBar extends GetView<HomeScreenControllerImp> {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 60,
      color: Colors.white,
      shape: CircularNotchedRectangle(),
      notchMargin: 17,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...List.generate(
            controller.pageList.length,
            (index) => CustomBottomAppbar(
              onPressed: () {
                controller.changPage(index);
              },
              // text: controller.bottonAppbar[index]['title'],
              icon: controller.bottonAppbar[index]['icon'],
              isactive: controller.currenPage == index ? true : false,
            ),
          ),
        ],
      ),
    );
  }
}

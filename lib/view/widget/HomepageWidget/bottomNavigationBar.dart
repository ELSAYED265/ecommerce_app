import 'package:ecommerce_app/controller/homeScreenController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'CustomBottomAppbar.dart';

class CustomBottomNavigationBar extends GetView<HomeScreenControllerImp> {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shape: CircularNotchedRectangle(),
      notchMargin: 17,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...List.generate(
            controller.pageList.length,
            (index) => CustomBottomAppbar(
              onPressed: () {
                controller.changPage(index);
              },
              text: controller.titleAppbar[index],
              icon: controller.IconAppbar[index],
              isactive: controller.currenPage == index ? true : false,
            ),
          ),
        ],
      ),
    );
  }
}

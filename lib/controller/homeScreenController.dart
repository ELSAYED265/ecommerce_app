import 'package:ecommerce_app/view/screen/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  changPage(int i);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currenPage = 0;
  List<Widget> pageList = [
    Homepage(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("setting"))],
    ),
    Column(children: [Center(child: Text("profile"))]),
    Column(children: [Center(child: Text("favorite"))]),
  ];
  List titleAppbar = ['home', 'satting', 'profile', 'favorite'];
  List<IconData> IconAppbar = [
    Icons.home,
    Icons.settings,
    Icons.person,
    Icons.favorite_outlined,
  ];
  @override
  changPage(int i) {
    currenPage = i;
    update();
  }
}

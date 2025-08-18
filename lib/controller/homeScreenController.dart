import 'package:ecommerce_app/view/screen/homePage.dart';
import 'package:ecommerce_app/view/screen/setting.dart';
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
    SettingsPage(),
  ];
  List bottonAppbar = [
    {'title': 'home', 'icon': Icons.home},
    {'title': 'notifcation', 'icon': Icons.notifications_active_outlined},
    {'title': 'profile', 'icon': Icons.person},
    {'title': 'setting', 'icon': Icons.settings},
  ];
  //'home', 'satting', 'profile', 'favorite'
  @override
  changPage(int i) {
    currenPage = i;
    update();
  }
}

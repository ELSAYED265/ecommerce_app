import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:ecommerce_app/core/services/sevices.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChange(int index);
  MySevices mySevices = Get.find();
}

class OnBoardingControllerImp extends OnBoardingController {
  @override
  int currentPage = 0;
  late PageController pageController;
  next() {
    if (currentPage > onBoardingList.length - 2) {
      mySevices.sharedPreferences.setString("onboarding", "1");
      Get.offAllNamed(AppRoote.Login);
    } else {
      currentPage++;
      pageController.animateToPage(
        currentPage,
        duration: Duration(microseconds: 900),
        curve: Curves.easeIn,
      );
      update();
    }
  }

  @override
  onPageChange(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
  }
}

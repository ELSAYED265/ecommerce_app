import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChange(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  @override
  int currentPage = 0;
  late PageController pageController;
  next() {
    currentPage++;
    pageController.animateToPage(
      currentPage,
      duration: Duration(microseconds: 900),
      curve: Curves.easeIn,
    );
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

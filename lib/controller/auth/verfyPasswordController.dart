import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class Verfypassowrdcontroller extends GetxController {
  chekCode();
  goToResetPassword();
}

class VerfypassowrdcontrollerImp extends Verfypassowrdcontroller {
  late String code;
  @override
  chekCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoote.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }

  //ملهاش لزمه اوي
  @override
  void dispose() {
    super.dispose();
  }
}

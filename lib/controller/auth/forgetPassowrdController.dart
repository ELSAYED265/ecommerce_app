import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class Forgetpassowrdcontroller extends GetxController {
  checkEmail();
  goToVerfyCode();
}

class ForgetpassowrdcontrollerImp extends Forgetpassowrdcontroller {
  late TextEditingController email;
  @override
  checkEmail() {}

  @override
  goToVerfyCode() {
    Get.toNamed(AppRoote.verfiyCode);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  //ملهاش لزمه اوي
  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}

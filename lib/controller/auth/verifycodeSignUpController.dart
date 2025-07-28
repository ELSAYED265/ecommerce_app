import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerfyCodeSignUpcontroller extends GetxController {
  chekCode();
  goToSuccessSignUp();
}

class VerfyCodeSignUpcontrollerImp extends VerfyCodeSignUpcontroller {
  late String code;
  @override
  chekCode() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoote.successSignUp);
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

import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class Resetpasswordcontrollere extends GetxController {
  checkPassword();
  goToVerfySucess();
}

class ResetpassowrdcontrollerImp extends Resetpasswordcontrollere {
  late TextEditingController password;
  late TextEditingController RePassword;
  @override
  checkPassword() {}

  @override
  goToVerfySucess() {
    //  Get.toNamed(AppRoote.verfiyCode);
  }

  @override
  void onInit() {
    password = TextEditingController();
    RePassword = TextEditingController();
    super.onInit();
  }

  //ملهاش لزمه اوي
  @override
  void dispose() {
    password.dispose();
    RePassword.dispose();
    super.dispose();
  }
}

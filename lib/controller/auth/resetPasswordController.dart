import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class Resetpasswordcontroller extends GetxController {
  checkPassword();
  goToSucessResetPassword();
}

class ResetpassowrdcontrollerImp extends Resetpasswordcontroller {
  late TextEditingController password;
  late TextEditingController RePassword;
  GlobalKey<FormState> formState = GlobalKey();
  @override
  checkPassword() {}

  @override
  goToSucessResetPassword() {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      Get.offNamed(AppRoote.successResetPassword);
    } else {
      print("not vaild");
    }
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

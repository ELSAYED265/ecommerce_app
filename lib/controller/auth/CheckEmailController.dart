import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class Checkemailcontroller extends GetxController {
  checkEmail();
  goToVerfyCode();
}

class CheckemailcontrollerImp extends Checkemailcontroller {
  late TextEditingController email;
  GlobalKey<FormState> formState = GlobalKey();
  @override
  checkEmail() {}

  @override
  goToVerfyCode() {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      Get.toNamed(AppRoote.verfyCodeSignUp);
    } else {
      print("not vaild");
    }
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

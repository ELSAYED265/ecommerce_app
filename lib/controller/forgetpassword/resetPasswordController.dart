import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/class/statusRequest.dart';
import '../../core/function/handligDataController.dart';
import '../../data/datasource/remote/forgetpassword/resetPasswordData.dart';

abstract class Resetpasswordcontroller extends GetxController {
  showpassword();
  goToSucessResetPassword();
}

class ResetpassowrdcontrollerImp extends Resetpasswordcontroller {
  late TextEditingController password;
  late TextEditingController RePassword;
  bool isShowpassword = false;
  String? email;
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());
  StatusRequest? statusRequest;
  GlobalKey<FormState> formState = GlobalKey();
  @override
  showpassword() {
    isShowpassword == true ? isShowpassword = false : isShowpassword = true;
    update();
  }

  @override
  goToSucessResetPassword() async {
    var formdata = formState.currentState;
    if (password.text != RePassword.text) {
      return Get.defaultDialog(
        title: "Warning",
        middleText: "password Not Match",
      );
    }
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      Future.delayed(Duration(seconds: 3));
      update();
      var response = await resetPasswordData.Postdata(email!, password.text);
      statusRequest = HandlingData(response);
      if (statusRequest == StatusRequest.success) {
        Get.offNamed(AppRoote.successResetPassword);
      } else {
        Get.defaultDialog(title: "Warning", middleText: " try agin");
        statusRequest = StatusRequest.failer;
      }
      update();
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    RePassword = TextEditingController();
    email = Get.arguments["email"];
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

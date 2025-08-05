import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/class/statusRequest.dart';
import '../../core/function/handligDataController.dart';
import '../../data/datasource/remote/forgetpassword/verfiycodeData.dart';

abstract class Verfypassowrdcontroller extends GetxController {
  chekCode();
  goToResetPassword(String verfiycode);
}

class VerfypassowrdcontrollerImp extends Verfypassowrdcontroller {
  late String code;
  StatusRequest? statusRequest;
  VerfiycodeForgetpasswordData verfiy = VerfiycodeForgetpasswordData(
    Get.find(),
  );
  String? email;
  @override
  chekCode() {}

  @override
  goToResetPassword(String verfiycode) async {
    statusRequest = StatusRequest.loading;
    update();
    var respons = await verfiy.Postdata(email!, verfiycode);
    statusRequest = HandlingData(respons);
    if (statusRequest == StatusRequest.success) {
      if (respons["status"] == 'success') {
        //data.addAll(respons['data']);
        Get.offNamed(AppRoote.resetPassword, arguments: {"email": email});
      } else {
        Get.defaultDialog(
          title: "Warning",
          middleText: "VerifyCode is Uncorrect\n please enter the correct",
        );
        statusRequest = StatusRequest.failer;
        print("ahhaaaaaaaaaaaa");
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }

  //ملهاش لزمه اوي
  @override
  void dispose() {
    super.dispose();
  }
}

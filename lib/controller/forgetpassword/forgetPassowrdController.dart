import 'package:ecommerce_app/core/class/statusRequest.dart';
import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:ecommerce_app/data/datasource/remote/forgetpassword/checkEmailData.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/function/handligDataController.dart';

abstract class Forgetpassowrdcontroller extends GetxController {
  checkEmail();
}

class ForgetpassowrdcontrollerImp extends Forgetpassowrdcontroller {
  late TextEditingController email;
  GlobalKey<FormState> formState = GlobalKey();
  CheckEmaildata checkEmaildata = CheckEmaildata(Get.find());
  StatusRequest? statusRequest;
  @override
  @override
  checkEmail() async {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      Future.delayed(Duration(seconds: 3));
      update();
      var response = await checkEmaildata.Postdata(email.text);
      statusRequest = HandlingData(response);
      print(statusRequest);
      if (response["status"] == 'success') {
        Get.toNamed(AppRoote.verfiyCode, arguments: {"email": email.text});
      } else {
        Get.defaultDialog(title: "Warning", middleText: " Email not found");
        statusRequest = StatusRequest.failer;
      }
      update();
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

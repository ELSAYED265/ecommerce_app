import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:ecommerce_app/core/services/sevices.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/class/statusRequest.dart';
import '../../core/function/handligDataController.dart';
import '../../data/datasource/remote/Auth/siginUpData.dart';

abstract class SignUpController extends GetxController {
  SignUp();
  goToLogin();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  StatusRequest? statusRequest;
  bool isshowpassword = false;
  GlobalKey<FormState> formState = GlobalKey();
  List data = [];
  SiginUpData siginUpData = SiginUpData(Get.find());
  MySevices sevices = Get.find();
  @override
  SignUp() async {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var respons = await siginUpData.addUser(
        username.text,
        email.text,
        phone.text,
        password.text,
      );
      statusRequest = HandlingData(respons);
      if (statusRequest == StatusRequest.success) {
        if (respons["status"] == 'success') {
          //data.addAll(respons['data']);
          Get.offNamed(
            AppRoote.verfyCodeSignUp,

            arguments: {'email': email.text},
          );
        } else {
          Get.defaultDialog(
            title: "Warning",
            middleText: "email or phone aready exist",
          );
          statusRequest = StatusRequest.failer;
        }
      }
      update();
    } else {
      print("not vaild");
    }
  }

  showPassword() {
    isshowpassword == true ? isshowpassword = false : isshowpassword = true;
    update();
  }

  @override
  goToLogin() {
    Get.offNamed(AppRoote.Login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  void dispose() {
    email.dispose();
    password.dispose();
    phone.dispose();
    username.dispose();
    super.dispose();
  }
}

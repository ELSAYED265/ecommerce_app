import 'dart:developer';

import 'package:ecommerce_app/core/class/statusRequest.dart';
import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:ecommerce_app/core/function/handligDataController.dart';
import 'package:ecommerce_app/core/services/sevices.dart';
import 'package:ecommerce_app/data/datasource/remote/Auth/loginData.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  Login();
  goToSinUp();
  forgetPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> form = GlobalKey();
  late TextEditingController email;
  late TextEditingController password;
  LoginData login = LoginData(Get.find());
  bool isshowpassword = true;
  StatusRequest statusRequest = StatusRequest.intial;
  MySevices sevices = Get.find();
  @override
  Login() async {
    var formdata = form.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await login.checkUser(email.text, password.text);
      statusRequest = HandlingData(response);
      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          if (response['data']['users_approve'] == 1) {
            sevices.sharedPreferences.setString(
              "id",
              response['data']['users_id'].toString(),
            );
            sevices.sharedPreferences.setString(
              "username",
              response['data']['users_name'],
            );
            sevices.sharedPreferences.setString(
              "email",
              response['data']['users_email'],
            );
            sevices.sharedPreferences.setString(
              "phone",
              response['data']['users_phone'],
            );
            sevices.sharedPreferences.setString("step", "2");
            Get.offNamed(AppRoote.homeScreen);
          } else {
            Get.toNamed(
              AppRoote.verfyCodeSignUp,
              arguments: {"email": email.text},
            );
          }
        } else {
          Get.defaultDialog(
            title: "Warning",
            middleText: " email or password are incorresct \n please try agine",
          );
          statusRequest = StatusRequest.failer;
        }
      }
      update();
    } else {
      print(" not vaild");
    }
  }

  showPassword() {
    isshowpassword == true ? isshowpassword = false : isshowpassword = true;
    update();
  }

  @override
  goToSinUp() {
    Get.toNamed(AppRoote.SignUp);
  }

  @override
  forgetPassword() {
    Get.offNamed(AppRoote.ForgetPassword);
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      print(value);
      String? token = value;
    });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  //ملهاش لزمه اوي
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}

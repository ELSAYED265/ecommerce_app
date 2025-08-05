import 'package:ecommerce_app/core/class/statusRequest.dart';
import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:ecommerce_app/core/function/handligDataController.dart';
import 'package:ecommerce_app/data/datasource/remote/Auth/loginData.dart';
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
  StatusRequest? statusRequest;
  @override
  Login() async {
    var formdata = form.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      Future.delayed(Duration(seconds: 2));
      update();
      var response = await login.checkUser(email.text, password.text);
      statusRequest = HandlingData(response);
      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          Get.offNamed(AppRoote.homePage);
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

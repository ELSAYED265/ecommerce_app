import 'package:ecommerce_app/core/constant/Roote.dart';
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
  @override
  Login() {
    var formdata = form.currentState;
    if (formdata!.validate()) {
      print("vaild");
    } else {
      print(" not vaild");
    }
  }

  @override
  goToSinUp() {
    Get.toNamed(AppRoote.SignUp);
    throw UnimplementedError();
  }

  @override
  forgetPassword() {
    Get.offNamed(AppRoote.ForgetPassword);
    throw UnimplementedError();
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

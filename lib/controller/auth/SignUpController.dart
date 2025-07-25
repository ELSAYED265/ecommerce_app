import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  SignUp();
  goToLogin();
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
}

class SignUpControllerImp extends SignUpController {
  @override
  SignUp() {
    // TODO: implement SignUp
    throw UnimplementedError();
  }

  @override
  goToLogin() {
    Get.offNamed(AppRoote.Login);
    throw UnimplementedError();
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

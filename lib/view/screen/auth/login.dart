import 'package:ecommerce_app/controller/auth/LoginController.dart';
import 'package:ecommerce_app/core/constant/Color.dart';
import 'package:ecommerce_app/core/function/validInput.dart';
import 'package:ecommerce_app/view/widget/AuthWidget/CustomTextBodyAuth.dart';
import 'package:ecommerce_app/view/widget/AuthWidget/customBottomAuth.dart';
import 'package:ecommerce_app/view/widget/generalWidget/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/function/alertExitApp.dart';
import '../../widget/AuthWidget/CustomTextTitleAuth.dart';
import '../../widget/AuthWidget/TextSingUpOrLogin.dart';
import '../../widget/AuthWidget/logoAuth.dart';
import '../../widget/generalWidget/customTextFormFeild.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,

        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 4),
          child: Text(
            "9".tr,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(fontSize: 21),
          ),
        ),
      ),
      body: WillPopScope(
        onWillPop: AlertExitApp,
        child: Form(
          key: controller.form,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: [
                SizedBox(height: 20),
                Logoauth(),
                CustomTextTitleAuth(title: "10".tr),
                SizedBox(height: 10),
                CustomtextbodyAuth(body: "11".tr),
                SizedBox(height: 55),
                CustomTextField(
                  controller: controller.email,
                  hintText: '12'.tr,
                  labelText: "18".tr,
                  icon: Icons.email_outlined,
                  validator: (val) {
                    return ValidInput(val!, 100, 10, "email");
                  },
                ),
                GetBuilder<LoginControllerImp>(
                  builder: (controller) => CustomTextField(
                    controller: controller.password,
                    hintText: "19".tr,
                    labelText: "13".tr,
                    icon: Icons.lock_clock_outlined,
                    onPressedIcon: () {
                      controller.showPassword();
                    },
                    validator: (val) {
                      return ValidInput(val!, 30, 5, "password");
                    },
                    obscureText: controller.isshowpassword, //hide password
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: InkWell(
                    child: Text(
                      "14".tr,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    onTap: () {
                      controller.forgetPassword();
                    },
                  ),
                ),
                CustombottomAuth(
                  text: "9".tr,
                  style: TextStyle(color: Colors.white),
                  color: AppColor.OrangeColor,
                  onPressed: () {
                    controller.Login();
                  },
                ),
                Textsinguporlogin(
                  text1: '16'.tr,
                  text2: '17'.tr,
                  onTap: () {
                    controller.goToSinUp();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Don`t have any accont ?
//SignUp

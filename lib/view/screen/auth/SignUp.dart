import 'package:ecommerce_app/core/function/validInput.dart';
import 'package:flutter/material.dart';

import '../../../controller/auth/SignUpController.dart';
import '../../../core/constant/Color.dart';
import '../../widget/AuthWidget/CustomTextBodyAuth.dart';
import '../../widget/AuthWidget/CustomTextTitleAuth.dart';
import '../../widget/AuthWidget/TextSingUpOrLogin.dart';
import '../../widget/AuthWidget/customBottomAuth.dart';
import '../../widget/AuthWidget/logoAuth.dart';
import '../../widget/generalWidget/customTextFormFeild.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,

        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 4),
          child: Text(
            "17".tr,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(fontSize: 21),
          ),
        ),
      ),
      body: Form(
        key: controller.formState,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              SizedBox(height: 20),
              CustomTextTitleAuth(title: "10".tr),
              SizedBox(height: 10),
              CustomtextbodyAuth(body: "24".tr),
              SizedBox(height: 55),
              CustomTextField(
                controller: controller.username,
                hintText: '23'.tr,
                labelText: "20".tr,
                icon: Icons.person_2_outlined,
                validator: (val) {
                  return ValidInput(val!, 50, 12, "username");
                },
              ),
              CustomTextField(
                controller: controller.email,
                hintText: '12'.tr,
                labelText: "18".tr,
                icon: Icons.email_outlined,
                validator: (val) {
                  return ValidInput(val!, 100, 10, "email");
                },
              ),
              CustomTextField(
                controller: controller.phone,
                hintText: '22'.tr,
                labelText: "21".tr,
                icon: Icons.phone_android_outlined,
                validator: (val) {
                  return ValidInput(val!, 15, 11, "phone");
                },
              ),
              CustomTextField(
                controller: controller.password,
                hintText: "19".tr,
                labelText: "13".tr,
                icon: Icons.lock_clock_outlined,
                validator: (val) {
                  return ValidInput(val!, 30, 5, "password");
                },
              ),

              CustombottomAuth(
                text: "17".tr,
                style: TextStyle(color: Colors.white),
                color: AppColor.OrangeColor,
                onPressed: () {
                  controller.SignUp();
                },
              ),
              Textsinguporlogin(
                text1: '25'.tr,
                text2: '9'.tr,
                onTap: () {
                  controller.goToLogin();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

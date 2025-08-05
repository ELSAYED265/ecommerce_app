import 'package:ecommerce_app/controller/auth/LoginController.dart';
import 'package:ecommerce_app/controller/forgetpassword/forgetPassowrdController.dart';
import 'package:ecommerce_app/core/class/handlingDataView.dart';
import 'package:ecommerce_app/core/class/statusRequest.dart';
import 'package:ecommerce_app/core/constant/Color.dart';
import 'package:ecommerce_app/core/constant/imageAsset.dart';
import 'package:ecommerce_app/view/widget/AuthWidget/CustomTextBodyAuth.dart';
import 'package:ecommerce_app/view/widget/AuthWidget/customBottomAuth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../../controller/forgetpassword/resetPasswordController.dart';
import '../../../../core/function/validInput.dart';
import '../../../widget/AuthWidget/CustomTextTitleAuth.dart';
import '../../../widget/generalWidget/customTextFormFeild.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetpassowrdcontrollerImp());
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,

        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 4),
          child: Text(
            "Reset_Password",
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(fontSize: 21),
          ),
        ),
      ),
      body: GetBuilder<ResetpassowrdcontrollerImp>(
        builder: (controller) => HandlingdataRequest(
          statusRequest: controller.statusRequest ?? StatusRequest.intial,
          widget: Form(
            key: controller.formState,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: ListView(
                children: [
                  SizedBox(height: 20),
                  CustomTextTitleAuth(title: "Chec Password"),
                  SizedBox(height: 10),
                  CustomtextbodyAuth(body: "Please Enter New Password "),
                  SizedBox(height: 55),
                  CustomTextField(
                    controller: controller.password,
                    hintText: 'Enter you password',
                    labelText: "Password",
                    icon: Icons.lock_clock_outlined,
                    onPressedIcon: () {
                      controller.showpassword();
                    },
                    validator: (val) {
                      return ValidInput(val!, 30, 5, "password");
                    },
                    obscureText: controller.isShowpassword, //hide password
                  ),
                  CustomTextField(
                    controller: controller.RePassword,
                    hintText: 'Repite you password',
                    labelText: "Password",
                    icon: Icons.lock_clock_outlined,
                    onPressedIcon: () {
                      controller.showpassword();
                    },
                    validator: (val) {
                      return ValidInput(val!, 30, 5, "password");
                    },
                    obscureText: controller.isShowpassword, //hide password
                  ),

                  CustombottomAuth(
                    text: "save",
                    style: TextStyle(color: Colors.white),
                    color: AppColor.OrangeColor,
                    onPressed: () {
                      controller.goToSucessResetPassword();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//Don`t have any accont ?
//SignUp

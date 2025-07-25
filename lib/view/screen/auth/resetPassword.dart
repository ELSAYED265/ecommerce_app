import 'package:ecommerce_app/controller/auth/LoginController.dart';
import 'package:ecommerce_app/controller/auth/forgetPassowrdController.dart';
import 'package:ecommerce_app/core/constant/Color.dart';
import 'package:ecommerce_app/view/widget/AuthWidget/CustomTextBodyAuth.dart';
import 'package:ecommerce_app/view/widget/AuthWidget/customBottomAuth.dart';
import 'package:flutter/material.dart';
import '../../widget/AuthWidget/CustomTextTitleAuth.dart';
import '../../widget/generalWidget/customTextFormFeild.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetpassowrdcontrollerImp controller = Get.put(
      ForgetpassowrdcontrollerImp(),
    );
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            SizedBox(height: 20),
            CustomTextTitleAuth(title: "Chec Password"),
            SizedBox(height: 10),
            CustomtextbodyAuth(body: "Please Enter New Password "),
            SizedBox(height: 55),
            CustomTextField(
              controller: controller.email,
              hintText: 'Enter you password',
              labelText: "Password",
              icon: Icons.lock_clock_outlined,
            ),
            CustomTextField(
              controller: controller.email,
              hintText: 'Repite you password',
              labelText: "Password",
              icon: Icons.lock_clock_outlined,
            ),

            CustombottomAuth(
              text: "save",
              style: TextStyle(color: Colors.white),
              color: AppColor.OrangeColor,
              onPressed: () {
                controller.goToVerfyCode();
              },
            ),
          ],
        ),
      ),
    );
  }
}

//Don`t have any accont ?
//SignUp

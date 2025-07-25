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
            "SinUp",
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
            CustomTextTitleAuth(title: "Welcom Back"),
            SizedBox(height: 10),
            CustomtextbodyAuth(
              body:
                  "SignUp With email and password \n or continu with socail media",
            ),
            SizedBox(height: 55),
            CustomTextField(
              controller: controller.username,
              hintText: 'Enter your username',
              labelText: "Username",
              icon: Icons.person_2_outlined,
            ),
            CustomTextField(
              controller: controller.email,
              hintText: 'Enter your email',
              labelText: "Email",
              icon: Icons.email_outlined,
            ),
            CustomTextField(
              controller: controller.phone,
              hintText: 'Enter your Phone',
              labelText: "Phone",
              icon: Icons.phone_android_outlined,
            ),
            CustomTextField(
              controller: controller.password,
              hintText: "Passowrd",
              labelText: "Enter your password",
              icon: Icons.lock_clock_outlined,
            ),

            CustombottomAuth(
              text: "Login",
              style: TextStyle(color: Colors.white),
              color: AppColor.OrangeColor,
              onPressed: () {},
            ),
            Textsinguporlogin(
              text1: ' have any accont ?',
              text2: 'Login',
              onTap: () {
                controller.goToLogin();
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce_app/controller/auth/LoginController.dart';
import 'package:ecommerce_app/controller/auth/forgetPassowrdController.dart';
import 'package:ecommerce_app/core/constant/Color.dart';
import 'package:ecommerce_app/view/widget/AuthWidget/CustomTextBodyAuth.dart';
import 'package:ecommerce_app/view/widget/AuthWidget/customBottomAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/CheckEmailController.dart';
import '../../widget/AuthWidget/CustomTextTitleAuth.dart';
import '../../widget/generalWidget/customTextFormFeild.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckemailcontrollerImp controller = Get.put(CheckemailcontrollerImp());
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,

        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 4),
          child: Text(
            "CheckEmail",
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
              CustomTextTitleAuth(title: "Success SingUp"),
              SizedBox(height: 10),
              CustomtextbodyAuth(
                body:
                    "Please enter your Email Adress to recive A\n verification code  ",
              ),
              SizedBox(height: 55),
              CustomTextField(
                controller: controller.email,
                hintText: 'Enter you email',
                labelText: "Email",
                icon: Icons.email_outlined,
                validator: (val) {},
              ),

              CustombottomAuth(
                text: "Chek",
                style: TextStyle(color: Colors.white),
                color: AppColor.OrangeColor,
                onPressed: () {
                  controller.goToVerfyCode();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Don`t have any accont ?
//SignUp

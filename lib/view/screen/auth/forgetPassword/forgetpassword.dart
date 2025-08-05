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
import '../../../../core/function/validInput.dart';
import '../../../widget/AuthWidget/CustomTextTitleAuth.dart';
import '../../../widget/generalWidget/customTextFormFeild.dart';
import 'package:get/get.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetpassowrdcontrollerImp());
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,

        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 4),
          child: Text(
            "ForgetPassword",
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.copyWith(fontSize: 21),
          ),
        ),
      ),
      body: GetBuilder<ForgetpassowrdcontrollerImp>(
        builder: (controller) => HandlingdataRequest(
          statusRequest: controller.statusRequest ?? StatusRequest.intial,
          widget: Form(
            key: controller.formState,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: ListView(
                children: [
                  SizedBox(height: 20),
                  CustomTextTitleAuth(title: "Chek Email"),
                  SizedBox(height: 10),
                  CustomtextbodyAuth(
                    body: "You can resit account \n By enter your email  ",
                  ),
                  SizedBox(height: 55),
                  CustomTextField(
                    controller: controller.email,
                    hintText: 'Enter you email',
                    labelText: "Email",
                    icon: Icons.email_outlined,
                    validator: (val) {
                      return ValidInput(val!, 100, 10, "email");
                    },
                  ),

                  CustombottomAuth(
                    text: "Chek",
                    style: TextStyle(color: Colors.white),
                    color: AppColor.OrangeColor,
                    onPressed: () {
                      controller.checkEmail();
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

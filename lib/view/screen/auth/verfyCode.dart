import 'package:ecommerce_app/controller/auth/LoginController.dart';
import 'package:ecommerce_app/controller/auth/verfyPasswordController.dart';
import 'package:ecommerce_app/core/constant/Color.dart';
import 'package:ecommerce_app/view/widget/AuthWidget/CustomTextBodyAuth.dart';
import 'package:ecommerce_app/view/widget/AuthWidget/customBottomAuth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import '../../../controller/auth/forgetPassowrdController.dart';
import '../../widget/AuthWidget/CustomTextTitleAuth.dart';
import '../../widget/generalWidget/customTextFormFeild.dart';
import 'package:get/get.dart';

class verfyCode extends StatelessWidget {
  const verfyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerfypassowrdcontrollerImp controller = Get.put(
      VerfypassowrdcontrollerImp(),
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
            "Verfication Code",
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
            CustomTextTitleAuth(title: "Chek code"),
            SizedBox(height: 10),
            CustomtextbodyAuth(body: "Please Enter the Digit Code Sened you  "),
            SizedBox(height: 55),

            OtpTextField(
              borderRadius: BorderRadius.circular(12),
              fieldWidth: 50,
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.goToResetPassword();
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  },
                );
                controller.goToResetPassword();
              }, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}

//Don`t have any accont ?
//SignUp

import 'package:ecommerce_app/controller/auth/LoginController.dart';
import 'package:ecommerce_app/controller/forgetpassword/verfyPasswordController.dart';
import 'package:ecommerce_app/core/class/handlingDataView.dart';
import 'package:ecommerce_app/core/constant/Color.dart';
import 'package:ecommerce_app/view/widget/AuthWidget/CustomTextBodyAuth.dart';
import 'package:ecommerce_app/view/widget/AuthWidget/customBottomAuth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../controller/forgetpassword/forgetPassowrdController.dart';
import 'package:get/get.dart';

import '../../../controller/auth/verifycodeSignUpController.dart';
import '../../../core/class/statusRequest.dart';
import '../../widget/AuthWidget/CustomTextTitleAuth.dart';

class VerfyCodeSignUp extends StatelessWidget {
  const VerfyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerfyCodeSignUpcontrollerImp hello = Get.put(
      VerfyCodeSignUpcontrollerImp(),
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
        child: GetBuilder<VerfyCodeSignUpcontrollerImp>(
          builder: (controller) => HandlingdataRequest(
            statusRequest: controller.statusRequest ?? StatusRequest.intial,
            widget: ListView(
              children: [
                SizedBox(height: 20),
                CustomTextTitleAuth(title: "Chek code"),
                SizedBox(height: 10),
                CustomtextbodyAuth(
                  body: "Please Enter the Digit Code Sened you  ",
                ),
                SizedBox(height: 55),
                PinCodeTextField(
                  appContext: context,
                  length: 5,
                  onChanged: (value) {},
                  onCompleted: (value) {
                    print("✅ Submitted: $value");
                    controller.goToSuccessSignUp(value);
                  },
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(12),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                  ),
                ),
                // OtpTextField(
                //   borderRadius: BorderRadius.circular(12),
                //   fieldWidth: 50,
                //   numberOfFields: 5,
                //   borderColor: Color(0xFF512DA8),
                //   //set to true to show as box or false to show as dash
                //   showFieldAsBox: true,
                //   //runs when a code is typed in
                //   onCodeChanged: (String code) {
                //     //handle validation or checks here
                //   },
                //   //runs when every textfield is filled
                //   onSubmit: (String verificationCode) {
                //     print("✅ Code submitted: $verificationCode");
                //     controller.goToSuccessSignUp(verificationCode);
                //     // showDialog(
                //     //   context: context,
                //     //   builder: (context) {
                //     //     return AlertDialog(
                //     //       title: Text("Verification Code"),
                //     //       content: Text('Code entered is $verificationCode'),
                //     //     );
                //     //   },
                //     // );
                //   }, // end onSubmit
                // ),
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

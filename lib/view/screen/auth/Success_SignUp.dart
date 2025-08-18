import 'package:flutter/material.dart';
import '../../../controller/auth/SuccessSignUpController.dart';
import '../../../core/constant/Color.dart';
import '../../widget/AuthWidget/customBottomAuth.dart';
import 'package:get/get.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller = Get.put(
      SuccessSignUpControllerImp(),
      permanent: true,
    );
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Account Created",
          style: TextStyle(
            color: AppColor.OrangeColor,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Icon(
              Icons.check_circle_rounded,
              size: 150,
              color: AppColor.OrangeColor,
            ),
            const SizedBox(height: 30),
            Text(
              "Your account has been created successfully!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Please login to continue using the app.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              child: CustombottomAuth(
                text: "Go to Login",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                color: AppColor.OrangeColor,
                onPressed: () {
                  controller.goToLogin();
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

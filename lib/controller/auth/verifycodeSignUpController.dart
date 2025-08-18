import 'package:ecommerce_app/core/class/statusRequest.dart';
import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:get/get.dart';
import 'dart:async';
import '../../core/function/handligDataController.dart';
import '../../data/datasource/remote/Auth/verfiycodeSignUpData.dart';

abstract class VerfyCodeSignUpcontroller extends GetxController {
  chekCode();
  goToSuccessSignUp(String verfiyCode);
}

class VerfyCodeSignUpcontrollerImp extends VerfyCodeSignUpcontroller {
  String? email;
  StatusRequest? statusRequest;
  VerfiyCodeSignupData verfiyCodeSignupData = VerfiyCodeSignupData(Get.find());
  int seconds = 60; // وقت العداد بالثواني
  Timer? timer;
  bool get canResend => seconds == 0;
  @override
  chekCode() {}

  @override
  goToSuccessSignUp(String verfiyCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var respons = await verfiyCodeSignupData.verfyCode(verfiyCode, email!);
    statusRequest = HandlingData(respons);
    if (statusRequest == StatusRequest.success) {
      if (respons["status"] == 'success') {
        //data.addAll(respons['data']);
        Get.offNamed(AppRoote.successSignUp);
      } else {
        Get.defaultDialog(
          title: "Warning",
          middleText: "VerifyCode is Uncorrect\n please enter the correct",
        );
        statusRequest = StatusRequest.failer;
        print("ahhaaaaaaaaaaaa");
      }
    }
    update();
  }

  startTimer() {
    seconds = 60;
    update();

    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (seconds > 0) {
        seconds--;
        update();
      } else {
        t.cancel();
        update();
      }
    });
  }

  resendCode() async {
    verfiyCodeSignupData.resendVerfiycodeData(email!);
    print("🔄 إعادة إرسال الكود ...");
    startTimer();
  }

  @override
  @override
  void onInit() {
    startTimer();
    email = Get.arguments['email'];
    super.onInit();
  }

  //ملهاش لزمه اوي
  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}

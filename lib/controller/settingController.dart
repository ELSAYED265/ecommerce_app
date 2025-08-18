import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:ecommerce_app/core/services/sevices.dart';
import 'package:get/get.dart';

class Settingcontroller extends GetxController {
  MySevices mySevices = Get.find();
  logout() {
    mySevices.sharedPreferences.clear();
    Get.offAllNamed(AppRoote.Login);
  }
}

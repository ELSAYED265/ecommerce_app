import 'dart:ui';

import 'package:ecommerce_app/core/services/sevices.dart';
import 'package:ecommerce_app/main.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? language;
  MySevices mySevices = Get.find();

  changLan(String langcode) {
    Locale locale = Locale(langcode);
    mySevices.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedprefLang = mySevices.sharedPreferences.getString("lang");
    if (sharedprefLang == "ar") {
      language = Locale("ar");
    } else if (sharedprefLang == "en") {
      language = Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }

    super.onInit();
  }
}

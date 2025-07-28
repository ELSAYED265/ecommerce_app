import 'dart:ui';

import 'package:ecommerce_app/core/constant/appTheme.dart';
import 'package:ecommerce_app/core/services/sevices.dart';
import 'package:ecommerce_app/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? language;
  MySevices mySevices = Get.find();
  ThemeData apptheme = themeEnglish;

  changLan(String langcode) {
    Locale locale = Locale(langcode);
    mySevices.sharedPreferences.setString("lang", langcode);
    apptheme = langcode == "ar" ? themeArbic : themeEnglish;
    Get.changeTheme(apptheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedprefLang = mySevices.sharedPreferences.getString("lang");
    if (sharedprefLang == "ar") {
      language = Locale("ar");
      apptheme = themeArbic;
    } else if (sharedprefLang == "en") {
      language = Locale("en");
      apptheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }

    super.onInit();
  }
}

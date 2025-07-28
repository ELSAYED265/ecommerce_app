import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/sevices.dart';

class MyMiddleWare extends GetMiddleware {
  int? get priority => 1;
  MySevices mySevices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (mySevices.sharedPreferences.getString("onboarding") == "1") {
      return RouteSettings(name: AppRoote.Login);
    }
  }
}

import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/language.dart';
import 'package:ecommerce_app/view/screen/onBoarding.dart';
import 'package:flutter/material.dart';

import 'core/constant/Roote.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoote.OnBoarding: (context) => Onboarding(),
  AppRoote.Login: (context) => Login(),
  AppRoote.Language: (context) => Language(),
};

import 'package:ecommerce_app/core/middleware/myMiddleWare.dart';
import 'package:ecommerce_app/test.dart';
import 'package:ecommerce_app/view/screen/auth/SignUp.dart';
import 'package:ecommerce_app/view/screen/auth/Success_SignUp.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/SucessResetPassword.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/forgetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/resetPassword.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/verfyCode.dart';
import 'package:ecommerce_app/view/screen/auth/verfyCodeSignUp.dart';
import 'package:ecommerce_app/view/screen/homePage.dart';
import 'package:ecommerce_app/view/screen/language.dart';
import 'package:ecommerce_app/view/screen/onBoarding.dart';
import 'package:ecommerce_app/view/testView.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:path/path.dart';

import 'core/constant/Roote.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: "/", page: () => Language(), middlewares: [MyMiddleWare()]),
  //GetPage(name: "/", page: () => Testview()),
  GetPage(name: AppRoote.OnBoarding, page: () => Onboarding()),
  GetPage(name: AppRoote.Login, page: () => Login()),
  GetPage(name: AppRoote.SignUp, page: () => SignUp()),
  GetPage(name: AppRoote.ForgetPassword, page: () => Forgetpassword()),
  GetPage(name: AppRoote.verfiyCode, page: () => verfyCode()),
  GetPage(name: AppRoote.resetPassword, page: () => ResetPassword()),
  GetPage(
    name: AppRoote.successResetPassword,
    page: () => SuccessResetPassword(),
  ),
  GetPage(name: AppRoote.successSignUp, page: () => SuccessSignup()),
  GetPage(name: AppRoote.verfyCodeSignUp, page: () => VerfyCodeSignUp()),
  GetPage(name: AppRoote.Language, page: () => Language()),
  GetPage(name: AppRoote.homePage, page: () => Homepage()),
];

// Map<String, Widget Function(BuildContext)> routes = {
//   AppRoote.OnBoarding: (context) => Onboarding(),
//   AppRoote.Login: (context) => Login(),
//   AppRoote.SignUp: (context) => SignUp(),
//   AppRoote.ForgetPassword: (context) => Forgetpassword(),
//   AppRoote.verfiyCode: (context) => verfyCode(),
//   AppRoote.resetPassword: (context) => ResetPassword(),
//   AppRoote.successResetPassword: (context) => SuccessResetPassword(),
//   AppRoote.successSignUp: (context) => SuccessSignup(),
//   AppRoote.verfyCodeSignUp: (context) => VerfyCodeSignUp(),
//   AppRoote.Language: (context) => Language(),
// };

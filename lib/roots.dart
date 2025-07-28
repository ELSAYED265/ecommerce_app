import 'package:ecommerce_app/view/screen/auth/SignUp.dart';
import 'package:ecommerce_app/view/screen/auth/Success_SignUp.dart';
import 'package:ecommerce_app/view/screen/auth/checkEmail.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/SucessResetPassword.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/forgetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/resetPassword.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/verfyCode.dart';
import 'package:ecommerce_app/view/screen/auth/verfyCodeSignUp.dart';
import 'package:ecommerce_app/view/screen/language.dart';
import 'package:ecommerce_app/view/screen/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

import 'core/constant/Roote.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoote.OnBoarding: (context) => Onboarding(),
  AppRoote.Login: (context) => Login(),
  AppRoote.SignUp: (context) => SignUp(),
  AppRoote.ForgetPassword: (context) => Forgetpassword(),
  AppRoote.verfiyCode: (context) => verfyCode(),
  AppRoote.resetPassword: (context) => ResetPassword(),
  AppRoote.successResetPassword: (context) => SuccessResetPassword(),
  AppRoote.successSignUp: (context) => SuccessSignup(),
  AppRoote.checkEmail: (context) => CheckEmail(),
  AppRoote.verfyCodeSignUp: (context) => VerfyCodeSignUp(),
  AppRoote.Language: (context) => Language(),
};

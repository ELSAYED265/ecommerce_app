import 'package:ecommerce_app/view/screen/auth/SignUp.dart';
import 'package:ecommerce_app/view/screen/auth/Success_SignUp.dart';
import 'package:ecommerce_app/view/screen/auth/SucessResetPassword.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/auth/resetPassword.dart';
import 'package:ecommerce_app/view/screen/auth/verfyCode.dart';
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
  AppRoote.Language: (context) => Language(),
};

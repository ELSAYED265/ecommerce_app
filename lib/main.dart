import 'package:ecommerce_app/controller/on_boarding_cubit.dart';
import 'package:ecommerce_app/core/localization/transualtion.dart';
import 'package:ecommerce_app/core/services/sevices.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'core/constant/Color.dart';
import 'core/constant/Roote.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialService();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: GetMaterialApp(
        translations: MyTranslation(),
        home: Onboarding(),
        routes: {AppRoote.Login: (context) => Login()},
        theme: ThemeData(
          textTheme: TextTheme(
            bodyLarge: TextStyle(
              height: 1.5,
              color: AppColor.grey,
              fontWeight: FontWeight.bold,
            ),
            titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

import 'package:ecommerce_app/controller/on_boarding_cubit.dart';
import 'package:ecommerce_app/core/localization/changeLocal.dart';
import 'package:ecommerce_app/core/localization/transualtion.dart';
import 'package:ecommerce_app/core/services/sevices.dart';
import 'package:ecommerce_app/roots.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/language.dart';
import 'package:ecommerce_app/view/screen/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    LocalController controller = Get.put(LocalController());
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: GetMaterialApp(
        locale: controller.language,
        translations: MyTranslation(),
        // home: Onboarding(),
        initialRoute: AppRoote.Language,
        routes: routes,

        theme: controller.apptheme,
      ),
    );
  }
}

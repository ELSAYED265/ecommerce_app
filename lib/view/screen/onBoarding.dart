import 'package:ecommerce_app/controller/onBoardingController.dart';
import 'package:ecommerce_app/controller/on_boarding_cubit.dart';
import 'package:ecommerce_app/core/constant/Color.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:ecommerce_app/view/widget/onBoarding/CustomBottom.dart';
import 'package:ecommerce_app/view/widget/onBoarding/customDotController.dart';
import 'package:ecommerce_app/view/widget/onBoarding/customSlider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../data/datasource/static/static.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    // PageController pageController = PageController();
    // Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(flex: 3, child: Customslider()),
              Expanded(
                flex: 1,
                child: Column(
                  children: [CustomDotcontroller(), CustombottomOnBoarding()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

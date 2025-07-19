import 'package:ecommerce_app/core/constant/Color.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:ecommerce_app/view/widget/onBoarding/CustomBottom.dart';
import 'package:ecommerce_app/view/widget/onBoarding/customDotController.dart';
import 'package:ecommerce_app/view/widget/onBoarding/customSlider.dart';
import 'package:flutter/material.dart';

import '../../data/datasource/static/static.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

import 'package:flutter/material.dart';

import '../../../core/constant/Color.dart';

class CustombottomOnBoarding extends StatelessWidget {
  const CustombottomOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.only(top: 70),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: 100),
        onPressed: () {},
        child: Text("continue"),
        color: AppColor.kPrimaryColor,
        textColor: Colors.white,
      ),
    );
  }
}

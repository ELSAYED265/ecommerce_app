import 'package:flutter/material.dart';

import '../../../core/constant/Color.dart';
import '../../../data/datasource/static/static.dart';

class CustomDotcontroller extends StatelessWidget {
  const CustomDotcontroller({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          onBoardingList.length,
          (index) => AnimatedContainer(
            margin: EdgeInsets.only(right: 5),
            duration: Duration(microseconds: 900),
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: AppColor.kPrimaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}

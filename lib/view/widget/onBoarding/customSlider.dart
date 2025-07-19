import 'package:flutter/material.dart';

import '../../../core/constant/Color.dart';
import '../../../data/datasource/static/static.dart';

class Customslider extends StatelessWidget {
  const Customslider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Text(
            onBoardingList[i].title!,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 80),
          Image.asset(
            onBoardingList[i].image!,
            height: 200,
            width: 200,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 60),

          Container(
            width: double.infinity,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.5,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

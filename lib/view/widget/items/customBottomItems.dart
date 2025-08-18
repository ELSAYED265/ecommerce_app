import 'package:ecommerce_app/controller/onBoardingController.dart';
import 'package:ecommerce_app/controller/on_boarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../core/constant/Color.dart';
import '../../../data/datasource/static/static.dart';

class CustombottomItem extends StatelessWidget {
  const CustombottomItem({
    super.key,
    required this.text,
    required this.color,
    this.onPressed,
    this.style,
  });
  final String text;
  final Color color;
  final TextStyle? style;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      height: 45,
      width: 150,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(11)),
      //margin: EdgeInsets.symmetric(vertical: 50),
      child: MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
        child: Text(text, style: style),
        color: color,
        textColor: Colors.white,
      ),
    );
  }
}

//GetView<OnBoardingControllerImp>

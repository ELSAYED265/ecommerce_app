import 'package:ecommerce_app/controller/onBoardingController.dart';
import 'package:ecommerce_app/controller/on_boarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../core/constant/Color.dart';
import '../../../data/datasource/static/static.dart';

class Custombottom extends StatelessWidget {
  const Custombottom({
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
      height: 40,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(text, style: style),
        color: color,
        textColor: Colors.white,
      ),
    );
  }
}

//GetView<OnBoardingControllerImp>

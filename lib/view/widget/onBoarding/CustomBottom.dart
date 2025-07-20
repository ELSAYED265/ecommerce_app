import 'package:ecommerce_app/controller/onBoardingController.dart';
import 'package:ecommerce_app/controller/on_boarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../core/constant/Color.dart';
import '../../../data/datasource/static/static.dart';

class CustombottomOnBoarding extends StatelessWidget {
  const CustombottomOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        return Container(
          height: 40,
          margin: EdgeInsets.only(top: 70),
          child: MaterialButton(
            padding: EdgeInsets.symmetric(horizontal: 100),
            onPressed: () {
              // controller.next();
              BlocProvider.of<OnBoardingCubit>(context).next(context);
            },
            child: Text("continue"),
            color: AppColor.kPrimaryColor,
            textColor: Colors.white,
          ),
        );
      },
    );
  }
}

//GetView<OnBoardingControllerImp>

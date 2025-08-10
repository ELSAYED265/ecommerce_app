// import 'package:ecommerce_app/controller/onBoardingController.dart';
// import 'package:ecommerce_app/controller/on_boarding_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get/get.dart';
//
// import '../../../core/constant/Color.dart';
// import '../../../data/datasource/static/static.dart';
//
// class Customslider extends StatelessWidget {
//   const Customslider();
//
//   //  final PageController controller;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<OnBoardingCubit, OnBoardingState>(
//       builder: (context, state) {
//         return PageView.builder(
//           controller: BlocProvider.of<OnBoardingCubit>(context).pageController,
//           onPageChanged: (val) {
//             BlocProvider.of<OnBoardingCubit>(context).changes(val);
//           },
//           itemCount: onBoardingList.length,
//           itemBuilder: (context, i) => Column(
//             children: [
//               Text(
//                 onBoardingList[i].title!,
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//               ),
//               SizedBox(height: 80),
//               Image.asset(
//                 onBoardingList[i].image!,
//                 height: 200,
//                 width: 200,
//                 //height: Get.width / 3.5,
//                 fit: BoxFit.fill,
//               ),
//               SizedBox(height: 60),
//
//               Container(
//                 width: double.infinity,
//                 child: Text(
//                   onBoardingList[i].body!,
//                   textAlign: TextAlign.center,
//                   style: TextTheme.of(context).bodyLarge,
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

// PageController getController() => controller;
// }

import 'package:ecommerce_app/controller/onBoardingController.dart';
import 'package:ecommerce_app/controller/on_boarding_cubit.dart';
import 'package:ecommerce_app/data/model/onboardingModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../core/constant/Color.dart';
import '../../../data/datasource/static/static.dart';

class Customslider extends GetView<OnBoardingControllerImp> {
  const Customslider();

  //  final PageController controller;

  @override
  Widget build(BuildContext context) {
    //OnBoardingControllerImp controller = Get.put(OnBoardingControllerImp());
    return PageView.builder(
      controller: controller!.pageController,
      onPageChanged: (val) {
        controller.onPageChange(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Text(
            onBoardingList[i].title!,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          ),
          SizedBox(height: 80),
          Image.asset(
            onBoardingList[i].image!,
            height: 200,
            width: 200,
            //height: Get.width / 3.5,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 60),

          Container(
            width: double.infinity,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: TextTheme.of(context).bodyLarge!.copyWith(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }

  // PageController getController() => controller;
}

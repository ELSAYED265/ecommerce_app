// import 'package:ecommerce_app/controller/on_boarding_cubit.dart';
// import 'package:ecommerce_app/data/model/onboardingModel.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get/get.dart';
//
// import '../../../controller/onBoardingController.dart';
// import '../../../core/constant/Color.dart';
// import '../../../data/datasource/static/static.dart';
//
// class CustomDotcontroller extends StatelessWidget {
//   const CustomDotcontroller({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<OnBoardingCubit, OnBoardingState>(
//       builder: (context, state) {
//         final cubit = context.read<OnBoardingCubit>();
//         return Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ...List.generate(
//               onBoardingList.length,
//               (index) => AnimatedContainer(
//                 margin: EdgeInsets.only(right: 5),
//                 duration: Duration(microseconds: 900),
//                 width: cubit.currentindex == index ? 20 : 6,
//                 height: 6,
//                 decoration: BoxDecoration(
//                   color: AppColor.kPrimaryColor,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

import 'package:ecommerce_app/controller/on_boarding_cubit.dart';
import 'package:ecommerce_app/data/model/onboardingModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../controller/onBoardingController.dart';
import '../../../core/constant/Color.dart';
import '../../../data/datasource/static/static.dart';

class CustomDotcontroller extends GetView<OnBoardingControllerImp> {
  const CustomDotcontroller({super.key});

  @override
  Widget build(BuildContext context) {
    // OnBoardingControllerImp controller = Get.find();
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBoardingList.length,
            (index) => AnimatedContainer(
              margin: EdgeInsets.only(right: 5),
              duration: Duration(microseconds: 900),
              width: controller.currentPage == index ? 20 : 6,
              height: 6,
              decoration: BoxDecoration(
                color: AppColor.kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

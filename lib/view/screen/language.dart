import 'package:ecommerce_app/core/constant/Color.dart';
import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:ecommerce_app/core/localization/changeLocal.dart';
import 'package:ecommerce_app/view/widget/generalWidget/customButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/language/customLangueBottom.dart';

class Language extends GetView<LocalController> {
  const Language({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("choose lang".tr, style: Theme.of(context).textTheme.titleLarge),
          SizedBox(height: 20),
          Customlanguebottom(
            text: 'arabic',
            onPressed: () {
              controller.changLan("ar");
              Get.toNamed(AppRoote.OnBoarding);
            },
          ),
          Customlanguebottom(
            text: "english",
            onPressed: () {
              controller.changLan("en");
              Get.toNamed(AppRoote.OnBoarding);
            },
          ),
        ],
      ),
    );
  }
}

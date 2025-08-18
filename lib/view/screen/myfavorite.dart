import 'package:ecommerce_app/core/class/handlingDataView.dart';
import 'package:ecommerce_app/view/widget/myFavorite/CustomListFavoriteItem.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/MyfavoriteController.dart';
import '../widget/generalWidget/customAppBar.dart';

class Myfavorite extends StatelessWidget {
  const Myfavorite({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(Myfavoritecontroller());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GetBuilder<Myfavoritecontroller>(
          builder: (controller) => ListView(
            children: [
              CustomAppBar(
                onPressedsearch: () {},
                onPressedNotfi: () {},
                hintText: 'Find Product',
              ),
              SizedBox(height: 10),
              GridView.builder(
                itemCount: controller.data.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .8,
                ),
                itemBuilder: (context, i) => CustomlistFavoriteItems(
                  myfavoriteModel: controller.data[i],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

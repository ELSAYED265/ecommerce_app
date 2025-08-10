import 'package:ecommerce_app/controller/homepageController.dart';
import 'package:ecommerce_app/core/class/handlingDataView.dart';
import 'package:ecommerce_app/core/class/statusRequest.dart';
import 'package:ecommerce_app/core/constant/Color.dart';
import 'package:ecommerce_app/core/constant/imageAsset.dart';
import 'package:ecommerce_app/core/constant/linkApi.dart';
import 'package:ecommerce_app/data/model/categoriesmode.dart';
import 'package:ecommerce_app/view/widget/HomepageWidget/CustomTextFormFeildHome.dart';
import 'package:ecommerce_app/view/widget/HomepageWidget/customAppBarHome.dart';
import 'package:ecommerce_app/view/widget/HomepageWidget/customCardHome.dart';
import 'package:ecommerce_app/view/widget/HomepageWidget/cutomTitleHome.dart';
import 'package:ecommerce_app/view/widget/HomepageWidget/listCategoriesHome.dart';
import 'package:ecommerce_app/view/widget/HomepageWidget/listItemsHome.dart';
import 'package:ecommerce_app/view/widget/generalWidget/customTextFormFeild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomepagecontrollerImp());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: GetBuilder<HomepagecontrollerImp>(
        builder: (controller) => ListView(
          children: [
            CustomAppBarhome(
              onPressedsearch: () {},
              onPressedIcon: () {},
              hintText: 'Find Product',
            ),
            SizedBox(height: 10),
            CustomCardHome(
              title: "A summer surprise",
              body: "A summer surprise",
            ),
            SizedBox(height: 10),
            Listcategorieshome(),
            CustomTitleHome(title: "Product For You"),
            ListItemsHome(),
            CustomTitleHome(title: "offer "),
            ListItemsHome(),
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce_app/controller/homepageController.dart';
import 'package:ecommerce_app/controller/itemsController.dart';
import 'package:ecommerce_app/core/function/transualtDataBase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/linkApi.dart';

class ListcategoriesItems extends GetView<itemsControllerImp> {
  const ListcategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 40),
      height: 40,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 1),
        scrollDirection: Axis.horizontal,
        itemCount: controller.Categories.length,
        itemBuilder: (context, i) {
          final name = TransulateDataBase(
            controller.Categories[i].categoriesNameAr,
            controller.Categories[i].categoriesNameEn,
          );
          return InkWell(
            onTap: () {
              controller.changcate(
                i,
                controller.Categories[i].categoriesId.toString(),
              );
              //   controller.goToItem(controller.Categories, i);
            },
            child: GetBuilder<itemsControllerImp>(
              builder: (controller) => Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.only(bottom: 3),
                decoration: controller.selectcat == i
                    ? BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 2, color: Colors.red),
                        ),
                      )
                    : null,
                child: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 22,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

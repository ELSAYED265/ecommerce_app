import 'package:ecommerce_app/controller/homepageController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/linkApi.dart';

class Listcategorieshome extends GetView<HomepagecontrollerImp> {
  const Listcategorieshome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 12),
        scrollDirection: Axis.horizontal,
        itemCount: controller.Categories.length,
        itemBuilder: (context, i) {
          final category = controller.Categories[i];
          final imageUrl =
              "${LinkApi.imageCategories}/${controller.Categories[i].categoriesImage}";
          final name = controller.Categories[i].categoriesNameAr;

          return Column(
            children: [
              Container(
                width: 90,
                height: 90,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xfff2f2f2),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: SvgPicture.network(
                  imageUrl,
                  placeholderBuilder: (context) =>
                      Center(child: CircularProgressIndicator(strokeWidth: 2)),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 8),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}

import 'package:ecommerce_app/controller/homeScreenController.dart';
import 'package:ecommerce_app/controller/homepageController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCardHome extends GetView<HomepagecontrollerImp> {
  const CustomCardHome({super.key, required this.title, required this.body});
  final String title;
  final String body;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xfff94449),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          // 🔴 الدائرة المزينة - خلف النص
          Positioned(
            right: controller.postionCardHome == "en" ? -40 : null,
            left: controller.postionCardHome == "ar" ? -40 : null,
            bottom: -20,
            child: Container(
              width: 170,
              height: 170,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffE53935),
              ),
            ),
          ),

          // ✅ النصوص داخل الـ Column
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 10),
                Text(
                  body,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

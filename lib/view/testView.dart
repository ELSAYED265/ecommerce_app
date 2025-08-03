import 'package:ecommerce_app/controller/testController.dart';
import 'package:ecommerce_app/core/class/handlingDataView.dart';
import 'package:ecommerce_app/core/class/statusRequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Testview extends StatelessWidget {
  const Testview({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(title: Text("testview")),
      body: Container(
        child: GetBuilder<TestController>(
          builder: (controller) {
            return Handlingdataview(
              statusRequest: controller.statusRequest,
              widget: ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, i) {
                  print(controller.data.length);
                  return Text(
                    "${controller.data}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  );
                },
              ),
            );
            // if (controller.statusRequest == StatusRequest.loading) {
            //   return Center(child: Text("loding......"));
            // } else if (controller.statusRequest ==
            //     StatusRequest.internetfailer) {
            //   return Center(child: Text("please check internet"));
            // } else if (controller.statusRequest == StatusRequest.severfailer) {
            //   return Center(child: Text("sever failer (error 404)"));
            // } else if (controller.statusRequest == StatusRequest.failer) {
            //   return Center(child: Text(' No data'));
            // } else {
            //   return ListView.builder(
            //     itemCount: controller.data.length,
            //     itemBuilder: (context, i) {
            //       print(controller.data.length);
            //       return Text(
            //         "${controller.data}",
            //         style: TextStyle(fontSize: 20, color: Colors.black),
            //       );
            //     },
            //   );
            // }
          },
        ),
      ),
    );
  }
}

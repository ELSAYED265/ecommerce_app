import 'package:ecommerce_app/binding.dart';
import 'package:ecommerce_app/core/class/crud.dart';
import 'package:ecommerce_app/core/class/statusRequest.dart';
import 'package:ecommerce_app/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';

import '../core/function/handligDataController.dart';

class TestController extends GetxController {
  Testdata testdata = Testdata(Get.find());
  late StatusRequest statusRequest;
  List data = [];
  getData() async {
    statusRequest = StatusRequest.loading;
    var respons = await testdata.getData();
    statusRequest = HandlingData(respons);
    if (statusRequest == StatusRequest.success) {
      if (respons["status"] == 'success') {
        data.addAll(respons['data']);
      } else {
        statusRequest = StatusRequest.failer;
      }
    }

    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}

// if (respons['status'] == "success") {
// statusRequest = StatusRequest.success;
// data.addAll(respons['data']);
// } else {
// statusRequest = StatusRequest.failer;
// }

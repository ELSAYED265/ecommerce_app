import 'package:ecommerce_app/controller/auth/SignUpController.dart';
import 'package:ecommerce_app/core/class/crud.dart';
import 'package:get/get.dart';

import 'controller/favoriteController.dart';

class Mybinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    Get.put(Crud());
    Get.put(FavoriteController());
  }
}

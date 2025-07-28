import 'package:ecommerce_app/core/constant/Roote.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  goToLogin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  goToLogin() {
    Get.offNamed(AppRoote.Login);
  }
}

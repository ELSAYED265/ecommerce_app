import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySevices extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<MySevices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

initialService() async {
  await Get.putAsync(() => MySevices().init());
}

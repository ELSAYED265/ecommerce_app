import 'package:ecommerce_app/core/services/sevices.dart';
import 'package:get/get.dart';

TransulateDataBase(colum_ar, colum_en) {
  MySevices sevices = Get.find();
  if (sevices.sharedPreferences.getString("lang") == "ar") {
    return colum_ar;
  } else
    return colum_en;
}

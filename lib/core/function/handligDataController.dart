import 'package:ecommerce_app/core/class/statusRequest.dart';
import 'package:http/http.dart';

StatusRequest HandlingData(respose) {
  if (respose is StatusRequest) {
    return respose;
  } else {
    return StatusRequest.success;
  }
}

//بص ياسيجي في الصفحه دي بشوف هل responseمن نوف StatusRequestام Map(data)
//لو كان dataهرجع StatusRequest.success
//لو لاء هرجع response هسيكون حالتين فقط انا مشكله في النترنت او مشكله في server

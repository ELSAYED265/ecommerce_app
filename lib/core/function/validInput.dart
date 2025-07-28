import 'package:get/get.dart';

ValidInput(String val, int max, int min, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "not vaild username";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "not vaild email";
    }
  }
  if (type == "password") {
    if (!GetUtils.isEmail(val)) {
      return "not vaild password";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isEmail(val)) {
      return "not vaild phone";
    }
  }
  if (val.isEmpty) {
    return " can’t be empty";
  }
  if (val.length < min) {
    return " can’t be less than $min";
  }
  if (val.length > max) {
    return " can’t be lager than $max";
  }
}

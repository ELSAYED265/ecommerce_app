import 'package:ecommerce_app/core/constant/linkApi.dart';

import '../../../../core/class/crud.dart';

class SiginUpData {
  Crud crud;
  SiginUpData(this.crud);
  addUser(String username, String email, String phone, String password) async {
    var response = await crud.PostData(LinkApi.signUp, {
      "username": username,
      'email': email,
      'phone': phone,
      'password': password,
    });
    return response.fold((l) => l, (r) => r);
  }
}

import 'package:ecommerce_app/core/constant/linkApi.dart';

import '../../../../core/class/crud.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  checkUser(String email, String password) async {
    var response = await crud.PostData(LinkApi.login, {
      'email': email,
      'password': password,
    });
    return response.fold((l) => l, (r) => r);
  }
}

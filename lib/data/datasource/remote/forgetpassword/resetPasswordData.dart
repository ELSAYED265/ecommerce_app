import 'package:ecommerce_app/core/constant/linkApi.dart';

import '../../../../core/class/crud.dart';

class ResetPasswordData {
  Crud crud;
  ResetPasswordData(this.crud);
  Postdata(String email, String password) async {
    var response = await crud.PostData(LinkApi.resetPassword, {
      'email': email,
      'password': password,
    });
    return response.fold((l) => l, (r) => r);
  }
}

import 'package:ecommerce_app/core/constant/linkApi.dart';

import '../../../../core/class/crud.dart';

class VerfiycodeForgetpasswordData {
  Crud crud;
  VerfiycodeForgetpasswordData(this.crud);
  Postdata(String email, String verfiycode) async {
    var response = await crud.PostData(LinkApi.verfiycodeForForget, {
      'email': email,
      'verfiycode': verfiycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}

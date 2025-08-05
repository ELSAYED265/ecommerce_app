import 'package:ecommerce_app/core/constant/linkApi.dart';

import '../../../../core/class/crud.dart';

class CheckEmaildata {
  Crud crud;
  CheckEmaildata(this.crud);
  Postdata(String email) async {
    var response = await crud.PostData(LinkApi.checkEmail, {'email': email});
    return response.fold((l) => l, (r) => r);
  }
}

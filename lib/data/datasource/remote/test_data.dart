import 'package:ecommerce_app/core/constant/linkApi.dart';

import '../../../core/class/crud.dart';

class Testdata {
  Crud crud;
  Testdata(this.crud);
  getData() async {
    var response = await crud.PostData(LinkApi.test, {});
    return response.fold((l) => l, (r) => r);
  }
}

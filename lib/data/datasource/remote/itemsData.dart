import 'package:ecommerce_app/core/constant/linkApi.dart';

import '../../../core/class/crud.dart';

class Itemsdata {
  Crud crud;
  Itemsdata(this.crud);
  getData(String categoriesid, String userid) async {
    var response = await crud.PostData(LinkApi.items, {
      "id": categoriesid,
      "userid": userid,
    });
    return response.fold((l) => l, (r) => r);
  }
}

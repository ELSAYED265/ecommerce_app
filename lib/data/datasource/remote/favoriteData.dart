import 'package:ecommerce_app/core/constant/linkApi.dart';

import '../../../core/class/crud.dart';

class Favoritedata {
  Crud crud;
  Favoritedata(this.crud);
  addData(String userid, String itemid) async {
    var response = await crud.PostData(LinkApi.favoriteAdd, {
      "userid": userid,
      "itemid": itemid,
    });
    return response.fold((l) => l, (r) => r);
  }

  RemoveData(String userid, String itemid) async {
    var response = await crud.PostData(LinkApi.favoriteRemove, {
      "userid": userid,
      "itemid": itemid,
    });
    return response.fold((l) => l, (r) => r);
  }
}

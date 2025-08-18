import 'package:ecommerce_app/core/constant/linkApi.dart';

import '../../../core/class/crud.dart';

class Myfavoritedata {
  Crud crud;
  Myfavoritedata(this.crud);
  getData(String userid) async {
    var response = await crud.PostData(LinkApi.favoriteView, {"id": userid});
    return response.fold((l) => l, (r) => r);
  }

  removeFavorite(String favoriteId) async {
    var response = await crud.PostData(LinkApi.removeFromMyfavorite, {
      "id": favoriteId,
    });
    return response.fold((l) => l, (r) => r);
  }
}

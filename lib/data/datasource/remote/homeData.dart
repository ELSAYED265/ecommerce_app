import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/constant/linkApi.dart';

import '../../../core/class/crud.dart';

class Homedata {
  Crud crud;
  Homedata(this.crud);
  getData() async {
    var response = await crud.PostData(LinkApi.homePage, {});
    return response.fold((l) => l, (r) => r);
  }
}

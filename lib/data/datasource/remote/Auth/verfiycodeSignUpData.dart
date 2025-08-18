import 'package:ecommerce_app/core/constant/linkApi.dart';
import 'package:ecommerce_app/view/screen/auth/forgetPassword/verfyCode.dart';

import '../../../../core/class/crud.dart';

class VerfiyCodeSignupData {
  Crud crud;
  VerfiyCodeSignupData(this.crud);
  verfyCode(String verfiycode, String email) async {
    var response = await crud.PostData(LinkApi.verfiyCode, {
      'verfiycode': verfiycode,
      'email': email,
    });
    return response.fold((l) => l, (r) => r);
  }

  resendVerfiycodeData(String email) async {
    var response = await crud.PostData(LinkApi.verfiyCode, {'email': email});
    return response.fold((l) => l, (r) => r);
  }
}

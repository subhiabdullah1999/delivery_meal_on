import 'package:my_meal_on_delivery/core/class/crud.dart';
import 'package:my_meal_on_delivery/core/constans/applinks.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  postData(String phonenumber, String password) async {
    var response = await crud.postData(AppLinks.login, {
      "phone": phonenumber,
      "password": password,
    }, {});
    return response.fold((l) => l, (r) => r);
  }
}

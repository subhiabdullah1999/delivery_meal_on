import 'package:get/get.dart';
import 'package:my_meal_on_delivery/core/class/crud.dart';
import 'package:my_meal_on_delivery/core/constans/applinks.dart';
import 'package:my_meal_on_delivery/core/services/services.dart';

class OrdersData {
  MyServices myServices = Get.find();

  Crud crud;
  OrdersData(this.crud);
  allOrders() async {
    var token = myServices.sharedPreferences.get("token").toString();
    var response = await crud
        .getData(AppLinks.allOrders, {"Authorization": "Bearer $token"});
    return response.fold((l) => l, (r) => r);
  }

  viewPastOrders(
    String resturantId,
  ) async {
    var token = myServices.sharedPreferences.get("token").toString();
    var response = await crud.getData(
        "https://mo.mymealon.com/public/api/my-past-cart/$resturantId",
        {"Authorization": "Bearer $token"});
    return response.fold((l) => l, (r) => r);
  }

  confirmOrders(
      String resturantId,
      String latitude,
      String longitude,
      String tablereservation,
      String reservationtime,
      String withdelivery) async {
    var token = myServices.sharedPreferences.get("token").toString();
    var response = await crud
        .postData("https://mo.mymealon.com/public/api/order/$resturantId", {
      "latitude": latitude,
      "longitude": longitude,
      "table_reservation": tablereservation,
      "reservation_time": reservationtime,
      "with_delivery": withdelivery
    }, {
      "Authorization": "Bearer $token"
    });
    return response.fold((l) => l, (r) => r);
  }
}

import 'package:my_meal_on_delivery/core/class/statusRequest.dart';

handlingData(response) {
  if (response == StatusRequest) {
    return response;
  } else {
    return StatusRequest.success;
  }
}

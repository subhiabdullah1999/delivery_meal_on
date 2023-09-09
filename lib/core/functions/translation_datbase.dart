import 'package:get/get.dart';
import 'package:my_meal_on_delivery/core/services/services.dart';

translationData(nameAr, nameEn) {
  MyServices myServices = Get.find();
  if (myServices.sharedPreferences.getString("lang") == "ar") {
    return nameAr;
  } else {
    return nameEn;
  }
}

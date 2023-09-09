import 'package:get/get.dart';
import 'package:my_meal_on_delivery/core/class/crud.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}

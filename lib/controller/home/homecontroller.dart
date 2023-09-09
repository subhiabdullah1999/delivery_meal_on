import 'package:get/get.dart';
import 'package:my_meal_on_delivery/core/constans/appNameRouts.dart';
import 'package:my_meal_on_delivery/core/functions/alertdialogexitapp.dart';
import 'package:my_meal_on_delivery/core/services/services.dart';

abstract class HomeController extends GetxController {
  goBack();

  initData();

  gotoNotification();
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();
  late String username;
  late String phone;
  late String id;
  late String password;

  @override
  initData() {
    username = myServices.sharedPreferences.getString("username")!;
    id = myServices.sharedPreferences.getString("id")!;
    phone = myServices.sharedPreferences.getString("phone")!;
    password = myServices.sharedPreferences.getString("password")!;
  }

  @override
  void onInit() {
    initData();
    super.onInit();
  }

  @override
  goBack() {
    alertDialogExitApp();
  }

  @override
  gotoNotification() {
    Get.toNamed(AppRoutsName.notification);
  }
}

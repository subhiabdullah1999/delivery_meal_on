import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_meal_on_delivery/core/constans/appNameRouts.dart';
import 'package:my_meal_on_delivery/screens/orders/accepted_orders.dart';
import 'package:my_meal_on_delivery/screens/orders/pending_orders.dart';
import 'package:my_meal_on_delivery/screens/settings/settings.dart';

abstract class HomeButtAbbarController extends GetxController {
  changePages(int index);

  gotoNotification();
}

class HomeButtAbbarControllerImp extends HomeButtAbbarController {
  int curentpage = 0;

  List<Widget> listPages = [
    const PendingOrders(),
    const AcceptedOrders(),
    const Setting(),
  ];

  List titleButtomAbbar = [
    "pending",
    "accepted",
    "settings",
  ];
  List<IconData> listIconData = [
    Icons.pending_actions_rounded,
    Icons.add_shopping_cart_outlined,
    Icons.settings,
  ];

  @override
  changePages(int index) {
    curentpage = index;
    update();
  }

  @override
  gotoNotification() {
    Get.toNamed(AppRoutsName.notification);
  }
}

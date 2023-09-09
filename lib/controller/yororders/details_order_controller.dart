import 'package:get/get.dart';
import 'package:my_meal_on_delivery/controller/yororders/pending_orders_controller.dart';
import 'package:my_meal_on_delivery/core/class/statusRequest.dart';
import 'package:my_meal_on_delivery/core/constans/appNameRouts.dart';

abstract class DetailsOrderController extends GetxController {
  goBack();
  // getAllOrders();
  // initialData();
  // clearIcon();
  goToOrderDetails();
}

class DetailsOrderControllerImp extends DetailsOrderController {
  PindingOrdersControllerImp controllerImp =
      Get.put(PindingOrdersControllerImp());
  // OrdersData ordersData = OrdersData(Get.find());
  // CartData cartData = CartData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;

  @override
  goBack() {
    Get.back();
  }

  // @override
  // getAllOrders() async {
  //   statusRequest = StatusRequest.loading;
  //   update();
  //   var response = await ordersData.allOrders();
  //   statusRequest = handlingData(response);
  //   update();
  //   if (StatusRequest.success == statusRequest) {
  //     if (response['success'] == true) {
  //       List dataresponse = response["data"]["Past Orders"]['data'];

  //       print(dataresponse.toString());

  //       data.addAll(dataresponse.map((e) => AllOrdersModel.fromJson(e)));

  //       update();
  //     } else {
  //       statusRequest = StatusRequest.faliure;
  //     }
  //   }
  //   update();
  // }

  // deletAllPastOrders() async {
  //   statusRequest = StatusRequest.loading;
  //   update();

  //   var response = await cartData.deletAllPastOrder();

  //   statusRequest = handlingData(response);

  //   if (StatusRequest.success == statusRequest) {
  //     if (response['status'] == 'success') {
  //       data.clear();
  //       update();
  //       Get.rawSnackbar(
  //           title: "success".tr,
  //           messageText: Text(
  //               "The product has been removed from the cart successfully".tr),
  //           borderColor: AppColors.oraColor,
  //           borderWidth: 2,
  //           padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80));
  //     } else {
  //       statusRequest = StatusRequest.faliure;
  //       Get.rawSnackbar(
  //           title: "success".tr,
  //           messageText: Text("hhhhhhhhhhhhhhhhhhhhh".tr),
  //           borderColor: AppColors.oraColor,
  //           borderWidth: 2,
  //           padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80));
  //     }
  //   }
  //   update();
  // }

  // @override
  // void onInit() {
  //   initialData();
  //   super.onInit();
  // }

  // @override
  // initialData() {
  //   getAllOrders();
  // }

  // @override
  // clearIcon() {
  //   data.clear();
  //   update();
  // }

  @override
  goToOrderDetails() {
    Get.toNamed(AppRoutsName.detailsOrders, arguments: {});
  }
}

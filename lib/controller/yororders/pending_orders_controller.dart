import 'package:get/get.dart';
import 'package:my_meal_on_delivery/core/class/statusRequest.dart';
import 'package:my_meal_on_delivery/core/data/datasource/remote/orders/all_orders.dart';
import 'package:my_meal_on_delivery/core/data/model/orders/all_orders_model.dart';
import 'package:my_meal_on_delivery/core/functions/alertdialogexitapp.dart';
import 'package:my_meal_on_delivery/core/functions/handlingdatacontroller.dart';
import 'package:my_meal_on_delivery/core/services/services.dart';

abstract class PindingOrdersController extends GetxController {
  goBack();
  getAllOrdersPending();
  // initialData();
  // clearIcon();
  // goToOrderId();
}

class PindingOrdersControllerImp extends PindingOrdersController {
  OrdersData ordersData = OrdersData(Get.find());
  // CartData cartData = CartData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  MyServices myServices = Get.find();

  List<AllOrdersModel> data = [];

  @override
  goBack() {
    alertDialogExitApp();
  }

  @override
  getAllOrdersPending() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await ordersData.allOrders();
    statusRequest = handlingData(response);
    update();
    if (StatusRequest.success == statusRequest) {
      if (response['success'] == true) {
        List dataresponse = response["data"]["Past Orders"]['data'];
        print("stdyffffffffffffffffffffff");

        print(dataresponse.toString());
        print("stdyffffffffffffffffffffff");

        data.addAll(dataresponse.map((e) => AllOrdersModel.fromJson(e)));

        update();
      } else {
        statusRequest = StatusRequest.faliure;
      }
    }
    update();
  }

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

  @override
  void onInit() {
    getAllOrdersPending();
    super.onInit();
  }

  // @override
  // initialData() {
  //   getAllOrders();
  // }

  // @override
  // clearIcon() {
  //   data.clear();
  //   update();
  // }

  // @override
  // goToOrderId() {
  //   Get.toNamed(AppRoutsName.orderId, arguments: {
  //     "resturantId": resturantIdPast,
  //   });
  // }
}

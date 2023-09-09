import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_meal_on_delivery/core/class/statusRequest.dart';
import 'package:my_meal_on_delivery/core/constans/appNameRouts.dart';
import 'package:my_meal_on_delivery/core/functions/handlingdatacontroller.dart';
import 'package:my_meal_on_delivery/core/services/services.dart';

abstract class SettingsController extends GetxController {
  goTOProfile();
  goToChangePassword();
  goBack();
  // logOut();
  goToAddress();
}

class SettingsControllerImp extends SettingsController {
  MyServices myServices = Get.find();
  // LogOutData logOutData = LogOutData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  String? choValue;

  List listLanguage = ["arabic".tr, "english".tr];

  changeChoValue() {
    if (myServices.sharedPreferences.get("lang") == "ar") {
      choValue = "arabic".tr;
    } else {
      choValue = "english".tr;
    }
    update();
  }

  changLang() {
    if (myServices.sharedPreferences.get("lang") == "ar") {}
  }

  @override
  goTOProfile() {
    Get.toNamed(AppRoutsName.profilescreen);
  }

  @override
  goToChangePassword() {
    Get.toNamed(AppRoutsName.chanePassword);
  }

  @override
  goBack() {
    Get.offAllNamed(AppRoutsName.homebuttonApbar);
  }

  @override
  // logOut() async {
  //   statusRequest = StatusRequest.loading;
  //   update();
  //   var response = await logOutData.postData();
  //   statusRequest = handlingData(response);

  //   if (statusRequest == StatusRequest.success) {
  //     if (response["message"] == "Logged Out") {
  //       myServices.sharedPreferences.clear();

  //       Get.rawSnackbar(
  //           title: "success".tr,
  //           messageText: Text("success logOut".tr),
  //           borderColor: AppColors.oraColor,
  //           borderWidth: 2,
  //           padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80));
  //       Get.offNamed(AppRoutsName.login);
  //     }
  //   }

  //   update();
  // }

  @override
  goToAddress() {
    Get.toNamed(AppRoutsName.viewAddress);
  }

  @override
  void onInit() {
    changeChoValue();
    super.onInit();
  }
}

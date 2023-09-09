// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_meal_on_delivery/controller/home/homebuttAbbarcontroler.dart';
import 'package:my_meal_on_delivery/core/constans/appColors.dart';
import 'package:my_meal_on_delivery/core/functions/alertdialogexitapp.dart';
import 'package:my_meal_on_delivery/widget/home/custombutomabb.dart';

import '../../core/constans/appNameRouts.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(HomeButtAbbarControllerImp());
    return GetBuilder<HomeButtAbbarControllerImp>(
      builder: (controller) => Scaffold(
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(
            children: [
              ...List.generate(controller.listPages.length, (index) {
                return Expanded(
                  child: CustomBottomAbb(
                      onPressed: () {
                        controller.changePages(index);
                      },
                      text: controller.titleButtomAbbar[index],
                      iconData: controller.listIconData[index],
                      active: controller.curentpage == index),
                );
              })
            ],
          ),
        ),
        body: WillPopScope(
            child: controller.listPages.elementAt(controller.curentpage),
            onWillPop: alertDialogExitApp),
      ),
    );
  }
}

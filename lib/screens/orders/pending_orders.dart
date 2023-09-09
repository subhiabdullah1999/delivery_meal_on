import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_meal_on_delivery/controller/yororders/pending_orders_controller.dart';
import 'package:my_meal_on_delivery/core/constans/appColors.dart';
import 'package:my_meal_on_delivery/core/functions/translation_datbase.dart';
import 'package:my_meal_on_delivery/widget/orders/custom_list_items_orders.dart';
import 'package:my_meal_on_delivery/widget/settings/customBackIcon.dart';
import 'package:my_meal_on_delivery/widget/settings/customtitle.dart';

import '../../core/class/handlingdata.dart';

class PendingOrders extends StatelessWidget {
  const PendingOrders({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PindingOrdersControllerImp());
    return GetBuilder<PindingOrdersControllerImp>(
        builder: ((controller) => SafeArea(
              child: Scaffold(
                body: ListView(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    children: [
                      Row(children: [
                        CustomBackIcon(onPressed: () {
                          controller.goBack();
                        }),
                        const CustomTitle(
                          texttitle: "pending orders",
                        ),
                        const Spacer(),
                      ]),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      HandlingDatat(
                          statusRequest: controller.statusRequest,
                          widget: controller.data.isEmpty
                              ? Padding(
                                  padding: const EdgeInsets.all(100),
                                  child: Center(
                                    child: Text(
                                      "no past order".tr,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: Colors.red, fontSize: 20),
                                    ),
                                  ),
                                )
                              : SizedBox(
                                  height: Get.height - 100,
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 1,
                                        childAspectRatio: 3,
                                      ),
                                      itemCount: controller.data.length,
                                      itemBuilder: (context, index) {
                                        return Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  CustomListItemsOrders(
                                                    onTap: () {
                                                      // controller.resturantIdPast =
                                                      //     controller.pastOrder[index].id;
                                                      // controller.goToOrderId();
                                                    },
                                                    onTapIcon: () {
                                                      Get.snackbar(
                                                        "success".tr,
                                                        "The order has been accepted"
                                                            .tr,
                                                        animationDuration:
                                                            const Duration(
                                                          milliseconds: 1000,
                                                        ),
                                                        backgroundColor:
                                                            AppColors.oraColor,
                                                        colorText: AppColors
                                                            .whiteColor,
                                                      );
                                                    },
                                                    texticon: "accept",
                                                    textAmount: controller
                                                        .data[index].rate
                                                        .toString(),
                                                    image: controller
                                                        .data[index].image,
                                                    nameResturant:
                                                        translationData(
                                                            controller
                                                                .data[index]
                                                                .nameAr,
                                                            controller
                                                                .data[index]
                                                                .name),
                                                    descr: translationData(
                                                        controller.data[index]
                                                            .addressAr,
                                                        controller.data[index]
                                                            .address),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      }),
                                ))
                    ]),
              ),
            )));
  }
}

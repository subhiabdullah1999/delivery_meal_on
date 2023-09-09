import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_meal_on_delivery/controller/yororders/accepted_orders_controller.dart';
import 'package:my_meal_on_delivery/core/class/handlingdata.dart';
import 'package:my_meal_on_delivery/core/functions/translation_datbase.dart';
import 'package:my_meal_on_delivery/widget/orders/custom_list_items_orders.dart';

import 'package:my_meal_on_delivery/widget/settings/customBackIcon.dart';
import 'package:my_meal_on_delivery/widget/settings/customtitle.dart';

class AcceptedOrders extends StatelessWidget {
  const AcceptedOrders({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AcceptedOrdersImp());
    return GetBuilder<AcceptedOrdersImp>(
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
                          texttitle: "Orders delivered",
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
                          widget: controller.controllerImp.data.isEmpty
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
                                      itemCount:
                                          controller.controllerImp.data.length,
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
                                                      controller
                                                          .goToOrderDetails();
                                                    },
                                                    texticon: "details",
                                                    textAmount: controller
                                                        .controllerImp
                                                        .data[index]
                                                        .rate
                                                        .toString(),
                                                    image: controller
                                                        .controllerImp
                                                        .data[index]
                                                        .image,
                                                    nameResturant:
                                                        translationData(
                                                            controller
                                                                .controllerImp
                                                                .data[index]
                                                                .nameAr,
                                                            controller
                                                                .controllerImp
                                                                .data[index]
                                                                .name),
                                                    descr: translationData(
                                                        controller
                                                            .controllerImp
                                                            .data[index]
                                                            .addressAr,
                                                        controller
                                                            .controllerImp
                                                            .data[index]
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_meal_on_delivery/controller/address/add_adress_controller.dart';
import 'package:my_meal_on_delivery/controller/yororders/details_order_controller.dart';
import 'package:my_meal_on_delivery/core/class/handlingdata.dart';
import 'package:my_meal_on_delivery/core/constans/appColors.dart';
import 'package:my_meal_on_delivery/widget/orders_detailes/custom_divider.dart';
import 'package:my_meal_on_delivery/widget/orders_detailes/custom_row_detailes.dart';
import 'package:my_meal_on_delivery/widget/settings/customBackIcon.dart';
import 'package:my_meal_on_delivery/widget/settings/customtitle.dart';

class DetailsOrders extends StatelessWidget {
  const DetailsOrders({super.key});

  @override
  Widget build(BuildContext context) {
    DetailsOrderControllerImp controller = Get.put(DetailsOrderControllerImp());
    Get.put(AddAdressController());
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Row(children: [
            CustomBackIcon(onPressed: () {
              controller.goBack();
            }),
            const CustomTitle(
              texttitle: "Order details",
            ),
            const Spacer(),
          ]),
          const SizedBox(
            height: 8,
          ),
          Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: AppColors.oraColor),
              ),
              child: Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    const CustomRowDetailes(
                      textName: "Subhi Abdullah",
                      textValue: "23/3/2023",
                    ),
                    const CustomDivider(),
                    CustomRowDetailes(
                      textName: "name Order".tr,
                      textValue: "Food one",
                    ),
                    const CustomDivider(),
                    // CustomRowDetailes(
                    //   textName: "number Order".tr,
                    //   textValue: "Food one",
                    // ),
                    // const CustomDivider(),
                    CustomRowDetailes(
                      textName: "name Retaurant".tr,
                      textValue: "Otto Cunefe",
                    ),
                    const CustomDivider(),
                    CustomRowDetailes(
                      textName: "Price Order".tr,
                      textValue: "20\$",
                    ),
                    const CustomDivider(),
                    CustomRowDetailes(
                      textName: "Price Delivery".tr,
                      textValue: "2\$",
                    ),
                    const CustomDivider(),
                    CustomRowDetailes(
                      textName: "price total".tr,
                      textValue: "22\$",
                    ),
                  ],
                ),
              )),
          Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: AppColors.oraColor),
              ),
              child: Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: const [
                    CustomRowDetailes(
                      textName: "المنزل",
                      textValue: "09878888778",
                    ),
                    CustomDivider(),
                    CustomRowDetailes(
                      textValue:
                          "الاذقية - المشروع السابع -شارع الثورة- كفتريا موسكو",
                      textName: "",
                    ),
                  ],
                ),
              )),
          SizedBox(
              height: Get.height - 490,
              child: GetBuilder<AddAdressController>(
                  builder: (controllerpage) => HandlingDatatRequest(
                        statusRequest: controllerpage.statusRequest,
                        widget: controllerpage.kGooglePlex != null
                            ? GoogleMap(
                                markers: controllerpage.markers.toSet(),
                                onTap: (latlong) {
                                  controllerpage.addMarkers(latlong);
                                },
                                mapType: MapType.normal,
                                initialCameraPosition:
                                    controllerpage.kGooglePlex!,
                                onMapCreated: (GoogleMapController controller) {
                                  controllerpage.completer.complete(controller);
                                },
                              )
                            : Container(),
                      )))
        ],
      ),
    ));
  }
}

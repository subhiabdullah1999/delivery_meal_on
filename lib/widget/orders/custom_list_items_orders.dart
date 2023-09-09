import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_meal_on_delivery/controller/yororders/pending_orders_controller.dart';
import 'package:my_meal_on_delivery/core/constans/appColors.dart';
import 'package:my_meal_on_delivery/widget/resturant/customIcon_desc_resturant.dart';
import 'package:my_meal_on_delivery/widget/resturant/customtextsubtitleresturant.dart';

class CustomListItemsOrders extends StatelessWidget {
  final String nameResturant;
  final String descr;

  final String? image;
  final String textAmount;
  final void Function()? onTap;
  final String texticon;
  final void Function()? onTapIcon;

  const CustomListItemsOrders({
    super.key,
    required this.nameResturant,
    required this.descr,
    required this.image,
    required this.textAmount,
    required this.onTap,
    required this.texticon,
    required this.onTapIcon,
  });

  @override
  Widget build(BuildContext context) {
    PindingOrdersControllerImp controller =
        Get.put(PindingOrdersControllerImp());
    return Stack(children: [
      InkWell(
        onTap: onTap,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          image!,
                        ),
                        fit: BoxFit.cover),
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15)),
              ),
              Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              nameResturant.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      fontSize: 20,
                                      color: AppColors.blackColor3,
                                      fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                const CustomIconDescrResturant(
                                  icon: Icons.star,
                                  colorCircle: AppColors.oraColor,
                                  colorIcon: AppColors.whiteColor,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                CustomTextSubTileResturant(
                                  subtitle: textAmount,
                                ),
                              ],
                            )
                          ],
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            descr.tr,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontSize: 17,
                                ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
      Positioned(
          bottom: 10,
          left:
              controller.myServices.sharedPreferences.getString("lang") == "ar"
                  ? 10
                  : null,
          right:
              controller.myServices.sharedPreferences.getString("lang") == "ar"
                  ? null
                  : 10,
          child: InkWell(
            onTap: onTapIcon,
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.oraColor),
                child: Center(
                  child: Text(
                    texticon.tr,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: AppColors.whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                )),
          ))
    ]);
  }
}

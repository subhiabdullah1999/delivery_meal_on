import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:my_meal_on_delivery/core/constans/appColors.dart';

class CustomTitle extends StatelessWidget {
  final String texttitle;
  const CustomTitle({super.key, required this.texttitle});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 10,
        child: Container(
          alignment: Alignment.center,
          child: Text(
            texttitle.tr,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.blackColor3,
                fontSize: 30,
                fontWeight: FontWeight.w600),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:my_meal_on_delivery/core/constans/appColors.dart';

class CustomTitlePart extends StatelessWidget {
  final String textTitle;
  const CustomTitlePart({super.key, required this.textTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Text(
        textTitle.tr,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.blackColor3),
      ),
    );
  }
}

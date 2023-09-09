import 'package:flutter/material.dart';
import 'package:my_meal_on_delivery/core/constans/appColors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.oraColor,
      endIndent: 10,
      indent: 10,
      thickness: 1,
    );
  }
}

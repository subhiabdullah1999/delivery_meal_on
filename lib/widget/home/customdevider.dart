import 'package:flutter/material.dart';
import 'package:my_meal_on_delivery/core/constans/appColors.dart';

class CustomDevider extends StatelessWidget {
  const CustomDevider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.blackColors5,
      height: 3,
      endIndent: 3,
      indent: 3,
      thickness: 1,
    );
  }
}

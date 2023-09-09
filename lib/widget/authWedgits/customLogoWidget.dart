import 'package:flutter/material.dart';
import 'package:my_meal_on_delivery/core/constans/appimage.dart';

class CustomLogoWidget extends StatelessWidget {
  const CustomLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 50),
        child: Image.asset(
          AppImages.signin,
          fit: BoxFit.fill,
          width: double.infinity,
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_meal_on_delivery/binding.dart';
import 'package:my_meal_on_delivery/core/localization/localizationController.dart';
import 'package:my_meal_on_delivery/core/localization/translation.dart';
import 'package:my_meal_on_delivery/core/services/services.dart';
import 'package:my_meal_on_delivery/routs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalizationController controller = Get.put(LocalizationController());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: controller.language,
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      title: 'My Meal On',
      theme: controller.appTheme,
      getPages: routes,
    );
  }
}

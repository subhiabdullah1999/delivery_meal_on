import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/home/homecontroller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());

    return Container();
  }
}

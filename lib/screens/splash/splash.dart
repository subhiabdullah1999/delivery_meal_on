import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_meal_on_delivery/core/class/loading.dart';
import 'package:my_meal_on_delivery/core/constans/appNameRouts.dart';
import 'package:my_meal_on_delivery/core/constans/appimage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double sizefont = 0.0;

  Timer() {
    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        sizefont = 30;
      });
    });
  }

  timerSplash() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(AppRoutsName.login);
    });
  }

  @override
  void initState() {
    timerSplash();
    Timer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
              width: width,
              height: hight,
              child: Image.asset(
                AppImages.splash,
                width: width,
                height: hight,
                fit: BoxFit.cover,
              )),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: hight - 250,
                ),
                const Loading(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

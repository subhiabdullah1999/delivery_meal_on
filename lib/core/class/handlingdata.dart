import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_meal_on_delivery/core/class/statusRequest.dart';
import 'package:my_meal_on_delivery/core/constans/appimage.dart';

class HandlingDatat extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDatat(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: LottieBuilder.asset(
            AppImages.loading,
            height: 500,
            width: 135,
          ))
        : statusRequest == StatusRequest.offlinefailuer
            ? Center(child: LottieBuilder.asset(AppImages.nointernet))
            : statusRequest == StatusRequest.servesfailuer
                ? Center(child: LottieBuilder.asset(AppImages.error404))
                : statusRequest == StatusRequest.faliure
                    ? Center(child: LottieBuilder.asset(AppImages.nodata))
                    : widget;
  }
}

class HandlingDatatRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDatatRequest(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: LottieBuilder.asset(
              AppImages.loading,
              height: 135,
              width: 135,
            ),
          )
        : statusRequest == StatusRequest.offlinefailuer
            ? Center(child: LottieBuilder.asset(AppImages.nointernet))
            : statusRequest == StatusRequest.servesfailuer
                ? Center(child: LottieBuilder.asset(AppImages.error404))
                : statusRequest == StatusRequest.faliure
                    ? Center(
                        child: LottieBuilder.asset(AppImages.nodata),
                      )
                    : widget;
  }
}

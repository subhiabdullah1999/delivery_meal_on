import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_meal_on_delivery/core/class/statusRequest.dart';
import 'package:my_meal_on_delivery/core/constans/appNameRouts.dart';

class AddAdressController extends GetxController {
  Position? position;

  StatusRequest statusRequest = StatusRequest.none;

  late Completer<GoogleMapController> completer;

  CameraPosition? kGooglePlex;

  List<Marker> markers = [];

  double? lat;
  double? lang;

  addMarkers(LatLng latLng) {
    markers.clear();
    markers.add(Marker(markerId: MarkerId("1"), position: latLng));
    lat = latLng.latitude;
    lang = latLng.longitude;
    update();
  }

  getCurentLocation() async {
    position = await Geolocator.getCurrentPosition();
    kGooglePlex = CameraPosition(
      target: LatLng(position!.latitude, position!.longitude),
      zoom: 14.4746,
    );
    statusRequest = StatusRequest.none;
    update();
  }

  goToAddAdressPartTow() {
    Get.toNamed(AppRoutsName.addAddressPartTow,
        arguments: {"lat": lat.toString(), "lang": lang.toString()});
  }

  @override
  void onInit() {
    getCurentLocation();
    completer = Completer<GoogleMapController>();
    super.onInit();
  }
}

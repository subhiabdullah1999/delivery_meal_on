import 'package:flutter/material.dart';

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:my_meal_on_delivery/core/constans/appNameRouts.dart';
import 'package:my_meal_on_delivery/core/middleware/mymiddleware.dart';
import 'package:my_meal_on_delivery/screens/auth/login.dart';
import 'package:my_meal_on_delivery/screens/home/homeBottomBar.dart';
import 'package:my_meal_on_delivery/screens/orders/details_order.dart';
import 'package:my_meal_on_delivery/screens/splash/splash.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(
  //   name: "/",
  //   page: () => const CustomBottomNavBar(),
  // ),
  GetPage(
    name: "/",
    page: () => const SplashScreen(),
  ),
  // GetPage(
  //     name: AppRoutsName.choceLang,
  //     page: () => const ChooseLanguage(),
  //     middlewares: [MyMiddleWare()]),
  GetPage(
      name: AppRoutsName.login,
      page: () => const LogIn(),
      middlewares: [MyMiddleWare()]),
  // GetPage(name: AppRoutsName.onBoarding, page: () => const OnBoarding()),
  // GetPage(name: AppRoutsName.signUp, page: () => const SignUp()),
  // GetPage(
  //     name: AppRoutsName.forgetPassword, page: () => const ForgetPassword()),
  // GetPage(name: AppRoutsName.veryfiCode, page: () => const VeryfiCode()),
  // GetPage(name: AppRoutsName.resetPassword, page: () => const ResetPassword()),
  // GetPage(
  //     name: AppRoutsName.veryfiCodeSignAndLogIn,
  //     page: () => const VerFiriCodeSignAndLOgIn()),
  // GetPage(name: AppRoutsName.home, page: () => const Home()),
  // GetPage(
  //     name: AppRoutsName.resturantScreen, page: () => const ResturantScreen()),
  // GetPage(name: AppRoutsName.settings, page: () => const Setting()),
  // GetPage(name: AppRoutsName.profile, page: () => const Profile()),
  // GetPage(name: AppRoutsName.chanePassword, page: () => const ChangePassword()),
  // GetPage(name: AppRoutsName.profilescreen, page: () => const ProfileScrren()),
  // GetPage(name: AppRoutsName.cart, page: () => const Cart()),
  // GetPage(name: AppRoutsName.order, page: () => const YourOrders()),
  GetPage(
      name: AppRoutsName.homebuttonApbar,
      page: () => const CustomBottomNavBar()),
  // GetPage(
  //     name: AppRoutsName.bottmapbarcategories,
  //     page: () => const CustomCategoriesBotomApbar()),
  // GetPage(
  //     name: AppRoutsName.resturantbotomapbar,
  //     page: () => const CustomResturantBotomApbar()),
  // GetPage(
  //     name: AppRoutsName.resturantdescscreen,
  //     page: () => const ResturantDescScreen()),

  // GetPage(
  //     name: AppRoutsName.resturandisctbotomapbar,
  //     page: () => const CustomResturantDisBotomApbar()),
  // GetPage(
  //     name: AppRoutsName.bottmapbarcategoriesdescr,
  //     page: () => const CustomCategoriesDisBotomApbar()),

  // GetPage(name: AppRoutsName.itemsDetails, page: () => const ItemDetails()),
  // GetPage(name: AppRoutsName.viewAddress, page: () => const ViewAddress()),
  // GetPage(name: AppRoutsName.addAddress, page: () => const AddAddress()),

  // GetPage(name: AppRoutsName.notification, page: () => const Notifications()),
  // GetPage(name: AppRoutsName.carttest, page: () => const CartTest()),
  // GetPage(
  //     name: AppRoutsName.addAddressPartTow,
  //     page: () => const AddAddressParTow()),
  // GetPage(name: AppRoutsName.editProfile, page: () => const EditeProfile()),
  // GetPage(name: AppRoutsName.cartId, page: () => const CartId()),
  // GetPage(name: AppRoutsName.checkOut, page: () => const CheckOut()),
  GetPage(name: AppRoutsName.detailsOrders, page: () => const DetailsOrders()),
  // GetPage(name: AppRoutsName.aboutUs, page: () => const AboutUs()),
];

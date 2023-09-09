import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_meal_on_delivery/controller/authcontrooler/logincontroller.dart';
import 'package:my_meal_on_delivery/core/class/handlingdata.dart';
import 'package:my_meal_on_delivery/core/constans/appColors.dart';
import 'package:my_meal_on_delivery/core/functions/alertdialogexitapp.dart';
import 'package:my_meal_on_delivery/core/functions/validinput.dart';
import 'package:my_meal_on_delivery/core/services/services.dart';
import 'package:my_meal_on_delivery/widget/authWedgits/customLogoWidget.dart';
import 'package:my_meal_on_delivery/widget/authWedgits/customTextFormAuth.dart';
import 'package:my_meal_on_delivery/widget/authWedgits/custombuttonSigninSignUP.dart';
import 'package:my_meal_on_delivery/widget/authWedgits/custombuttonauth.dart';
import 'package:my_meal_on_delivery/widget/authWedgits/customforgetpassword.dart';
import 'package:my_meal_on_delivery/widget/authWedgits/customtextsignup.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    Get.put(LogInControllerImp());
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: WillPopScope(
          onWillPop: alertDialogExitApp,
          child: GetBuilder<LogInControllerImp>(
              builder: (controller) => HandlingDatatRequest(
                    statusRequest: controller.statusRequest,
                    widget: Form(
                      key: controller.formstate,
                      child: ListView(
                        children: [
                          const CustomLogoWidget(),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomTextFormAuthWidget(
                              valid: (valeu) {
                                return validInput(valeu!, 3, 20, "phone");
                              },
                              mycontroller: controller.phonenumber,
                              keyboardType: TextInputType.phone,
                              hintText: "mobile_number",
                              iconData: Icons.mobile_friendly_outlined),
                          GetBuilder<LogInControllerImp>(
                            builder: (controller) => CustomTextFormAuthWidget(
                              obsc: controller.isShowwPassword,
                              valid: (valeu) {
                                return validInput(valeu!, 6, 30, "password");
                              },
                              mycontroller: controller.password,
                              keyboardType: TextInputType.visiblePassword,
                              hintText: "password",
                              iconData: controller.isShowwPassword == true
                                  ? Icons.lock_clock_outlined
                                  : Icons.lock_open,
                              ontapIcon: () {
                                controller.showPassword();
                              },
                            ),
                          ),
                          CustomButtonAuthWidget(
                              color: AppColors.oraColor,
                              widthleft: 30,
                              widthright: 30,
                              textButt: "sinIn",
                              onPressed: () {
                                controller.logIn();
                              }),
                        ],
                      ),
                    ),
                  ))),
    ));
  }
}

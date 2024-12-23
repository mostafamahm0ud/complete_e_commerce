import 'package:complete_e_commerce/controller/on_boarding_controller.dart';
import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomOnBoardingButton extends GetView<OnBoardingControllerImp> {
  const CustomOnBoardingButton(
      {super.key, required this.color, this.buttonTo, this.textColor});

  final Color color;
  final String? buttonTo;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        if (buttonTo != null) {
          controller.onNext();
        } else {
          Get.offAllNamed(AppRoutes.signIn);
        }
      },
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Text(
          buttonTo ?? 'Skip',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

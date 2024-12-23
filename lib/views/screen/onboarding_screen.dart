import 'package:complete_e_commerce/controller/on_boarding_controller.dart';
import 'package:complete_e_commerce/core/constant/colors.dart';
import 'package:complete_e_commerce/views/widget/OnBoarding/custom_button.dart';
import 'package:complete_e_commerce/views/widget/OnBoarding/custom_dot_control.dart';
import 'package:complete_e_commerce/views/widget/OnBoarding/custom_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: CustomSlider(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  CustomDotController(),
                  Spacer(flex: 2),
                  CustomOnBoardingButton(
                    buttonTo: "'Conuntinue'",
                    color: AppColors.primaryColor,
                  ),
                  CustomOnBoardingButton(
                    // textColor: AppColors.primaryColor,
                    color: AppColors.gray,
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

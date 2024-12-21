import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:complete_e_commerce/core/services/services.dart';
import 'package:complete_e_commerce/data/dataSource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  onNext() {}
  onChangePage(int index) {}
}

class OnBoardingControllerImp extends OnBoardingController {
  PageController pageController = PageController();
  MyServices myServices = Get.find();
  int currentPage = 0;
  @override
  onNext() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      myServices.sharedPreferences.setString('onBoarding', '1');
      Get.offAllNamed(AppRoutes.signIn);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
      update();
    }
  }

  @override
  onChangePage(int index) {
    currentPage = index;
    update();
  }
}

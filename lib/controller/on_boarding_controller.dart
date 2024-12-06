import 'package:complete_e_commerce/data/dataSource/static.dart';
import 'package:complete_e_commerce/views/screen/Auth/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  onNext() {}
  onChangePage(int index) {}
}

class OnBoardingControllerImp extends OnBoardingController {
  PageController pageController = PageController();
  int currentPage = 0;
  @override
  onNext() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      Get.off(SignInScreen());
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

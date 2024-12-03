import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:complete_e_commerce/views/screen/login_screen.dart';
import 'package:complete_e_commerce/views/screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.onBoarding: (context) => const OnBoardingScreen(),
  AppRoutes.login: (context) => const LoginScreen(),
};

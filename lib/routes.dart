import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:complete_e_commerce/views/screen/Auth/forget_password_screen.dart';
import 'package:complete_e_commerce/views/screen/Auth/reset_password_screen.dart';
import 'package:complete_e_commerce/views/screen/Auth/sign_in_screen.dart';
import 'package:complete_e_commerce/views/screen/Auth/sign_up_screen.dart';
import 'package:complete_e_commerce/views/screen/Auth/verify_code_screen.dart';
import 'package:complete_e_commerce/views/screen/onboarding_screen.dart';
import 'package:complete_e_commerce/views/screen/select_language_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // select language route
  AppRoutes.selectLanguage: (context) => const SelectLanguageScreen(),
  // on boarding route
  AppRoutes.onBoarding: (context) => const OnBoardingScreen(),
  // auth routes
  AppRoutes.signIn: (context) => const SignInScreen(),
  AppRoutes.signUp: (context) => const SignUpScreen(),
  AppRoutes.forgetPassword: (context) => const ForgetPasswordScreen(),
  AppRoutes.verifyCode: (context) => const VerifyCodeScreen(),
  AppRoutes.resetPassword: (context) => const ResetPasswordScreen(),
};

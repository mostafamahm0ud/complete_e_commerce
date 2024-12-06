import 'package:complete_e_commerce/core/constant/colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static final headingText24Black = TextStyle(
    color: AppColors.black,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static final bodyContent16Gray = TextStyle(
    color: AppColors.gray,
    fontSize: 16,
  );
  static final bodyContent12Gray = TextStyle(
    color: AppColors.gray,
    fontSize: 12,
    height: 1.5,
  );
  static final bodyContent12Primary = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 12,
    height: 1.5,
  );
}

import 'package:complete_e_commerce/core/constant/app_routes.dart';
import 'package:complete_e_commerce/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.onBoarding,
      routes: routes,
    );
  }
}

import 'package:complete_e_commerce/core/constant/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login Scrren'),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Text('Login Screen'),
      ),
    );
  }
}

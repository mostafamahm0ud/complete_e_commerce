import 'package:complete_e_commerce/controller/Auth/reset_password_controller.dart';
import 'package:complete_e_commerce/core/constant/colors.dart';
import 'package:complete_e_commerce/core/constant/text_stely.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_button.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_header_content.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign In',
          style: AppTextStyles.bodyContent16Gray,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
          child: ListView(
            children: [
              CustomHeaderAndContantAuth(
                header: 'Reset Password',
                content: 'Reset New Password to your account',
              ),
              CustomTextFormField(
                controller: controller.password,
                label: ' Password',
                hint: 'Enter your Password',
                icon: Icon(Icons.lock_outline),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                controller: controller.confirmingpassword,
                label: 'confirm Password',
                hint: 'confirm your Password',
                icon: Icon(Icons.lock_outline),
              ),
              SizedBox(
                height: 10,
              ),
              CustomButtonAuth(
                buttonTo: 'confirm',
                buttonColor: AppColors.primaryColor,
                textColor: Colors.white,
                onPressed: controller.resetPasswordSuccess,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:complete_e_commerce/controller/Auth/success_reset_password_controller.dart';
import 'package:complete_e_commerce/core/constant/colors.dart';
import 'package:complete_e_commerce/core/constant/text_stely.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_button.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_header_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPasswordSuccess extends StatelessWidget {
  const SuccessResetPasswordSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Success Reset Password',
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
              Icon(Icons.check, size: 100, color: AppColors.primaryColor),
              CustomHeaderAndContantAuth(
                header: 'Successfully',
                content: 'Your password has been reset',
              ),
              Spacer(),
              CustomButtonAuth(
                buttonTo: 'Sign In',
                buttonColor: AppColors.primaryColor,
                textColor: Colors.white,
                onPressed: () {
                  controller.goToSignIn();
                },
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

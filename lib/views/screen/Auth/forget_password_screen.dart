import 'package:complete_e_commerce/controller/Auth/forget_password_controller.dart';
import 'package:complete_e_commerce/core/constant/colors.dart';
import 'package:complete_e_commerce/core/constant/text_stely.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_button.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_header_content.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_text_field.dart';
import 'package:complete_e_commerce/views/widget/Auth/have_or_not_have_account.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forget Password',
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
                header: 'Check Email',
                content:
                    'Enter your email address to receive a password reset code',
              ),
              CustomTextFormField(
                controller: controller.email,
                label: 'Email',
                hint: 'Enter your email address',
                icon: Icon(Icons.email_outlined),
              ),
              SizedBox(
                height: 10,
              ),
              CustomButtonAuth(
                buttonTo: 'Check',
                buttonColor: AppColors.primaryColor,
                textColor: Colors.white,
                onPressed: controller.goToVerifyCodeScreen,
              ),
              SizedBox(
                height: 10,
              ),
              HaveOrNotHaveAccount(
                haveOrNotHaveAccount: false,
                onTap: controller.goToSignInScreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

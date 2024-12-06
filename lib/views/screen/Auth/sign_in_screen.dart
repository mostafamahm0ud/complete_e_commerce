import 'package:complete_e_commerce/controller/Auth/sign_in_controller.dart';
import 'package:complete_e_commerce/core/constant/colors.dart';
import 'package:complete_e_commerce/core/constant/text_stely.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_button.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_header_content.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_text_field.dart';
import 'package:complete_e_commerce/views/widget/Auth/have_or_not_have_account.dart';
import 'package:complete_e_commerce/views/widget/custom_app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignInControllerImp controller = Get.put(SignInControllerImp());
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
              CustomAppLogo(),
              CustomHeaderAndContantAuth(
                header: 'Welcome Back',
                content:
                    'Sign in with your email and password OR Containue  with your Social Media Account',
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
              CustomTextFormField(
                controller: controller.password,
                label: 'Password',
                hint: 'Enter your Password',
                icon: Icon(Icons.lock_outline),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: controller.goToForgetPassword,
                child: Text(
                  'Forgot Password',
                  style: AppTextStyles.bodyContent12Gray,
                  textAlign: TextAlign.end,
                ),
              ),
              CustomButtonAuth(
                buttonTo: 'Sign In',
                buttonColor: AppColors.primaryColor,
                textColor: Colors.white,
                onPressed: controller.signIn,
              ),
              SizedBox(
                height: 10,
              ),
              HaveOrNotHaveAccount(
                haveOrNotHaveAccount: false,
                onTap: controller.goToSignUp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

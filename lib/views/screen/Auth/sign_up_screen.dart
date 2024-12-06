import 'package:complete_e_commerce/controller/Auth/sign_up_controller.dart';
import 'package:complete_e_commerce/core/constant/colors.dart';
import 'package:complete_e_commerce/core/constant/text_stely.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_button.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_header_content.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_text_field.dart';
import 'package:complete_e_commerce/views/widget/Auth/have_or_not_have_account.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
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
                header: 'Register Now',
                content: 'Sign up with your email and password',
              ),
              CustomTextFormField(
                controller: controller.userName,
                label: 'User Name',
                hint: 'Enter your User Name',
                icon: Icon(Icons.person_outline),
              ),
              SizedBox(
                height: 10,
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
                controller: controller.phoneNumber,
                label: 'Phone',
                hint: 'Enter your Phone Number',
                icon: Icon(Icons.phone_android_outlined),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                controller: controller.password,
                label: 'Confirm Password',
                hint: 'Confirm your Password',
                icon: Icon(Icons.lock_outline),
              ),
              SizedBox(
                height: 10,
              ),
              CustomButtonAuth(
                buttonTo: 'Sign Up',
                buttonColor: AppColors.primaryColor,
                textColor: Colors.white,
                onPressed: () {},
              ),
              SizedBox(
                height: 10,
              ),
              HaveOrNotHaveAccount(
                haveOrNotHaveAccount: true,
                onTap: controller.goToSignIn,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

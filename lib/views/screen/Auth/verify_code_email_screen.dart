import 'package:complete_e_commerce/controller/Auth/check_email_controller.dart';
import 'package:complete_e_commerce/core/constant/colors.dart';
import 'package:complete_e_commerce/core/constant/text_stely.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_header_content.dart';
import 'package:complete_e_commerce/views/widget/custom_app_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Confirm Email',
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
                header: 'Confirm Email',
                content: 'Enter the code that has been sent to\nTest@gmail.com',
              ),
              OtpTextField(
                fieldWidth: 50.0,
                numberOfFields: 5,
                borderColor: AppColors.primaryColor,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  controller.goToSuccessSignUp();
                }, // end onSubmit
              ),
            ],
          ),
        ),
      ),
    );
  }
}
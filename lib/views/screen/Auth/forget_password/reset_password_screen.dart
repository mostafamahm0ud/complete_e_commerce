import 'package:complete_e_commerce/controller/Auth/reset_password_controller.dart';
import 'package:complete_e_commerce/core/constant/colors.dart';
import 'package:complete_e_commerce/core/constant/text_stely.dart';
import 'package:complete_e_commerce/core/function/validata_input_funcation.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_button.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_header_content.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_text_field.dart';
import 'package:complete_e_commerce/views/widget/custom_app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ResetPasswordControllerImp controller =
    //     Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reset Password',
          style: AppTextStyles.bodyContent16Gray,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
      ),
      body: GetBuilder<ResetPasswordControllerImp>(
        builder: (controller) => Container(
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
          child: Form(
            key: controller.formKey,
            child: ListView(
              children: [
                CustomAppLogo(),
                CustomHeaderAndContantAuth(
                  header: 'New Password',
                  content: 'Enter your new password and confirm it below',
                ),
                CustomTextFormField(
                  controller: controller.password,
                  label: ' Password',
                  hint: 'Enter your Password',
                  icon: Icon(Icons.lock_outline),
                  validator: (value) {
                    return validataInput(value!, 30, 5, "password");
                  }, isNumber: false,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  controller: controller.confirmingpassword,
                  label: 'Re Enter Password',
                  hint: 'Re Enter your Password',
                  icon: Icon(Icons.lock_outline),
                  validator: (value) {
                    return validataInput(value!, 30, 5, "password");
                  }, isNumber: false,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomButtonAuth(
                  buttonTo: 'Sign In',
                  buttonColor: AppColors.primaryColor,
                  textColor: Colors.white,
                  onPressed: controller.resetPassword,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


import 'package:complete_e_commerce/controller/Auth/success_sign_up_controller.dart';
import 'package:complete_e_commerce/core/constant/colors.dart';
import 'package:complete_e_commerce/core/constant/text_stely.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_button.dart';
import 'package:complete_e_commerce/views/widget/Auth/custom_header_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUpScreen extends StatelessWidget {
  const SuccessSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Success Sign Up',
          style: AppTextStyles.bodyContent16Gray,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
      ),
      body: GetBuilder<SuccessSignUpControllerImp>(
        builder: (controller) {
          return Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
              child: ListView(
                children: [
                  Icon(Icons.check_circle_outline_sharp, size: 100, color: AppColors.primaryColor),
                  CustomHeaderAndContantAuth(
                    header: 'Successfully',
                    content: 'Your account has been created',
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
          );
        }
      ),
    );
  }
}

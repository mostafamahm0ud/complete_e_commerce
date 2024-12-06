import 'package:complete_e_commerce/core/constant/text_stely.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.icon,
  });

  final String label, hint;
  final Icon icon;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        suffixIcon: icon,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Container(
          margin: EdgeInsets.only(left: 5),
          child: Text(
            label,
            style: AppTextStyles.bodyContent12Gray,
          ),
        ),
        hintStyle: AppTextStyles.bodyContent12Gray,
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

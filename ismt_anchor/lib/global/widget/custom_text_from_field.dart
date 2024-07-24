import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool readOnly;
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.readOnly=false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.validator,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      validator: validator,
      readOnly: readOnly,
      decoration: InputDecoration(
        hintText: labelText,
        labelStyle:const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Color(0xff555454),
        ),
        focusColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 15.0,
        ),
        fillColor: Colors.white,
        filled: true,
        hintStyle: const TextStyle(
          fontSize: 14,
          color: Color(0xff555454),
          fontWeight: FontWeight.w400,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide:const BorderSide(color: Colors.blue), // Change color to your desired color
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide:const BorderSide(color: Color(0xff8E8383)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide:const BorderSide(color: Color(0xff8E8383)),
        ),
        hoverColor: Colors.blue, // Change color to your desired color
      ),
    );
  }
}
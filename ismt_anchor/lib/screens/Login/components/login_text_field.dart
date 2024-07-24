import 'package:flutter/material.dart';

class LoginTextFormField extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool readOnly;
  const LoginTextFormField({
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
        prefixIcon:const Icon(Icons.person_outline),
        labelText: labelText,
      
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
        fillColor:const Color(0xFFEBF8FF),
        filled: true,
        hintStyle: const TextStyle(
          fontSize: 14,
          color: Color(0xff555454),
          fontWeight: FontWeight.w400,
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide:const BorderSide(color: Color(0xFFEBF8FF)),
        ),
        // enabledBorder:InputBorder.none,
enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide:const BorderSide(color: Color(0xFFEBF8FF)),
        ) ,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide:const BorderSide(color: Color(0xFFEBF8FF)),
        ),
        hoverColor: Colors.blue, // Change color to your desired color
      ),
    );
  }
}
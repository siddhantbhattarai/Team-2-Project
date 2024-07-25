
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/global/constant/color.dart';
import 'package:ismt_anchor/routes/get_routes.dart';
import 'package:ismt_anchor/screens/Login/components/login_text_field.dart';
import 'package:ismt_anchor/screens/Login/service/login_service.dart';

import '../../../global/widget/default_button.dart';

class LoginTextFromField extends StatefulWidget {
  const LoginTextFromField({super.key});

  @override
  State<LoginTextFromField> createState() => _LoginTextFromFieldState();
}

class _LoginTextFromFieldState extends State<LoginTextFromField> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final _key = GlobalKey<FormState>();
  bool isVisiable = true;
  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        children: [
          LoginTextFormField(
            controller: emailcontroller,
            labelText: "Email,phone & username",
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter your email, phone or username";
              }
              return null;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: passwordcontroller,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.done,
            obscureText: isVisiable,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter your password";
              }
              return null;
            },
            decoration: InputDecoration(
                labelText: "Password",
                prefixIcon:const Icon(Icons.lock_outline),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isVisiable = !isVisiable;
                      });
                    },
                    icon: isVisiable == false
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off)),
                labelStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff555454)),
                focusColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 15.0),
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
                hoverColor: primaryColor),
          ),
          SizedBox(height: 10,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Reminder me next time",style: TextStyle(),),
              Switch.adaptive(value:false,  onChanged: (value){
           
              })
            ],
           ),
         ),
          const SizedBox(
            height: 30,
          ),
          DefaultButton(
            text: "LOGIN",
            onclick: () {
              if(_key.currentState!.validate()){
                LoginService().loginUser(email: emailcontroller.text.trim(), password: passwordcontroller.text.trim());
              }
            //   print("hello");
            // Get.toNamed(Routes.bottomNavigationScreen);
            },
          ),
        ],
      ),
    );
  }
}
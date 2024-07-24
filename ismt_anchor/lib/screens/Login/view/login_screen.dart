
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/screens/Login/components/login_text_from.dart';

import '../../../global/constant/global.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kpaddingvalue),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(logo,height: 180,)),
                SizedBox(height: Get.height*0.07,),
              const  Text("Login",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 40),),
             const  Padding(
                 padding:  EdgeInsets.symmetric(vertical: 8),
                 child:  Text("Please sign in to continue"),
               ),
            
   const SizedBox(height: 20,),
  const  LoginTextFromField()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'dart:async';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/global/constant/color.dart';
import 'package:ismt_anchor/routes/get_routes.dart';

import '../../../global/constant/global.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? email;
  // void getemail() async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   email = sharedPreferences.getString("email");
  //   if (email != null) {
  //     useremail = email;
  //       fetchUserData();
  //       print(userimage);
  //   }
  //   setState(() {});
  // }

  @override
  void initState() {
    // getemail();
    Timer(const Duration(seconds: 3), () {
      if (email == null) {
        Get.offAndToNamed(Routes.loginScreen);
      } else {
        // Get.offAndToNamed(Routes.bottomnavigationScreen);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Image.asset(logo),
      ),
    );
  }
}
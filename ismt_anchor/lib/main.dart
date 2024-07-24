import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/routes/get_routes.dart';

import 'global/constant/color.dart';
import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       defaultTransition: Transition.fadeIn,
      title: 'ISMT ANCHOR',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:const AppBarTheme(
           backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black)
        ),
      fontFamily: "Rubik",
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: false,
      ),
      
      getPages: getpages,
      initialRoute: Routes.splashScreen,
    );
  }
}


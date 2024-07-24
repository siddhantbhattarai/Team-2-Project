import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/routes/get_routes.dart';

import 'global/constant/color.dart';
import 'routes/routes.dart';
import 'firebase_options.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
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


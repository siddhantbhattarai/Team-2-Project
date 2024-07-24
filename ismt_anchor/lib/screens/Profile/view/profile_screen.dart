import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/global/constant/color.dart';
import 'package:ismt_anchor/global/widget/notification_bell_component.dart';

import '../../../routes/get_routes.dart';
import '../components/top_header_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopHeaderSection(),
            Text(
              "Yunish Pandit",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Kupondole, Lalitpur",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      size: 20,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "+9779828900311",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail_outline_outlined,
                      size: 20,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "info@abcd.com",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Setting",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: primaryColor),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    settingComponent(
                        "Change Password", Icons.lock_outline_sharp),
                          settingComponent(
                        "Device Log", Icons.devices),
                            settingComponent(
                        "About Us", Icons.info_outline),
                            settingComponent(
                        "Privacy Policy", Icons.privacy_tip_outlined),
                            settingComponent(
                        "Terms & Condition", Icons.policy_outlined),
                          settingComponent(
                        "FAQs", Icons.question_mark_sharp),
                  ],
                ),
              ),
            ),
             Divider(
              thickness: 5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Supprot",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: primaryColor),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    supportComponent(
                        "info@hello.com", Icons.mail_outline_outlined),
                          supportComponent(
                        "9843123456 / 9843123457", Icons.phone_iphone_rounded),
                            supportComponent(
                        "About Us", Icons.info_outline),
                           
                            InkWell(
                              onTap: () {
                                Get.toNamed(Routes.messageScreen);
                              },
                              child: settingComponent(
                                                      "Message", Icons.message_outlined),
                            ),
                         
                  ],
                ),
              ),
            ),
              Divider(
              thickness: 5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  
                  
                    InkWell(
                      onTap: () {
                          AwesomeDialog(
                          autoHide: const Duration(seconds: 10),
                          context: context,
                          
                          headerAnimationLoop: false,
                          dismissOnTouchOutside: false,
                          dismissOnBackKeyPress: false,
                          dialogType: DialogType.warning,
                          
                          animType: AnimType.scale,
                          title: 'Logout',
                          desc: 'Are you sure?',
                          btnCancelOnPress: () {},
                          btnCancelColor: Colors.grey,
                          btnOkColor: primaryColor,
                          btnOkOnPress: () {
                          },
                        ).show();
                      },
                      child: supportComponent(
                          "Logout", Icons.logout),
                    ),
                      
                         
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget settingComponent(String title, IconData icons) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icons,
                size: 30,
                color: primaryColor,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 18),
              )
            ],
          ),
          const Icon(Icons.arrow_forward_ios_sharp,size: 18,color: Color(0xff898989),)
        ],
      ),
    );
  }
   Widget supportComponent(String title, IconData icons) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icons,
                size: 30,
                color: primaryColor,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}

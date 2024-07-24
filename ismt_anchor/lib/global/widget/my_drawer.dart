import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/routes/get_routes.dart';

import '../constant/color.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
   
          children: <Widget>[
            Column(
              children: [
                CircleAvatar(
                  radius: 60,
                ),
                SizedBox(height: 10,),
                Text("Yunish Pandit",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined),
                  SizedBox(width: 4,),
                   Text("Kupondole, Lalitpur",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
                ],
               ),
                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail_outline_outlined,size: 20,),
                  SizedBox(width: 4,),
                   Text("info@abcd.com",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
                ],
               )
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                 profilecompoent("Profile", Icons.account_circle_outlined,(){
                  Get.toNamed(Routes.feeScreen);
                 }),
                 profilecompoent("Job Vacancy", Icons.view_compact_alt_rounded,(){
                  Get.toNamed(Routes.feeScreen);
                 }),
                 profilecompoent("Your Result", Icons.text_snippet_outlined,(){
                  Get.toNamed(Routes.feeScreen);
                 }),
                 profilecompoent("Your Fee", Icons.feed, (){
                  Get.toNamed(Routes.feeScreen);
                 }),
                 profilecompoent("FAQ's", Icons.question_mark_sharp,(){
                  Get.toNamed(Routes.feeScreen);
                 }),
                 profilecompoent("Attendance", Icons.table_rows_outlined,(){
                  Get.toNamed(Routes.feeScreen);
                 }),
                 profilecompoent("Study Material", Icons.video_camera_back_rounded,(){
                  Get.toNamed(Routes.feeScreen);
                 }),
                 profilecompoent("LogOut", Icons.logout,(){
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
                 }),
                ],
              ),
            ),
          
          ],
        ),
      );
  }
  Widget profilecompoent(String title,IconData icon,Function onclick){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: InkWell(
        onTap: onclick as VoidCallback,
        child: Row(
                        children: [
                          Icon(icon,color: primaryColor,),
                          SizedBox(width: 20,),
                          Text(title,style: TextStyle(fontSize: 20),),
                        ],
                      ),
      ),
    );
  }
}

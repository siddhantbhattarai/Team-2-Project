import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/global/constant/color.dart';

const String logo = "assets/logo.png";
const double kpaddingvalue=25;
String name="";
const String userimage="assets/user.jpg";
int attendance=0;
 String getYoutubeVideoId(String url) {
  RegExp regExp = RegExp(
    r"^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*",
    caseSensitive: false,
    multiLine: false,
  );
  final match = regExp.firstMatch(url);
  return match?.group(7) ?? "";
}
showSnackBar({
  required String title,
}) {
  Get.showSnackbar(GetSnackBar(
    title: title,
    message: title,
    margin:const EdgeInsets.all(10),
    duration:const Duration(seconds: 1),
    backgroundColor: primaryColor,
    snackPosition: SnackPosition.TOP,
    borderRadius: 20,
  ));
}
void showLoading([String? message]) {
    Get.dialog(
      
        Dialog(
        
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(children: [
              Container(
                height: 100,
                alignment: Alignment.centerLeft,
                child:const CircularProgressIndicator()
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                message ?? 'Please Wait',
                style: const TextStyle(fontSize: 16),
              )
            ]),
          ),
        ),
        barrierDismissible: false);
  }

  //hide loading
   void hideLoading() {
    if (Get.isDialogOpen!) Get.back();
  }
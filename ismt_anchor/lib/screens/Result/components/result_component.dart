import 'package:flutter/material.dart';
import 'package:get/get.dart';


class UserResultComponent extends StatelessWidget {
  const UserResultComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
        width: Get.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Yunish Pandit",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
            Text("Student account:#32983298",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Color(0xff969696)),),
            SizedBox(height: 10,),
            Text("Email:yunishpandit98@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Color(0xff969696)),),
            Text("Phone:9828900311",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Color(0xff969696)),),

            SizedBox(height: 10,),

SizedBox(height: 20,),

Center(
  child: Container(height: 100,width: 100,decoration: BoxDecoration(color: Color(0xff15EB44),
  shape: BoxShape.circle
  ),child: Center(
    child: Icon(Icons.done,color: Colors.white,size: 80,),
    
  ),),
)
          ],
        ),
      ),
      ),
    );
  }
}
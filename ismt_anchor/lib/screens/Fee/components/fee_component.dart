import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/global/widget/default_button.dart';

class FeeComponent extends StatelessWidget {
  const FeeComponent({super.key});

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
            Text("Current Balance Due",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
            Text("Rs 100000",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 23),),
            SizedBox(height: 10,),
Container(
  width: Get.width*0.5,
  decoration: BoxDecoration(
    color: Color(0xffFFBC5A),
    borderRadius: BorderRadius.circular(30)
  ),
  child: Padding(
    padding: const EdgeInsets.all(7.0),
    child: Row(
      children: [
        Icon(Icons.calendar_month,color: Colors.white,size: 18,),
        SizedBox(width: 5,),
        Text("Due 13 Aug -5 days Left",style: TextStyle(color: Colors.white),)
      ],
    ),
  ),
),
SizedBox(height: 20,),
DefaultButton(text: "Pay Now", onclick: (){}),
SizedBox(height: 10,),
Center(child: Text("Unable To Pay?",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),))
          ],
        ),
      ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/global/constant/global.dart';
import 'package:ismt_anchor/global/widget/default_button.dart';
import 'package:ismt_anchor/routes/get_routes.dart';

class FeeComponent extends StatelessWidget {
  final String title;
  final String accountid;
  final String duebalance;
  final String duedate;
  const FeeComponent({super.key, required this.title, required this.accountid, required this.duebalance, required this.duedate});

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
            Text(name,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
            Text("Student account:${accountid}",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Color(0xff969696)),),
            SizedBox(height: 10,),
            Text("Current Balance Due",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
            Text("Rs $duebalance",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 23),),
            SizedBox(height: 10,),
Container(
  width: Get.width*0.4,
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
        Text("Due $duedate",style: TextStyle(color: Colors.white),)
      ],
    ),
  ),
),
SizedBox(height: 20,),
DefaultButton(text: "Pay Now", onclick: (){
  showSnackBar(title: "This feature will be available soon");
}),
SizedBox(height: 10,),
Center(child: InkWell(
  onTap: () {
    Get.toNamed(Routes.unabletoPayScreen);
  },
  child: Text("Unable To Pay?",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),)))
          ],
        ),
      ),
      ),
    );
  }
}
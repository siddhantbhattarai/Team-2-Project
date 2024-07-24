import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/global/constant/color.dart';

class NotificationComponent extends StatelessWidget {
  const NotificationComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: Get.width,
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        
      
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xffD4EDFF),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Icon(Icons.person,size: 35,color: primaryColor,),
                ),
              ),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: Get.width*0.6,
                    child: Text("This is notification",overflow: TextOverflow.ellipsis,maxLines: 15,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),)),
                  SizedBox(
                    width: Get.width*0.6,
                    
                    child: Text("This is our notification please check it.",overflow: TextOverflow.ellipsis,maxLines: 15,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 13,color: Color(0xff888888)),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BannerComponent extends StatelessWidget {
  const BannerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
         gradient: LinearGradient(
                  colors: [
                    Color(0xffD41459), 
                  
                    Color(0xff911A6C)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0,  1.0],
                ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/banner.png",height: 70,),
            Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                   width: Get.width*0.62,
                  child: Text("Registration Open for AWS Meetup Program!!",overflow: TextOverflow.ellipsis,
                  maxLines: 20,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.white),)),
                SizedBox(
                  width: Get.width*0.6,
                  child: Text("Date: 4th August 2024 Venue: ISMT College Auditorium Time: 11:30am Registration deadline: 27th July 2024",overflow: TextOverflow.ellipsis,
                  maxLines: 20,
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.white),),
                ),
                SizedBox(height: 10,),
                 Container(
          width: 100,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white)
          ),
        child: Center(
          child: Text("Register Here",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10,color: Colors.white),),
        ),
        )
              ],
            ),
       
          ],
        ),
      ),
    );
  }
}
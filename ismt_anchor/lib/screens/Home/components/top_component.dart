import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/global/constant/color.dart';
import 'package:ismt_anchor/global/constant/global.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TopComponent extends StatefulWidget {
  final int color1;
  final int color2;
  final String topnumber;
  final String bottomnumber;
  final String title;
  final String image;
  const TopComponent({super.key, required this.color1, required this.color2, required this.topnumber, required this.bottomnumber, required this.title, required this.image});

  @override
  State<TopComponent> createState() => _TopComponentState();
}

class _TopComponentState extends State<TopComponent> {
 


  @override
  Widget build(BuildContext context) {
      double percent=attendance/90*100;
      print(attendance);
    return Stack(
      children: [
        Container(
          height: 230,
          width: Get.width*0.44,
        
               decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                      colors: [
                        Color(widget.color1), 
                      
                        Color(widget.color2)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0,  1.0],
                    ),
            
            
            
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               GlassContainer(child: Image.asset(widget.image,),),
               SizedBox(height: 30,),
               Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
              Text(  widget.title=="Attendance"? attendance.toString():widget.topnumber,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 50,color: Colors.white),),
              Text("/${widget.bottomnumber}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.white),)
        
                ],
               ),
               SizedBox(height: 15,),
              Text(widget.title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25,color: Colors.white),)
        
              ],
            ),
          ),
        ),
        widget.title=="Attendance"?    Positioned(
          top: 20,
          right: 15,
          child: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 10.0,
                  animation: true,
                  percent: percent/100,
                  center:  Text("${percent.round()}%",style: TextStyle(color: Colors.white,),),
                
                  backgroundColor:Color.fromARGB(255, 255, 255, 255),
                  progressColor: Colors.green,
                ),
        ):Center(),
      ],
    );
  }
  
}
class GlassContainer extends StatelessWidget {
  final Widget child;

  const GlassContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        width: 45,
        height: 45,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10)
       ),
        child: Stack(
          children: [
            // Blur effect
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),

                   borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            // Optional gradient overlay
            Container(
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [Colors.white.withOpacity(0.2), Colors.white.withOpacity(0.05)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            // Border
            Container(
              decoration: BoxDecoration(
               
          borderRadius: BorderRadius.circular(10),
       
                border: Border.all(color: Colors.white.withOpacity(0.2)),
              
              ),
            ),
            // Child content
            Center(child: child),
          ],
        ),
      ),
    );
  }
}
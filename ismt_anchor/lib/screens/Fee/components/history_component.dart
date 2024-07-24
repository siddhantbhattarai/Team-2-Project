import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryComponent extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color1;
  final String lasttext;
  const HistoryComponent({super.key, required this.icon, required this.title, required this.subtitle, required this.color1, required this.lasttext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffF3FCFF),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color1
                ),
                child: Center(
                  child: Icon(icon,color: Colors.white,),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: Get.width*0.6,
                    child: Text(title,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                  SizedBox(height: 3,),
                  Text(subtitle,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 13,color: Color(0xffADADAD)),)
          
                ],
              ),
            Text(lasttext)
            ],
          ),
        ),
      ),
    );
  }
}
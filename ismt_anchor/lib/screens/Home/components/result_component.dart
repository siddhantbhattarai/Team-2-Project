import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultComponent extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final Color color1;
  const ResultComponent({super.key, required this.icon, required this.title, required this.subtitle, required this.color1, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffF3FCFF),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
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
                      width: Get.width*0.7,
                      child: Text(title,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                    SizedBox(height: 3,),
                    Text(subtitle,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 13,color: Color(0xffADADAD)),)
            
                  ],
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/global/constant/global.dart';

class HomePostComponent extends StatelessWidget {
  const HomePostComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Stack(
        children: [
          Container(
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Image.asset(logo),
              ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text("This is the title",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          SizedBox(
            width: Get.width*0.6,
            child: Text("This is the description of the post which is very important. This is the ..."))
            ],
          )
                ],
              ),
          
            ),
          ),
          Positioned(
            bottom: 7,
            right: 15,
            child: Text("2024-06-21",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10,color: Color(0xffC9C9C9)),))
        ],
      ),
    );
  }
}
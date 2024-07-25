import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/global/constant/apiurl.dart';
import 'package:ismt_anchor/global/constant/global.dart';

class HomePostComponent extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final String date;
  const HomePostComponent({super.key, required this.title, required this.description, required this.image, required this.date});

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
                  image: DecorationImage(image: NetworkImage("$imagebase$image")),
                  borderRadius: BorderRadius.circular(20)
                ),
                
              ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          SizedBox(
            width: Get.width*0.6,
            child: Text(title,maxLines: 1,overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
          SizedBox(
            width: Get.width*0.6,
            child: Text(description,maxLines: 2,overflow: TextOverflow.ellipsis,))
            ],
          )
                ],
              ),
          
            ),
          ),
          Positioned(
            bottom: 7,
            right: 15,
            child: Text(date,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10,color: Color(0xffC9C9C9)),))
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/get_routes.dart';

class NewsComponent extends StatelessWidget {
  final String title;
  final String image;
  final String time;
  final String desc;
  const NewsComponent({super.key, required this.title, required this.image, required this.time, required this.desc});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
          Get.toNamed(Routes.newsDetailsScreen,arguments: {
          "title":title,
          "image":image,
          "desc":desc
        });
      },
      child: Card(
        elevation: 3,
        shape:const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))),
        child: Column(
          children: [
            Container(
              width: Get.width,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 23,top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: Get.width*0.5,
                    child: Text(title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                    Text(time,style:const TextStyle(color:Color(0xFF707070),fontWeight: FontWeight.w500),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
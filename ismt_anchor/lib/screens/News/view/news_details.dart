import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../global/widget/notification_bell_component.dart';


class NewsDetails extends StatelessWidget {
  const NewsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var data=Get.arguments;
    
    return Scaffold(
       appBar:AppBar(
      title:const Text("News Details",style:const TextStyle(color: Colors.black),),
leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height:30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color:Color(0xFF8E8383))
            ),
            child:const Center(
              child: Icon(Icons.arrow_back),
            ),
          ),
        ),
      ),
    actions: [
      Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                    width:40,
                    height: 40,
                    child: NotificationBellComponent()),
                 )
        ],
        
    ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Card(
                elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                 child: Container(
                             width: Get.width,
                             height: 300,
                             decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                               image: DecorationImage(
                  image: NetworkImage(data["image"]),
                  fit: BoxFit.cover
                  )
                             ),
                           ),
               ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text(data["title"],
                   
                   
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
               ),
                 Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text(data["desc"],
                   
                   
                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
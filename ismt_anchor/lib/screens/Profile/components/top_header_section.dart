import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/global/constant/global.dart';

import '../../../global/constant/color.dart';
import '../../../routes/get_routes.dart';

class TopHeaderSection extends StatelessWidget {
  const TopHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(

            children: [
              Container(
               height: Get.height*0.37,
               child:Stack(
                children: [
                    Container(
                height: Get.height*0.3,
                width: Get.width,
                decoration: BoxDecoration(
                  color: primaryColor
                ),
              ),
              Positioned(
                top: 60,
                right: 10,
                child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes
                      .notificationScreen);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Icon(Icons.notifications_outlined),
                      ),
                    ),
                  )),
                 
                ],
               ) ,
              ),
            
                Positioned(
                    bottom: 20,
left: Get.width*0.35
,
                    child:     Container(
                    decoration:const BoxDecoration(
                      shape: BoxShape.circle,  color: Colors.white,
                    ),
                      child: Stack(
                        children: [
                        const  Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                                              radius: 60,
                          backgroundImage: NetworkImage("https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fG1lbnxlbnwwfHwwfHx8MA%3D%3D",),

                                            ),
                          ),
                           Positioned(
                                              bottom: 0,
                                              left:50 ,
                                              child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: primaryColor
                                              ),
                                              child: Center(child: Icon(Icons.edit,color: Colors.white,),),
                                            ))
                        ],
                      ),
                    ),)  
            ],
          );
  }
}
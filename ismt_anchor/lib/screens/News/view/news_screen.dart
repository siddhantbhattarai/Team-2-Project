
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/global/constant/apiurl.dart';
import 'package:ismt_anchor/global/widget/my_drawer.dart';
import 'package:ismt_anchor/screens/News/service/news_service.dart';
import 'package:shimmer/shimmer.dart';

import '../../../global/widget/notification_bell_component.dart';
import '../components/news_component.dart';


class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
      title:const Text("News",style:const TextStyle(color: Colors.black),),

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
    drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
             FutureBuilder(future: NewsService().getallnews(), builder: (context, snapshot) {
               if(snapshot.connectionState==ConnectionState.waiting){
                return ListView.builder(
                          itemCount: 7,
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Shimmer.fromColors(
                                baseColor: const Color.fromARGB(255, 215, 215, 215),
                                highlightColor: Colors.grey.shade700,
                                child:  Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: Get.height*0.3,
                                        width: Get.width,
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                            height: 10,
                                            width: Get.width,
                                            color: Colors.white,
                                          ),
                                      SizedBox(height: 10,),
                                  
                                           Container(
                                            height: 10,
                                                                                   width: Get.width,
                                  
                                            color: Colors.white,
                                          ),
                                   
                                    ],
                                  ),
                                ));
                          });
               }else{
                if(snapshot.data!.isEmpty){
                  return ListView.builder(
                          itemCount: 7,
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Shimmer.fromColors(
                                baseColor: const Color.fromARGB(255, 215, 215, 215),
                                highlightColor: Colors.grey.shade700,
                                child:  Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: Get.height*0.3,
                                        width: Get.width,
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                            height: 10,
                                            width: Get.width,
                                            color: Colors.white,
                                          ),
                                      SizedBox(height: 10,),
                                  
                                           Container(
                                            height: 10,
                                                                                   width: Get.width,
                                  
                                            color: Colors.white,
                                          ),
                                   
                                    ],
                                  ),
                                ));
                          });
                }else{
                return   ListView.builder(
                      itemCount: snapshot.data
                      !.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {   
                        return GestureDetector(
                          onLongPress: (){
                         
                          },
                          child: NewsComponent(
                            image: "${imagebase}${snapshot.data![index].image}",
                            desc: snapshot.data![index].description,
                            time:snapshot.data![index].date,
                            title:snapshot.data![index].title,
                          ),
                        );
                      },




                     );
               }}
             },),
                   
                    
            ],
          ),
        ),
      ),
    );
  }
}
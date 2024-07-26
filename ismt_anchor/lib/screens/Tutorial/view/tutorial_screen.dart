import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/global/widget/my_drawer.dart';
import 'package:ismt_anchor/screens/Tutorial/service/tutorial_post.dart';
import 'package:shimmer/shimmer.dart';

import '../components/tutorial_component.dart';

class TutorialScreen extends StatelessWidget {
  const TutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        title: const Text(
          "Study Material",
          style: const TextStyle(color: Colors.black),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              FutureBuilder(
                future: TutorialService().getTutorials(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
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
                          
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                      if(snapshot.data!.isEmpty){
return Center(child: Text("No List of Tutorial"),);
                      }else{
                        final data=snapshot.data![index];
                      return TutorialComponent(semester:data.semester ,subject: data.subject,title: data.title,videolink: data.link,);

                      }
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/global/widget/custom_inner_navbar.dart';
import 'package:ismt_anchor/screens/Result/components/result_component.dart';

import '../../News/view/image_view.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var data=Get.arguments;
    print(data["image"]);
    return Scaffold(
      appBar: CustomAppBar(title: "First Semenster"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const  UserResultComponent(),
           const   SizedBox(height: 30,),
            const  Text("Marksheet:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const  SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  Get.to(ImageView(url: data["image"]));
                  
                },
                child: Image.network(data["image"]))
            ],
          ),
        ),
      ),
    );
  }
}
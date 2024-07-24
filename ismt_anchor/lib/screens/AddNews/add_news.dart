import 'dart:io';

import 'package:dotted_border/dotted_border.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ismt_anchor/global/widget/my_drawer.dart';

import '../../global/widget/custom_text_from_field.dart';
import '../../global/widget/default_button.dart';
import '../../global/widget/notification_bell_component.dart';

class CreateNews extends StatefulWidget {
  const CreateNews({super.key});

  @override
  State<CreateNews> createState() => _CreateNewsState();
}

class _CreateNewsState extends State<CreateNews> {
  XFile? pickedimage;
  void pickimage()async{
    final image=await ImagePicker().pickImage(source: ImageSource.gallery);
    pickedimage=image;
    setState(() {
      
    });
  }
  final TextEditingController titlecontroller=TextEditingController();
  final TextEditingController desController=TextEditingController();
  @override
  void dispose() {
    titlecontroller.dispose();
    desController.dispose();
    super.dispose();
  }
  final _key =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(
      title:const Text("Create Post",style:const TextStyle(color: Colors.black),),

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
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: _key,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                       DottedBorder(
                        color: Colors.black, // Border color
            strokeWidth: 2, // Border width
            dashPattern: [6, 3], // Pattern of dash (length of dash, space between dashes)
            borderType: BorderType.RRect,
            radius: Radius.circular(12),
                         child: Container(
                          color:const Color(0xFFF6F6F6),
                           width: Get.width,
                           height: 180,
                           child: InkWell(
                             onTap: () {
                             pickimage();
                             },
                             child:pickedimage==null?const Center(
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Icon(Icons.cloud_upload_outlined,size: 50,),
                                   Text("Upload Photo")
                                 ],
                               ),
                             ):Image.file(File(pickedimage!.path)),
                           ),
                                     
                         ),
                       ),
                      
                    ],
                  ),
                ),
               const SizedBox(height: 50,),
                CustomTextFormField(labelText: "Enter title",controller: titlecontroller,
                validator: (p0) {
                  if(p0!.isEmpty){
                    return "Please Enter title";
                  }else{
                    return null;
                  }
                },),
              const  SizedBox(height: 20,),
                 TextFormField(
                   maxLines: 5,
                   controller: desController,
                   validator: (value) {
                       if(value!.isEmpty){
                    return "Please Enter title";
                  }else{
                    return null;
                  }
                   },
                   decoration: InputDecoration(
                    hintText: "Enter description",
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10)
                     )
                   ),
                 ),
               const   SizedBox(height: 30,),
                  DefaultButton(text: "Submit", onclick: (){
                    if(_key.currentState!.validate()){
                
                    }
                  })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ismt_anchor/global/constant/global.dart';

import '../components/notification_component.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      centerTitle: false,
      title:const Text("Notification",style: TextStyle(color: Colors.black),),
      actions: [
        IconButton(onPressed: (){}, icon:const Icon(Icons.search))
      ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kpaddingvalue),
          child: Column(
            children: [
              NotificationComponent(),
              NotificationComponent(),
              NotificationComponent(),
              NotificationComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
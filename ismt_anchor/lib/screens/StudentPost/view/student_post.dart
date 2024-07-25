
import 'package:flutter/material.dart';
import 'package:ismt_anchor/global/widget/custom_inner_navbar.dart';
import 'package:ismt_anchor/global/widget/my_drawer.dart';

import '../../../global/widget/notification_bell_component.dart';
import '../../News/components/news_component.dart';


class StudentPost extends StatefulWidget {
  const StudentPost({super.key});

  @override
  State<StudentPost> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<StudentPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const  CustomAppBar(title: "Posts"),
    
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
             
                     ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {   
                        return GestureDetector(
                          onLongPress: (){
                         
                          },
                          child: const NewsComponent(
                            image: "https://images.unsplash.com/photo-1497633762265-9d179a990aa6?q=80&w=2946&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                            desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dui nisl, condimentum condimentum purus at, posuere ornare ante. Proin lacinia euismod tortor vel pretium. Duis tincidunt nunc enim.",
                            time:"2024-07-21",
                            title: "What’s the cost of living of country? Learn More.. ",
                          ),
                        );
                      },




                     )
                    
            ],
          ),
        ),
      ),
    );
  }
}
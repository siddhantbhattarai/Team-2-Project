
import 'package:flutter/material.dart';
import 'package:ismt_anchor/global/widget/my_drawer.dart';

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
             
                     ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {   
                        return GestureDetector(
                          onLongPress: (){
                         
                          },
                          child: NewsComponent(
                            image: "https://images.unsplash.com/photo-1721297015609-1374b1378d31?q=80&w=2874&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
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
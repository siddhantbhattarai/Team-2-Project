import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/global/constant/color.dart';
import 'package:ismt_anchor/global/widget/my_drawer.dart';
import 'package:ismt_anchor/global/widget/notification_bell_component.dart';
import 'package:ismt_anchor/routes/get_routes.dart';
import 'package:ismt_anchor/screens/Home/components/banner_component.dart';
import 'package:ismt_anchor/screens/Home/components/top_component.dart';

import '../components/home_post_component.dart';
import '../components/result_component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String getGreeting() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Builder(builder: (context) {
                        return GestureDetector(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            child: Icon(
                              Icons.menu,
                              size: 35,
                            ));
                      }),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            getGreeting(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                          Text("Yunish")
                        ],
                      ),
                    ],
                  ),
                 NotificationBellComponent()
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TopComponent(color1: 0xffE89C31, color2: 0xffBA7513,bottomnumber: "230",image: "assets/Attendance.png",title: "Attendance",topnumber: "24",),
                  TopComponent(color1: 0xff5A77FF, color2: 0xff364799,bottomnumber: "10 Lakhs",image: "assets/money.png",title: "College Fee",topnumber: "2.3",)
                ],
              ),
              SizedBox(height: 20,),

              BannerComponent(),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today's Post",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),
                  TextButton(onPressed: (){}, child: Text("View All")),
                
                ],
              ),
                HomePostComponent(),
                HomePostComponent(),
                HomePostComponent(),
                 SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your result",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),
                  TextButton(onPressed: (){}, child: Text("View All")),
                
                ],
              ),
              ResultComponent(icon: Icons.done,title: "BScComputer Systems Engineering (IT)",color1: Colors.greenAccent,subtitle: "First Semester",onTap: () {
                Get.toNamed(Routes.resultScreen);
              },),
              ResultComponent(icon: Icons.run_circle_outlined,title: "BScComputer Systems Engineering (IT)",color1: Colors.blue,subtitle: "Second Semester",onTap: () {
                
              },),
            ],
          ),

        ),
        
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/global/constant/apiurl.dart';
import 'package:ismt_anchor/global/constant/global.dart';
import 'package:ismt_anchor/global/widget/my_drawer.dart';
import 'package:ismt_anchor/global/widget/notification_bell_component.dart';
import 'package:ismt_anchor/routes/get_routes.dart';
import 'package:ismt_anchor/screens/Home/components/banner_component.dart';
import 'package:ismt_anchor/screens/Home/components/top_component.dart';
import 'package:ismt_anchor/screens/Home/service/home_service.dart';
import 'package:shimmer/shimmer.dart';

import '../../News/service/news_service.dart';
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

  String formatNumber(int number) {
    if (number < 100000) {
      return '${(number / 1000).round()}k';
    } else {
      return '${(number / 100000).round()} lakhs';
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
                          Text(name)
                        ],
                      ),
                    ],
                  ),
                  NotificationBellComponent()
                ],
              ),
              SizedBox(
                height: 40,
              ),
              FutureBuilder(
                future: HomeService().getstudentfee(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Shimmer.fromColors(
                        baseColor: const Color.fromARGB(255, 215, 215, 215),
                        highlightColor: Colors.grey.shade700,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 230,
                              width: Get.width * 0.44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 230,
                              width: Get.width * 0.44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                            )
                          ],
                        ));
                  } else {
                    if(snapshot.data==null){
                      return Shimmer.fromColors(
                        baseColor: const Color.fromARGB(255, 215, 215, 215),
                        highlightColor: Colors.grey.shade700,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 230,
                              width: Get.width * 0.44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 230,
                              width: Get.width * 0.44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                            )
                          ],
                        ));
                    }else{
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TopComponent(
                          color1: 0xffF08125,
                          color2: 0xffD66000,
                          bottomnumber: "90",
                          image: "assets/Attendance.png",
                          title: "Attendance",
                          topnumber: "20",
                        ),
                        InkWell(
                            onTap: () {
                              Get.toNamed(Routes.feeScreen,arguments: {
                                "nextPayment":snapshot.data![0].nextPayment,
                                "duedate":snapshot.data![0].nextPaymentDate
                              });
                            },
                            child: TopComponent(
                              color1: 0xff5A77FF,
                              color2: 0xff364799,
                              bottomnumber: formatNumber(snapshot.data![0].total),
                              image: "assets/money.png",
                              title: "College Fee",
                              topnumber: formatNumber(snapshot.data![0].paid),
                            ))
                      ],
                    );
                  }}
                },
              ),
              SizedBox(
                height: 20,
              ),
              BannerComponent(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today's Post",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  TextButton(onPressed: () {}, child: Text("View All")),
                ],
              ),
              FutureBuilder(
                future: NewsService().getallnews(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return ListView.builder(
                        itemCount: 3,
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Shimmer.fromColors(
                              baseColor:
                                  const Color.fromARGB(255, 215, 215, 215),
                              highlightColor: Colors.grey.shade700,
                              child: Column(
                                children: [
                                  ListTile(
                                      subtitle: Container(
                                        height: 10,
                                        width: 89,
                                        color: Colors.white,
                                      ),
                                      title: Container(
                                        height: 10,
                                        width: 89,
                                        color: Colors.white,
                                      ),
                                      leading: Container(
                                        height: 50,
                                        width: 50,
                                        color: Colors.white,
                                      ))
                                ],
                              ));
                        });
                  } else {
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: snapshot.data!.take(3).length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final data = snapshot.data![index];
                        return GestureDetector(
                          onTap: () {
                               Get.toNamed(Routes.newsDetailsScreen,arguments: {
          "title":data.title,
          "image":"${imagebase}/${data.image}",
          "desc":data.description
        });
                          },
                          child: HomePostComponent(
                            date: data.date,
                            description: data.description,
                            image: data.image,
                            title: data.title,
                          ),
                        );
                      },
                    );
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your result",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  TextButton(onPressed: () {}, child: Text("View All")),
                ],
              ),
              
              ResultComponent(
                icon: Icons.done,
                title: "BScComputer Systems Engineering (IT)",
                color1: Colors.greenAccent,
                subtitle: "First Semester",
                onTap: () {
                  Get.toNamed(Routes.resultScreen);
                },
              ),
              ResultComponent(
                icon: Icons.run_circle_outlined,
                title: "BScComputer Systems Engineering (IT)",
                color1: Colors.blue,
                subtitle: "Second Semester",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

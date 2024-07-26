import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../global/constant/color.dart';

class JobComponent extends StatelessWidget {
  final String title;
  final String companayname;
  final String location;
  final String timeago;
  final String link;
  final String image;
  const JobComponent({super.key, required this.title, required this.companayname, required this.location, required this.timeago, required this.link, required this.image});

  @override
  Widget build(BuildContext context) {
    void _launchPlayStore(url) async {

    final Uri _url = Uri.parse(
        url);
  
    if (await launchUrl(_url)) {
     
     
    }
   
  }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Stack(
                  children: [
                    Container(
                      width: Get.width,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.network(image,height: 100,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(title,overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text(companayname,overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                Text(location,overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey),),
                                SizedBox(height: 10,),
                                Text(timeago,overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: primaryColor),),
                              ],
                            ),
                           
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child:  InkWell(
                        onTap: () {
                          _launchPlayStore(link);
                        },
                        child: Container(
                            height: 35,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.grey
                              )
                            ),
                            child: const Center(
                              child: Text("Apply Now"),
                            ),
                          ),
                      ))
                  ],
                ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/screens/Home/service/home_service.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

class BannerComponent extends StatefulWidget {
  const BannerComponent({super.key});

  @override
  State<BannerComponent> createState() => _BannerComponentState();
}

class _BannerComponentState extends State<BannerComponent> {
  var data;
  void getevent()async{
    data=await HomeService().getallnews();
    setState(() {
      
    });
  }
  @override
  void initState() {
   getevent();
    super.initState();
  }
    void _launchPlayStore(url) async {

    final Uri _url = Uri.parse(
        url);
  
    if (await launchUrl(_url)) {
     
     
    }
   
  }
  @override
  Widget build(BuildContext context) {
    return     data==null?Shimmer.fromColors(
                                baseColor: const Color.fromARGB(255, 215, 215, 215),
                                highlightColor: Colors.grey.shade700,
                                child:  Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    children: [
                                      Container(
                                        height:70,
                                        width: Get.width,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                      ),
                                  
                                   
                                    ],
                                  ),
                                )):data.isEmpty? Shimmer.fromColors(
                                baseColor: const Color.fromARGB(255, 215, 215, 215),
                                highlightColor: Colors.grey.shade700,
                                child:  Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    children: [
                                      Container(
                                        height:70,
                                        width: Get.width,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                      ),
                                  
                                   
                                    ],
                                  ),
                                )):  Container(
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
         gradient: const LinearGradient(
                  colors: [
                    Color(0xffD41459), 
                  
                    Color(0xff911A6C)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0,  1.0],
                ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/banner.png",height: 70,),
      Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                   width: Get.width*0.62,
                  child: Text(data[0]["title"],overflow: TextOverflow.ellipsis,
                  maxLines: 20,style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.white),)),
                SizedBox(
                  width: Get.width*0.6,
                  child: Text(data[0]["content"],overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style:const TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.white),),
                ),
             const   SizedBox(height: 10,),
                 InkWell(
                  onTap: () {
                    _launchPlayStore(data[0]["link"]);
                  },
                   child: Container(
                             width: 100,
                             height: 30,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               border: Border.all(color: Colors.white)
                             ),
                           child:const Center(
                             child: Text("Register Here",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10,color: Colors.white),),
                           ),
                           ),
                 )
              ],
            ),
              
            
            
       
          ],
        ),
      ),
    );
  }
}
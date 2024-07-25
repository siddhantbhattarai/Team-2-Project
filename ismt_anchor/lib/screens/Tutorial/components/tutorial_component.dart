import 'package:flutter/material.dart';
import 'package:ismt_anchor/screens/Tutorial/components/video_play.dart';

class TutorialComponent extends StatelessWidget {
  final String title;
  final String videolink;
  final String semester;
  final String subject;
  const TutorialComponent({super.key, required this.title, required this.videolink, required this.semester, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            VideoPlay(videolink: videolink,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,maxLines: 3,overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
                  Text(semester,maxLines: 3,overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,),),
                  Text("Subject: $subject",maxLines: 3,overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,),),
                ],
              ),
            ),
      
          ],
        ),
      ),
    );
  }
}
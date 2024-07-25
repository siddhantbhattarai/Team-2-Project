import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

class ImageView extends StatelessWidget {
  final String url;
  const ImageView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          PhotoView(
               minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 2, 
              imageProvider: NetworkImage(url)),
              Positioned(child: IconButton(onPressed: (){
                Get.back();
              }, icon:const Icon(Icons.close,color: Colors.white,size: 40,)))
        ],
      ),
    );
  }
}
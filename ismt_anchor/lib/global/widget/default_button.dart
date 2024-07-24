import 'package:flutter/material.dart';
import 'package:ismt_anchor/global/constant/color.dart';


class DefaultButton extends StatelessWidget {
  final Function onclick;
  final String text;
  const DefaultButton({super.key, required this.text, required this.onclick});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onclick as Function(),
      child: Container(
        height: 45,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
         
          color: primaryColor,
         borderRadius: BorderRadius.circular(30)
        ),
        child: Center(
          child: Text(text,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14),),
        ),
      ),
    );
  }
}
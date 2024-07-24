import 'package:flutter/material.dart';
import 'package:ismt_anchor/global/constant/color.dart';
import 'package:ismt_anchor/global/widget/custom_inner_navbar.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Message"),
      bottomSheet: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            
            decoration: InputDecoration(
              suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.send)),
              hintText: "Write Message"
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
          minWidth: 30,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: primaryColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 30,
                  top: 5,
                  bottom: 20,
                ),
                child: Text(
                  "Hello",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'Sans-serif'),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      "3:30 Pm",
                      style: TextStyle(
                        fontSize: 8,
                        fontFamily: 'Sans-serif',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                 
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
      Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
          minWidth: 30,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Color(0xff25AAE1),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 30,
                  top: 5,
                  bottom: 20,
                ),
                child: Text(
                  "Hello",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'Sans-serif'),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      "3:30 Pm",
                      style: TextStyle(
                        fontSize: 8,
                        fontFamily: 'Sans-serif',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                 
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ismt_anchor/global/widget/custom_inner_navbar.dart';
import 'package:ismt_anchor/global/widget/default_button.dart';

class UnableToPayScreen extends StatelessWidget {
  const UnableToPayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Unable To Pay"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextFormField(
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: "Enter Your Reason",
                  border: OutlineInputBorder(
                    
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
              SizedBox(height: 20,),
              DefaultButton(text: "Submit", onclick: (){})
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ismt_anchor/global/widget/custom_inner_navbar.dart';
import 'package:ismt_anchor/screens/Fee/components/history_component.dart';

import '../components/fee_component.dart';

class FeeScreen extends StatelessWidget {
  const FeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Your Fee"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FeeComponent(),
              SizedBox(height: 30,),
              Text("History",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              HistoryComponent(icon: Icons.done, title: "University Fee", subtitle: "Rs 100000", color1: Colors.greenAccent, lasttext: "Paid"),
              HistoryComponent(icon: Icons.close, title: "Semester Fee", subtitle: "Rs 100000", color1: Colors.red, lasttext: "Unpaid")
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ismt_anchor/global/widget/custom_inner_navbar.dart';

import '../../Home/components/result_component.dart';

class AllResultScreen extends StatelessWidget {
  const AllResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Results"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
                ResultComponent(icon: Icons.done,title: "BScComputer Systems Engineering (IT)",color1: Colors.greenAccent,subtitle: "First Semester",onTap: () {
                }),
                ResultComponent(icon: Icons.run_circle_outlined,title: "BScComputer Systems Engineering (IT)",color1: Colors.blue,subtitle: "Second Semester",onTap: () {
                }),
            ],
          ),
        ),
      ),
    );
  }
}
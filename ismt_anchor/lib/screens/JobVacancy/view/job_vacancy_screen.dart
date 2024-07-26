import 'package:flutter/material.dart';

import 'package:ismt_anchor/global/widget/custom_inner_navbar.dart';
import 'package:ismt_anchor/screens/JobVacancy/components/job_component.dart';
import 'package:ismt_anchor/screens/JobVacancy/service/job_service.dart';

class JobVacancyScreen extends StatelessWidget {
  const JobVacancyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Job Vacancy"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              FutureBuilder(future: JobService().getallvacancy(), builder: (context, snapshot) {
                if(snapshot.connectionState==ConnectionState.waiting){
                  return Center();
                }else{
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    shrinkWrap: true,
                    physics:const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final data=snapshot.data![index];
          return    JobComponent(title:data.description , companayname: "ISMT College", location: "Kathmandu,Nepal", timeago: data.issueDate, link: data.applyLink, image: "https://st3.depositphotos.com/43745012/44906/i/450/depositphotos_449066958-stock-photo-financial-accounting-logo-financial-logo.jpg");
                     
                  },);
                }
              },),
            ],
          ),
        ),
      ),
    );
  }
}
import 'dart:convert';

import 'package:ismt_anchor/global/constant/apiurl.dart';
import 'package:ismt_anchor/screens/JobVacancy/models/job_vacancy_model.dart';

import 'package:http/http.dart' as http;
class JobService{
  Future<List<JobVacancyModel>> getallvacancy()async{
    List<JobVacancyModel> allnews=[];
    try {
      
      http.Response res = await http.get(Uri.parse(jobvacancyurl),
          headers: {'Content-Type': 'Application/json'},
         );
      print("${res.body} hello");
      if (res.statusCode == 200) {
        for (var i = 0; i < jsonDecode(res.body).length; i++) {
          allnews
              .add(JobVacancyModel.fromJson(jsonEncode(jsonDecode(res.body)[i])));
        }
      } else {
        print("something went wrong");
      }
    } catch (e) {
      print(e.toString());
    }
    return allnews;
  }
}
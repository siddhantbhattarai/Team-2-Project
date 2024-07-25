import 'dart:convert';

import 'package:ismt_anchor/global/constant/apiurl.dart';
import 'package:ismt_anchor/screens/Tutorial/Model/tutorial_model.dart';
import 'package:http/http.dart' as http;
class TutorialService{
  Future<List<TutorialModel>> getTutorials()async{
    List<TutorialModel> allTutorials=[];
    try {
      
    
      http.Response res = await http.get(Uri.parse(getstudyMaterialurl),
          headers: {'Content-Type': 'Application/json'},
         );
      print("${res.body} hello");
      if (res.statusCode == 200) {
        for (var i = 0; i < jsonDecode(res.body).length; i++) {
          allTutorials
              .add(TutorialModel.fromJson(jsonEncode(jsonDecode(res.body)[i])));
        }
      } else {
        print("something went wrong");
      }
    } catch (e) {
      print(e);
    }
    return allTutorials;
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ismt_anchor/global/constant/apiurl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Fee/model/fee_model.dart';
import '../model/result_model.dart';
class HomeService{
  Future getallnews()async{
    var data;
    try {
      
      http.Response res = await http.get(Uri.parse(geteventurl),
          headers: {'Content-Type': 'Application/json'},
         );
      print("${res.body} hello");
      if (res.statusCode == 200) {
       data=jsonDecode(res.body);
       return data;
      } else {
        print("something went wrong");
      }
    } catch (e) {
      print(e.toString());
    }
    return data;
  }
  Future<List<FeeModel>> getstudentfee()async{
    List<FeeModel>  userModel=[];
    try {
      SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    int id=  sharedPreferences.getInt("id")!;
        http.Response res = await http.get(Uri.parse("$studentfeeurl/$id"),
          headers: {'Content-Type': 'Application/json'},
         );
      print("${res.body} hello");
      if (res.statusCode == 200) {
           for (var i = 0; i < jsonDecode(res.body).length; i++) {
          userModel
              .add(FeeModel.fromJson(jsonEncode(jsonDecode(res.body)[i])));
        }
       
    
       return userModel;
      } else {
        print("something went wrong");
      }
    } catch (e) {
      print(e.toString());
    }
    return userModel;
  }
  Future<List<ResultModel>> getstudentResult()async{
    List<ResultModel>  userModel=[];
    try {
      SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    int id=  sharedPreferences.getInt("id")!;
        http.Response res = await http.get(Uri.parse("$studentresulturl/$id"),
          headers: {'Content-Type': 'Application/json'},
         );
  print("${res.body} hello1");
      if (res.statusCode == 200) {
           for (var i = 0; i < jsonDecode(res.body).length; i++) {
          userModel
              .add(ResultModel.fromJson(jsonEncode(jsonDecode(res.body)[i])));
        }
       
    
       return userModel;
      } else {
        print("something went wrong");
      }
    } catch (e) {
      print(e.toString());
    }
    return userModel;
  }
}
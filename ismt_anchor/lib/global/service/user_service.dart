import 'dart:convert';

import 'package:ismt_anchor/global/constant/apiurl.dart';
import 'package:ismt_anchor/global/constant/global.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/user_model.dart';
import 'package:http/http.dart' as http;
class UserService{

  Future<UserModel> getuser()async{
    UserModel? userModel;
    try {
      SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    int id=  sharedPreferences.getInt("id")!;
        http.Response res = await http.get(Uri.parse("$studentdetailsurl/$id"),
          headers: {'Content-Type': 'Application/json'},
         );
      print("${res.body} hello");
      if (res.statusCode == 200) {
       userModel=UserModel.fromJson(res.body);
       name=userModel.name;
       attendance=userModel.attendance;
       return userModel;
      } else {
        print("something went wrong");
      }
    } catch (e) {
      print(e.toString());
    }
    return userModel!;
  }
}
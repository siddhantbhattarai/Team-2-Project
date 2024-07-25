
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ismt_anchor/global/constant/apiurl.dart';
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
}
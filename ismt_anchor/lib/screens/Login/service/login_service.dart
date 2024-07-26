import 'dart:convert';

import 'package:get/get.dart';
import 'package:ismt_anchor/global/constant/apiurl.dart';
import 'package:ismt_anchor/global/constant/global.dart';
import 'package:http/http.dart' as http;
import 'package:ismt_anchor/global/service/user_service.dart';
import 'package:ismt_anchor/routes/get_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LoginService{
  Future<void> loginUser({required String email,required String password})async{
try {
  showLoading();
  http.Response res=await http.post(Uri.parse(loginurl),
 headers: {'Content-Type': 'Application/json'},
  body: jsonEncode({
    "username":email,
    "password":password
  }));
  print(res.body);
if(res.statusCode==200){
  hideLoading();
  showSnackBar(title: "Login Successfull");

SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
sharedPreferences.setInt("id", jsonDecode(res.body)["id"]);
UserService().getuser().whenComplete((){
  Get.toNamed(Routes.bottomNavigationScreen);

});
}else{
  hideLoading();
  showSnackBar(title: "Something went wrong");

}
} catch (e) {
  print(e.toString());
  hideLoading();
  showSnackBar(title: "Something went wrong");
}
  }
}
import 'dart:convert';

import 'package:bright_mobile/model/User.dart';
import 'package:http/http.dart';

import 'AbstractApiService.dart';

class ProfileApiService extends AbstractApiService<User>{


  @override
  Future<User> create(User object) async {
    var response = await post(AbstractApiService.baseUrl + "/user",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(object));

    if(response.statusCode == 200){
      return User.fromJson(jsonDecode(response.body));
    }else {
      throw Exception('Failed to load');
    }
  }

  @override
  Future<User> login(String phone, String pass) async {
    var response = await post(AbstractApiService.baseUrl + "/user/login",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: {
          "phone": phone,
          "pass": pass,

        });
    if(response.statusCode == 200){
      return User.fromJson(jsonDecode(response.body));
    }else {
      throw Exception('Failed to load');
    }
  }

  @override
  Future<List<User>>fetch() async {
    final response = await post(AbstractApiService.baseUrl + "/user");
    if(response.statusCode == 200){
      List<dynamic> body = jsonDecode(response.body);
      List<User> places =  body.map((dynamic item) => User.fromJson(item)).toList();
      return places;
    } else{
      throw Exception('Failed to load');
    }
  }


  @override
  Future<User> fetchByPhoneAndPass(String phone, String pass) async {
    final response = await get(AbstractApiService.baseUrl + "/user_profile?phone=" + phone +"&pass="+pass);
    if(response.statusCode == 200){
      var body = jsonDecode(response.body);
      User places =  body.map((dynamic item) => User.fromJson(item)).toList();
      return places;
    } else{
      throw Exception('Failed to load');
    }
  }

}
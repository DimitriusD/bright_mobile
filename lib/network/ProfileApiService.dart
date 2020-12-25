import 'dart:convert';

import 'package:bright_mobile/model/UserProfile.dart';
import 'package:http/http.dart';

import 'AbstractApiService.dart';

class ProfileApiService extends AbstractApiService<UserProfile>{


  @override
  Future<UserProfile> create(UserProfile object) async {
    var response = await post(AbstractApiService.baseUrl + "/user_profile",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(object));

    if(response.statusCode == 200){
      return UserProfile.fromJson(jsonDecode(response.body));
    }else {
      throw Exception('Failed to load');
    }
  }

  @override
  Future<List<UserProfile>> fetch() async {
    final response = await get(AbstractApiService.baseUrl + "/user_profile");
    if(response.statusCode == 200){
      List<dynamic> body = jsonDecode(response.body);
      List<UserProfile> places =  body.map((dynamic item) => UserProfile.fromJson(item)).toList();
      return places;
    } else{
      throw Exception('Failed to load');
    }
  }

  @override
  Future<UserProfile> fetchByPhoneAndPass(String phone, String pass) async {
    final response = await get(AbstractApiService.baseUrl + "/user_profile?phone=" + phone +"&pass="+pass);
    if(response.statusCode == 200){
      var body = jsonDecode(response.body);
      UserProfile places =  body.map((dynamic item) => UserProfile.fromJson(item)).toList();
      return places;
    } else{
      throw Exception('Failed to load');
    }
  }

}
import 'dart:convert';

import 'package:bright_mobile/model/UserProfile.dart';
import 'package:http/http.dart';

import 'AbstractApiService.dart';

class ProfileApiService extends AbstractApiService<UserProfile>{


  @override
  Future<UserProfile> create(UserProfile object) async {
    var response = await post(AbstractApiService.baseUrl + "/user_profile",
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

}
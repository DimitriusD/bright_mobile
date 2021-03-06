import 'dart:convert';

import 'package:bright_mobile/model/Place.dart';
import 'package:http/http.dart';

import 'AbstractApiService.dart';

class PlaceApiService extends AbstractApiService<Place>{


  @override
  Future<Place> create(Place object) async {
    var response = await post(AbstractApiService.baseUrl + "/places",
        body: jsonEncode(object));

    if(response.statusCode == 200){
      return Place.fromJson(jsonDecode(response.body));
    }else {
      throw Exception('Failed to load');
    }
  }

  @override
  Future<List<Place>> fetch(String accessToken) async {
    final response = await get(AbstractApiService.baseUrl + "/places",
      headers: <String, String>{
        'Authorization': 'Basic ' + accessToken,
      },);
    if(response.statusCode == 200){
      List<dynamic> body = jsonDecode(response.body);
      List<Place> places =  body.map((dynamic item) => Place.fromJson(item)).toList();
      return places;
    } else{
      throw Exception('Failed to load');
    }
  }

  @override
  Future<Place> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Place> update() {
    // TODO: implement update
    throw UnimplementedError();
  }

}
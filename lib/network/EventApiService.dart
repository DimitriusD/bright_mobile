import 'dart:convert';

import 'package:bright_mobile/model/Event.dart';

import 'package:http/http.dart';

import 'AbstractApiService.dart';

class EventApiService extends AbstractApiService<Event>{

  @override
  Future<Event> create(Event object) async{
    var response = await post(AbstractApiService.baseUrl + "/events",
        body: jsonEncode(object));
    if(response.statusCode == 200){
      return Event.fromJson(jsonDecode(response.body));
    }else {
      throw Exception('Failed to load');
    }
  }

  @override
  Future<List<Event>> fetch() async {
    final response = await get(AbstractApiService.baseUrl + "/events");
    if(response.statusCode == 200){
      List<dynamic> body = jsonDecode(response.body);
      List<Event> events =  body.map((dynamic item) => Event.fromJson(item)).toList();
      return events;
    } else{
      throw Exception('Failed to load');
    }
  }
}
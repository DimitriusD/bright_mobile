import 'dart:convert';
import 'package:bright_mobile/model/Place.dart';
import 'package:http/http.dart';

class PlaceApiService{

   final String baseUrl = "http://10.0.2.2:8080";

   Future<List<Place>> fetchPlaces() async{
    final response = await get(baseUrl + "/places");
    if(response.statusCode == 200){
      List<dynamic> body = jsonDecode(response.body);
      List<Place> places =  body.map((dynamic item) => Place.fromJson(item)).toList();
      return places;
    } else{
      throw Exception('Failed to load');
    }

  }

}
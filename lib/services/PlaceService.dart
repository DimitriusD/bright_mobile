import 'dart:convert';

import 'package:bright_mobile/model/Place.dart';
import 'package:bright_mobile/network/PlacesApiService.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlaceService {

  final PlaceApiService apiService = new PlaceApiService();

  Future<List<Place>> fetchPlaces() async {
    Future<List<Place>> places;
    Future<String> accessToken = _read();
    accessToken.then((value) => {
      places = apiService.fetch(value)
    });
    return places;
  }

  Future<String> _read() async {
    final prefs = await SharedPreferences.getInstance();
    var name = prefs.get("name");
    var pass = prefs.get("pass");
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    return stringToBase64.encode(name + ":" + pass);
  }

}
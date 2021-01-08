import 'dart:convert';

import 'package:bright_mobile/model/Place.dart';
import 'package:bright_mobile/network/PlacesApiService.dart';
import 'package:bright_mobile/repositories/SharedPreferenceRepository.dart';


class PlaceService {

  final PlaceApiService apiService = new PlaceApiService();

  Future<List<Place>> fetchPlaces() {
    String accessToken = _read();
    return apiService.fetch(accessToken);
  }

  String _read()  {

    var name = SharedPreferenceRepository.getString("name");
    var pass = SharedPreferenceRepository.getString("pass");
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    return stringToBase64.encode(name + ":" + pass);
  }

}
import 'dart:typed_data';
import 'dart:convert';

import 'BaseModel.dart';

class Place extends BaseModel {

  Place({int id, String name, String location, String description, String phone, List<Uint8List> images})
      : super(id: id, name: name, location: location, description: description, phone: phone, images: images);

  factory Place.fromJson(Map<String, dynamic> json){
    return Place(
        id: json['id'],
        name: json['name'],
        location: json['location'],
        description: json['description'],
        phone: json['phone'],
        images: BaseModel.imagesConverter(json['images']));
  }

}



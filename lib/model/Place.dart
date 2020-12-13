import 'dart:typed_data';

import 'package:bright_mobile/model/BaseModel.dart';
import 'dart:convert';

class Place extends BaseModel {

  Place({int id, String name, String location, String description, List<Uint8List> images})
      : super(id: id, name: name, location: location, description: description, images: images);

  factory Place.fromJson(Map<String, dynamic> json){
    return Place(
        id: json['id'],
        name: json['name'],
        location: json['location'],
        description: json['description'],
        images: BaseModel.imagesConverter(json['images']));
  }

}



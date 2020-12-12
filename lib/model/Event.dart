import 'dart:typed_data';

import 'package:bright_mobile/model/BaseModel.dart';

class Event extends BaseModel {

  Event({int id, String name, String location, String description, List<Uint8List> images})
      : super(id: id, name: name, location: location, description: description, images: images);

  factory Event.fromJson(Map<String, dynamic> json){
    List<Uint8List> imageConverter(json){
      List<Uint8List> images = new List<Uint8List>();

      return images;
    }

    return Event(
        id: json['id'],
        name: json['name'],
        location: json['location'],
        description: json['description'],
        images: imageConverter(json['images']));
  }
}



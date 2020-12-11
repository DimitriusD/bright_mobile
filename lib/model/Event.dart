import 'dart:typed_data';

import 'package:bright_mobile/model/BaseModel.dart';

class Event extends BaseModel {

  Event({int id, String name, String location, String description, Uint8List images})
      : super(id: id, name: name, location: location, description: description, images: images);

  factory Event.fromJson(Map<String, dynamic> json){
    return Event(
        id: json['id'],
        name: json['name'],
        location: json['location'],
        description: json['description'],
        images: json['images']);
  }

}



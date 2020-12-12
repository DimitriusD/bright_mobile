import 'dart:typed_data';

import 'package:bright_mobile/model/BaseModel.dart';
import 'dart:convert';

class Place extends BaseModel {

  Place({int id, String name, String location, String description, List<Uint8List> images})
      : super(id: id, name: name, location: location, description: description, images: images);


  factory Place.fromJson(Map<String, dynamic> json){

    List<Uint8List> imageConverter(List<dynamic> imageList){
      List<Uint8List> images = new List<Uint8List>();
      imageList.forEach((element) {
        Uint8List decoded = base64.decode(element.toString());
        images.add(decoded);
      });
      return images;
    }

    return Place(
        id: json['id'],
        name: json['name'],
        location: json['location'],
        description: json['description'],
        images: imageConverter(json['images']));
  }
}



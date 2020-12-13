import 'dart:typed_data';
import 'dart:convert';

class BaseModel{

  final int id;

  final String name;

  final String location;

  final String description;

  final List<Uint8List> images;

  BaseModel({this.id, this.name, this.location, this.description, this.images});


  static List<Uint8List> imagesConverter(List<dynamic> imageList){
    List<Uint8List> images = new List<Uint8List>();
    imageList.forEach((element) {
      Uint8List decoded = base64.decode(element.toString());
      images.add(decoded);
    });
    return images;
  }

}
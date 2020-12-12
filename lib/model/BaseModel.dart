import 'dart:typed_data';

class BaseModel{

  final int id;

  final String name;

  final String location;

  final String description;

  final List<Uint8List> images;

  BaseModel({this.id, this.name, this.location, this.description, this.images});

}
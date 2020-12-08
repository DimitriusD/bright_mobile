import 'dart:typed_data';

import 'package:flutter/material.dart';

class Place {

  final int id;

  final String name;

  final String location;

  final String description;

  final Uint8List images;

  Place(this.id, this.name, this.location, this.description, this.images);

}


List<Place> places = [
  Place(1, "testName", "testLocation", "testDescription", new Uint8List(5)),
  Place(2, "testName", "testLocation", "testDescription", new Uint8List(5)),
  Place(3, "testName", "testLocation", "testDescription", new Uint8List(5)),
  Place(4, "testName", "testLocation", "testDescription", new Uint8List(5)),
  Place(5, "testName", "testLocation", "testDescription", new Uint8List(5)),
];


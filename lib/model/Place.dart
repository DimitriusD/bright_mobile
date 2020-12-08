import 'package:flutter/material.dart';

class Place {

  final int id;

  final String name;

  final String location;

  final String description;

  Place(this.id, this.name, this.location, this.description);

}


List<Place> places = [
  Place(1, "testName", "testLocation", "testDescription"),
  Place(2, "testName", "testLocation", "testDescription"),
  Place(3, "testName", "testLocation", "testDescription"),
  Place(4, "testName", "testLocation", "testDescription"),
  Place(5, "testName", "testLocation", "testDescription"),
];


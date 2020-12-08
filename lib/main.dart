import 'package:bright_mobile/screens/places/components/body.dart';
import 'package:flutter/material.dart';

import 'screens/places/places_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Bright',

      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: PlacesScreen(),
    );
  }
}









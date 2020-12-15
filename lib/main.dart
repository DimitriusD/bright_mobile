import 'package:bright_mobile/constants.dart';
import 'package:bright_mobile/screens/places/components/body.dart';
import 'package:flutter/material.dart';

import 'MyApp.dart';
import 'screens/entertainment/entertainment_screen.dart';
import 'screens/events/events_screen.dart';
import 'screens/places/places_screen.dart';
import 'screens/profile/user_profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final tabs = [
      PlacesScreen(),
      EventsScreen(),
      EntertainmentScreen(),
      UserProfileScreen()];


    return new MaterialApp(
      title: 'Bright',
      theme: ThemeData(
      //  primarySwatch: Colors.black12,
        scaffoldBackgroundColor: Colors.black12,
    //    primaryColor: Colors.black12,
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: App()
    );
  }
}












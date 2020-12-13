import 'package:bright_mobile/screens/places/components/body.dart';
import 'package:flutter/material.dart';

import 'screens/places/places_screen.dart';
import 'screens/profile/user_profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Bright',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.black,
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UserProfileScreen(),
    );
  }
}


//theme: ThemeData(
//primaryColor: Colors.black45,
//iconTheme: IconThemeData(
//color: Colors.white
//)
//),









import 'package:bright_mobile/constants.dart';
import 'package:bright_mobile/screens/places/components/body.dart';
import 'package:flutter/material.dart';

import 'screens/entertainment/entertainment_screen.dart';
import 'screens/events/events_screen.dart';
import 'screens/login/login_screen.dart';
import 'screens/login/NewLoginScreen.dart';
import 'screens/places/places_screen.dart';
import 'screens/profile/user_profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Bright',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen()
    );
  }
}












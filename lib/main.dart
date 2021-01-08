import 'package:bright_mobile/constants.dart';
import 'package:bright_mobile/screen/login_page.dart';
import 'package:flutter/material.dart';

import 'repositories/SharedPreferenceRepository.dart';
import 'screen/welcome_page.dart';

void main() {

  runApp(MyApp());

  loadAsync();
}

void loadAsync() async {
  await SharedPreferenceRepository.getInstance(); //Wait for the completion of Sp initialization
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Bright',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomePage()
    );
  }
}












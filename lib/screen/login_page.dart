import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
              "BRIGHT",
              style: new TextStyle(
                  fontSize: 83.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              )
          ),
          Text(
              "Make your life more bright",
              style: new TextStyle(
                  fontSize: 24.3,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              )
          ),
          TextField(),
          TextField()
        ],

      ),
    );
  }
}

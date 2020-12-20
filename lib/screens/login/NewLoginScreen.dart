import 'dart:ui';

import 'package:bright_mobile/constants.dart';
import 'package:flutter/material.dart';

class NewLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
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
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold)
              ),

              Container(
                child: Column(
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(
                                Icons.phone,
                                color: kPrimaryColor),
                          ),
                          Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Phone"
                                ),
                              ))
                        ]
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(
                                Icons.lock,
                                color: kPrimaryColor),
                          ),
                          Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Password"
                                ),
                              ))
                        ]
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: MaterialButton(
                          color: Colors.black38,
                          onPressed: (){},
                          child: Text(
                              "LOG IN"
                          ),
                          shape: StadiumBorder(),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )

        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:bright_mobile/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = new TextEditingController();
    TextEditingController phoneController = new TextEditingController();

    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                      )
                    ],
                  ),
                )
              )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 45),
              child: Container(
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
                              controller: phoneController,
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
                                controller: passwordController,
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
              ),
            ),
          )
        ],
      )
    );
  }
}

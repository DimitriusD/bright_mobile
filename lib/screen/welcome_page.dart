import 'package:bright_mobile/constants.dart';
import 'package:bright_mobile/screen/login_page.dart';
import 'package:bright_mobile/screen/register_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 230),
              child: Column(
                children: [
                  Text(
                      "BRIGHT",
                      style: new TextStyle(
                          fontSize: 84.0,
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
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Column(children: [
              Row(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Container(
                      width: size.width * 0.32,
                      child: MaterialButton(
                          color: Colors.white,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                            },
                          child: Text(
                              "LOGIN"
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Container(
                      width: size.width * 0.32,
                      child: MaterialButton(
                          color: Colors.white,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                          },
                          child: Text(
                              "REGISTER"
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)
                          )
                      ),
                    ),
                  )
                ],
              ),
              Container(
                width: size.width * 0.74,
                child: MaterialButton(
                    color: Colors.white,
                    onPressed: (){},
                    child: Text(
                        "LOGIN WITH GOOGLE"
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                    )
                ),
              )

            ],),
          )

        ],

      ),
    );
  }
}

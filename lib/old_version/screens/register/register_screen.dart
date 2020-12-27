import 'package:bright_mobile/old_version/services/ProfileService.dart';
import 'package:flutter/material.dart';

import '../navigation_page.dart';


class RegisterScreen extends StatelessWidget {

   var profileService =  new ProfileService();

  @override
  Widget build(BuildContext context) {



    TextEditingController passwordController = new TextEditingController();
    TextEditingController nameController = new TextEditingController();
    TextEditingController surnameController = new TextEditingController();
    TextEditingController phoneController = new TextEditingController();

    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Name"
                ),
              )),
          Expanded(
              child: TextField(
                controller: surnameController,
                decoration: InputDecoration(
                    hintText: "Surname"
                ),
              )),
          Expanded(
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password"
                ),
              )),
          Expanded(
              child: TextField(
                controller: phoneController,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Phone"
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: MaterialButton(
                color: Colors.black38,
                onPressed: (){
                  var createProfile = profileService.createProfile(
                      nameController.value.text,
                      surnameController.value.text,
                      phoneController.value.text,
                      passwordController.value.text
                  );

                  createProfile.then((value) => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NavigationPage()
                        )
                    )
                  });
                },
                child: Text(
                    "REGISTER"
                ),
                shape: StadiumBorder(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

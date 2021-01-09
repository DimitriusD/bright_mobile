import 'package:bright_mobile/old_version/screens/navigation_page.dart';
import 'package:bright_mobile/repositories/SharedPreferenceRepository.dart';
import 'package:bright_mobile/services/ProfileService.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatelessWidget {

  var profileService = new ProfileService();

  @override
  Widget build(BuildContext context) {

    TextEditingController nameController = new TextEditingController();
    TextEditingController surnameController = new TextEditingController();
    TextEditingController ageController = new TextEditingController();
    TextEditingController phoneController = new TextEditingController();
    TextEditingController emailController = new TextEditingController();
    TextEditingController passwordController = new TextEditingController();

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 55),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(17)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    controller: nameController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Name"
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(17)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    controller: surnameController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Surname"
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(17)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    controller: ageController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Age"
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(17)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    controller: phoneController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone"
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(17)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    controller: emailController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email"
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(17)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    controller: passwordController,
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password"
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: size.width ,
              child: MaterialButton(
                  color: Colors.white,
                  onPressed: (){
                    var registerNewUser = profileService.registerNewUser(
                        nameController.value.text,
                        surnameController.value.text,
                        ageController.value.text,
                        phoneController.value.text,
                        passwordController.value.text
                    );
                    registerNewUser.then((value) => {
                      _save(value.phone, value.password),
                      Navigator.push(
                          context,
                          MaterialPageRoute(                              builder: (context) => NavigationPage()

                          )
                      )
                    });
                  },
                  child: Text(
                      "Register"
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                  )
              ),
            )
          ]
        ),
      )
    );
  }

  _save(String name, String pass) async {
    SharedPreferenceRepository.putString('phone', name);
    SharedPreferenceRepository.putString('pass', pass);
  }

}

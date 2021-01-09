import 'package:bright_mobile/constants.dart';
import 'package:bright_mobile/model/User.dart';
import 'package:bright_mobile/old_version/screens/navigation_page.dart';
import 'package:bright_mobile/repositories/SharedPreferenceRepository.dart';
import 'package:bright_mobile/services/ProfileService.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  var profileService = new ProfileService();

  TextEditingController passwordController = new TextEditingController();
  TextEditingController usernameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 65),
            child: Text(
                "BRIGHT",
                style: new TextStyle(
                    fontSize: 84.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
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
                        controller: usernameController,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
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
                        controller: passwordController,
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            hintText: "Password"
                        ),
                      ),
                    ),
                  ),
                ),
                Text("Forgot Password",
                    style: TextStyle(color: Colors.white)),
                Container(
                  width: size.width ,
                  child: MaterialButton(
                      color: Colors.white,
                      onPressed: (){
                        Future<User> login = profileService.login(
                            usernameController.value.text,
                            passwordController.value.text);
                        if(login != null){
                          login.then((value) => {
                            if(value.id != null){
                              _save(value.phone, value.password),
                              Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationPage()))
                            }
                          });
                        }
                      },
                      child: Text(
                          "LOGIN"
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                      )
                  ),
                )
              ],
            ),
          )
        ],

      ),
    );
  }

  _save(String name, String pass) async {
    SharedPreferenceRepository.putString('phone', name);
    SharedPreferenceRepository.putString('pass', pass);
  }

}

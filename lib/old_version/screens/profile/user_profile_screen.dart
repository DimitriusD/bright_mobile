import 'package:flutter/material.dart';

import 'components/profile_app_bar.dart';

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
        title:  "User Profile",
        height: 250,
      ),
      body: Container(),
    );
  }
}



